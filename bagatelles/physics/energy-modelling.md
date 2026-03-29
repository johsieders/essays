

# Analyse und Modellierung moderner Energiesysteme

## Das Systemmodell
Das deutsche Energienetz wandelt sich von einer hierarchischen Top-down-Struktur zu einem hochkomplexen, dezentralen Ökosystem. Es lässt sich als ein Netzwerk aus vier Grundkomponenten beschreiben:
1.  **Produzenten:** Variable Erzeuger (PV, Wind) mit wetterabhängiger Charakteristik und steuerbare Kraftwerke (fossile Reserve) mit hohen Grenzkosten.
2.  **Konsumenten:** Sektorengekoppelte Lasten (Wärmepumpen, E-Mobilität), die teilweise zeitlich flexibel steuerbar sind.
3.  **Speicher:** Kurzfristige Heimspeicher (Batterien) und langfristige Speicherlösungen, die Arbitrage zwischen Preisspitzen ermöglichen.
4.  **Netzinfrastruktur:** Die physikalische Verbindung, die lokale Ungleichgewichte ausgleicht.

Die zentrale Frage ist die Suche nach dem **idealen Preismodell**, das lokale Optimierung (durch lokale Akteure) mit dem Gesamtinteresse des Netzes (Stabilität und $CO_2$-Reduktion) mathematisch in Einklang bringt.

---

## 1. Die "Heavy Hitter": Wer rechnet die Energiewende?
Es gibt spezialisierte Institute, die dieses Modell mit Millionen von Datenpunkten füttern, um den idealen Energiemix der Zukunft zu ermitteln. Die wichtigsten Akteure im deutschsprachigen Raum sind:

* **Fraunhofer ISE (Freiburg):** Bekannt für die **REMod-Studien**. Hier liegt der Fokus auf der stundengenauen Kopplung von Strom, Wärme und Mobilität.
* **Agora Energiewende:** Ein Think-Tank, der wissenschaftliche Lastflussdaten in politisch-ökonomische Szenarien übersetzt (z. B. *Klimaneutrales Deutschland 2045*).
* **Forschungszentrum Jülich (IEK-3):** Nutzt das Modell **ETHOS**, um die räumliche Dimension (wo muss welches Kabel liegen?) und Wasserstoff-Infrastrukturen zu optimieren.
* **DIW Berlin:** Analysiert primär die Marktmechanismen (Kapazitätsmärkte vs. Energy-Only-Market) und die spieltheoretischen Aspekte der Preisbildung.

---

## 2. PyPSA: Das Werkzeug für die quantitative Analyse
Für Programmierer ist **PyPSA** (*Python for Power System Analysis*) der Goldstandard. Es ist eine Open-Source-Toolbox, die die physikalischen Gesetze der Energietechnik (Kirchhoffsche Regeln) direkt mit modernen Optimierungs-Solvern (wie HiGHS oder Gurobi) verknüpft.

**Kernmerkmale von PyPSA:**
* **Lineare Optimierung:** Es minimiert die Gesamtkosten (Investition + Betrieb) über alle Zeitschritte hinweg.
* **Flexibilität:** Komponenten wie Batterien, $CO_2$-Constraints und variable Erzeugungsprofile lassen sich modular hinzufügen.
* **Transparenz:** Da es auf Python (`pandas`, `numpy`) basiert, ist die gesamte Logik für den Nutzer auditierbar – im Gegensatz zu vielen proprietären "Blackbox"-Modellen.

---

## 3. Technisches Beispiel: Optimierung mit $CO_2$-Limit und Speicher
Das folgende Skript zeigt, wie ein System unter einem strikten Emissionslimit reagiert. Der Solver nutzt das Backup-Kraftwerk nur noch als "Versicherung", während der Speicher die Windflauten überbrückt.

```python
import pypsa

# 1. Setup network
n = pypsa.Network()
n.set_snapshots(range(24))
n.add("Bus", "Main Grid")

# 2. Add Carriers (defining CO2 intensity in t/MWh)
n.add("Carrier", "wind", co2_emissions=0.0)
n.add("Carrier", "gas", co2_emissions=0.19) # Approximate t/MWh for CCGT

# 3. Add Load
n.add("Load", "Town", bus="Main Grid", p_set=50)

# 4. Add Renewable Generator (Wind)
wind_data = [0.8, 0.7, 0.4, 0.2, 0.1, 0.0, 0.0, 0.1, 0.5, 0.9, 1.0, 0.8] * 2
n.add("Generator", "Wind Park", bus="Main Grid", carrier="wind",
      p_nom=100, p_max_pu=wind_data, marginal_cost=5)

# 5. Add Fossil Backup (The "Insurance")
n.add("Generator", "Gas Turbine", bus="Main Grid", carrier="gas",
      p_nom=100, marginal_cost=100) # High operational cost

# 6. Add Battery Storage
n.add("StorageUnit", "Battery", bus="Main Grid",
      p_nom=50, max_hours=4,  # 50 MW / 200 MWh
      efficiency_store=0.95, efficiency_dispatch=0.95,
      marginal_cost=1)

# 7. Add a Global Constraint for CO2
# Limit total emissions for the 24h period to 50 tons
n.add("GlobalConstraint", "co2_limit",
      type="primary_energy",
      carrier_attribute="co2_emissions",
      sense="<=",
      constant=50.0)

# 7. Solve
n.optimize(solver_name='highs')

# 8. Analysis
print(f"Total CO2 Emissions: {n.generators_t.p['Gas Turbine'].sum() * 0.19:.2f} tons")
print(f"Wind share: {n.generators_t.p['Wind Park'].sum() / (n.loads.p_set['Town'] * len(n.snapshots)) * 100:.1f}%")

# How much did the battery actually help?
print(n.storage_units_t.state_of_charge)

# What was the "market price" at each hour?
print(n.buses_t.marginal_price)

# Did we hit the CO2 wall?
print(n.global_constraints.loc["co2_limit", "mu"]) # Shadow price of CO2
```

---

## 4. Fazit und Strategie
Die optimale Strategie für dich als Akteur (mit 20 kWp und 12,5 kWh Speicher) lässt sich durch den **Schattenpreis** der Optimierung ermitteln. Wenn das $CO_2$-Limit oder die Netzengpässe binden, steigt der Preis drastisch an. 
Dieses Signal ist die Basis für dynamische Tarife: Es motiviert dich lokal dazu, dein Auto zu laden, wenn Wind im Überfluss vorhanden ist, und den Speicher zu nutzen, wenn das fossile "Residuum" einspringen müsste. Ein dirigistischer Eingriff von oben ist bei korrekt gesetzten Preissignalen theoretisch nicht notwendig.

---

## Literaturverzeichnis und Quellen
1.  **Fraunhofer ISE (2021):** *Wege zu einem klimaneutralen Energiesystem.* [ise.fraunhofer.de](https://www.ise.fraunhofer.de)
2.  **Brown, T. et al. (2018):** *PyPSA: Python for Power System Analysis.* Journal of Open Research Software. [pypsa.org](https://pypsa.org)
3.  **Agora Energiewende (2023):** *Klimaneutrales Deutschland 2045.* [agora-energiewende.de](https://www.agora-energiewende.de)
4.  **Bundesnetzagentur (2024):** *Szenariorahmen zum Netzentwicklungsplan 2037/2045.* [netzentwicklungsplan.de](https://www.netzentwicklungsplan.de)
5.  **Kempfert, C. (2023):** *Kurzschluss. Wie wir die Energiewende an die Wand fahren.* (Zur kritischen Einordnung der ökonomischen Narrative).

---

Soll ich dir noch zeigen, wie du die realen historischen Last- und Wetterdaten (z. B. von OPSD) automatisiert in dieses Modell importierst, um dein Haus-Setup unter realen Bedingungen von 2024 oder 2025 zu testen?
