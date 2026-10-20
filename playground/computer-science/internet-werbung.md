# Wie personalisierte Online-Werbung funktioniert: RTB, Datenbroker und Datenschutz

## 1. Die wichtigsten Akteure

Wenn auf einer Webseite innerhalb von Millisekunden eine auf den Besucher zugeschnittene Werbung erscheint, wirken typischerweise mehrere Unternehmen zusammen. Die Rollen sind wichtiger als die konkreten Firmennamen, weil große Unternehmen teilweise mehrere Rollen gleichzeitig übernehmen.

### User

Der Benutzer besucht eine Webseite oder benutzt eine App. Über ihn können verschiedene Informationen verfügbar sein:

- die gerade betrachtete Webseite und deren Inhalt,
- Gerät, Browser und Betriebssystem,
- IP-Adresse und daraus abgeleitete ungefähre Region,
- Cookies oder andere pseudonyme Kennungen,
- gegebenenfalls frühere Interessen- oder Zielgruppenzuordnungen,
- ein Consent-Signal darüber, welchen Datenverarbeitungen er zugestimmt hat.

Eine Klartextidentität wie Name oder E-Mail-Adresse gehört nicht notwendig zu einem normalen RTB-Vorgang. Entscheidend sind häufig pseudonyme IDs.

### Publisher

Der Publisher stellt Inhalte und Werbeplätze bereit, beispielsweise Spiegel, Zeit, eine Wetter-App oder ein Nachrichtenportal.

Er möchte einen freien Werbeplatz verkaufen:

> Auf dieser Seite ist jetzt für diesen Besucher ein Anzeigenplatz verfügbar.

Der Publisher kennt den Kontext besonders gut: beispielsweise, dass der Benutzer gerade einen Artikel über BMW, Wärmepumpen oder Reisen nach Japan liest.

### SSP – Supply Side Platform

Die SSP vertritt technisch die Verkäuferseite, also den Publisher.

Typische Anbieter sind beispielsweise:

- Google Ad Manager / Ad Exchange,
- Magnite,
- PubMatic,
- Index Exchange,
- OpenX.

Die SSP nimmt einen verfügbaren Werbeplatz entgegen, erzeugt daraus einen **Bid Request** und bietet ihn geeigneten Nachfragern an.

Historisch wurde zwischen SSP und „Ad Exchange“ unterschieden. Heute sind beide Funktionen häufig in derselben Plattform integriert. Es gibt daher nicht notwendig eine eigenständige Werbebörse zwischen SSP und DSP.

### DSP – Demand Side Platform

Die DSP vertritt die Käuferseite, also Werbetreibende und deren Agenturen.

Typische DSPs sind:

- The Trade Desk,
- Google Display & Video 360,
- Amazon DSP.

Ein Hersteller wie BMW oder Audi legt dort beispielsweise eine Kampagne an:

> Bewirb Modell X bei Menschen in Deutschland, die wahrscheinlich in nächster Zeit ein Auto kaufen und zur gewünschten Zielgruppe gehören.

Die DSP erhält Bid Requests, bewertet sie automatisch und entscheidet, ob sie bieten will und wie viel.

### Data Broker und Data Provider

Datenanbieter wie beispielsweise Experian spielen eine andere Rolle. Sie sind normalerweise **nicht selbst Pseudo-Werbetreibende, die an möglichst vielen Auktionen teilnehmen, um Bid Requests einzusammeln**.

Sie liefern vielmehr Informationen, die einer DSP helfen, die Bedeutung einer pseudonymen Nutzer-ID zu verstehen.

Ein Datenanbieter kann etwa Segmente bereitstellen wie:

> Premium-Auto-affin  
> wahrscheinlich in den nächsten zwölf Monaten Autokauf  
> gehobene Kaufkraft  
> Reiseinteresse  
> Eigenheimbesitzer

DSPs wie The Trade Desk betreiben Marktplätze für solche Third-Party-Daten. The Trade Desk beschreibt Datenanbieter ausdrücklich als Unternehmen, die Targeting-, Audience- oder Messdaten bereitstellen und diese für Werbekampagnen monetarisieren können.

Daneben gibt es **Identity Provider** beziehungsweise Identity-Graph-Dienste. Sie versuchen, verschiedene Kennungen derselben Person oder desselben Haushalts zusammenzuführen: etwa E-Mail-Hash, Cookie-ID, Mobile Advertising ID, postalische Adresse oder Connected-TV-ID.

Datenbroker, Identity Provider und klassische Bonitätsauskunfteien sollte man allerdings nicht gleichsetzen. Ein Unternehmen wie Experian ist in mehreren Geschäftsfeldern tätig; das deutsche Bonitätsgeschäft unterliegt anderen Zwecken und Regeln als beispielsweise amerikanische Marketingdatenprodukte.

---

# 2. Real Time Bidding

RTB – Real Time Bidding – ist **kein Unternehmen und keine eigene Station**, sondern ein Auktionsverfahren.

Vereinfacht:

> Publisher → SSP/Exchange ⇄ DSPs → Werbetreibender

Die SSP organisiert die Auktion, mehrere DSPs geben Gebote ab.

## 2.1 Ein Seitenaufruf

Ein Benutzer öffnet beispielsweise einen Artikel:

> „BMW stellt die neue Generation seiner Elektroautos vor.“

Auf der Seite befindet sich ein freier Werbeplatz.

Die SSP erzeugt daraus einen Bid Request.

Der OpenRTB-Standard erlaubt dabei unter anderem Informationen über:

- Domain und teilweise URL der Seite,
- Referrer,
- Kategorie und Keywords des Inhalts,
- Werbeformat und Größe,
- Browser, Betriebssystem und Gerät,
- Standortinformationen,
- pseudonyme User-ID,
- käuferspezifische User-ID,
- Interessen und Intent-Informationen,
- zusätzliche Datensegmente,
- externe Identifikatoren,
- Consent-Informationen.

Der Standard sieht beispielsweise ausdrücklich eine stabile `user.id`, `buyeruid`, zusätzliche `eids`, Nutzersegmente sowie den TCF-Consent-String vor. Die User-ID soll, soweit vorhanden, sogar lange genug stabil sein, um Retargeting und Frequency Capping zu ermöglichen.

Ein vereinfachter Request könnte also sinngemäß lauten:

> Seite: BMW-Artikel  
> Kategorie: Automotive / Elektroauto  
> Region: Bayern  
> Gerät: Mac / Safari  
> Sprache: Deutsch  
> Nutzer-ID: 7A381F…  
> Segment: Auto-interessiert  
> Anzeigenplatz: 728 × 90  
> Consent: bestimmte Zwecke erlaubt

## 2.2 Wer bekommt diesen Bid Request?

Nicht nur der spätere Gewinner.

Die SSP kann denselben Werbeplatz mehreren DSPs anbieten. Jede eingeladenen DSP muss Informationen über den Request erhalten, damit sie entscheiden kann:

> Will ich diese Impression kaufen?  
> Was ist sie mir wert?

Zusätzlich kann ein Publisher mehrere SSPs gleichzeitig einsetzen. Beim sogenannten Header Bidding konkurrieren beispielsweise Magnite, PubMatic, Index Exchange und Google um denselben Werbeplatz; diese wiederum haben jeweils zahlreiche angeschlossene DSPs.

Damit kann eine einzige Impression Informationen an eine größere Anzahl von Ad-Tech-Unternehmen weitergeben, obwohl am Ende nur **eine** Anzeige ausgeliefert wird.

Genau dieser breite Datenfluss ist einer der zentralen Datenschutzprobleme des RTB-Modells.

## 2.3 Wie entscheidet die DSP?

Die DSP kombiniert zwei Informationsquellen:

**Informationen aus dem aktuellen Bid Request**

mit

**Informationen, die sie bereits über die pseudonyme ID oder über Zielgruppensegmente besitzt.**

Angenommen, der Bid Request enthält nur:

> User-ID = 7A381F

Die DSP kann intern bereits wissen:

> 7A381F  
> → Segment „Autokauf wahrscheinlich“  
> → gehobene Kaufkraft  
> → Interesse an Elektromobilität  
> → Audi-Werbung in den letzten sieben Tagen noch nicht gesehen.

Für den Werbetreibenden muss der Bid Request also keineswegs einen vollständigen „Lebenslauf“ enthalten. Es genügt, dass er ein **Nummernschild** enthält, unter dem die DSP oder ihr Datenpartner bereits Informationen gespeichert hat.

Die DSP entscheidet daraufhin etwa:

> Für diese Impression biete ich 4,80 € CPM.

Andere DSPs bieten weniger oder gar nichts. Die SSP bestimmt den Gewinner und die entsprechende Werbung wird ausgeliefert.

---

# 3. Zwei grundsätzlich verschiedene Arten von Werbung

Diese Unterscheidung ist wesentlich.

## Kontextuelle Werbung

Hier interessiert die Person kaum:

> „Jemand liest gerade einen Artikel über BMW.“

Das reicht, um Werbung für Autos, Versicherungen oder Ladestationen zu zeigen.

Diese Werbeform funktioniert weitgehend ohne langfristiges personenbezogenes Tracking.

## Behavioral Advertising

Hier lautet die Information zusätzlich:

> „Dieser Benutzer hat in letzter Zeit Autoportale besucht, interessiert sich für Elektromobilität und wird mit hoher Wahrscheinlichkeit demnächst ein Auto kaufen.“

Dafür muss derselbe Benutzer über verschiedene Besuche und häufig über verschiedene Webseiten hinweg wiedererkannt werden.

Cookies, Advertising IDs, andere pseudonyme IDs und Identity Graphs werden deshalb wichtig.

---

# 4. Was verkaufen Datenbroker?

Das traditionelle Bild

> „Experian verkauft eine Datei mit Namen und Lebenslauf“

trifft die moderne Werbewirtschaft häufig nicht.

Datenbroker verkaufen vielmehr verschiedene Dienstleistungen.

## Zielgruppensegmente

Ein Werbetreibender kann beispielsweise über seine DSP ein Segment lizenzieren:

> „Premium Automotive – In Market“

Der Datenanbieter liefert der DSP die Information:

> ID 7A381F gehört zu diesem Segment.

Wenn anschließend ein Bid Request mit dieser ID eintrifft, kann die DSP im Auftrag des Automobilherstellers höher bieten.

**Nicht Experian bietet bei der Auktion, sondern die DSP.**

## Identity Resolution

Ein Unternehmen kennt einen Kunden beispielsweise über:

> johannes@example.de

Ein Identity-Dienst kann versuchen, diesen Kunden mit anderen zulässigerweise vorhandenen Kennungen zu verbinden:

> E-Mail beziehungsweise Hash  
> → Person oder Haushalt  
> → Browser-ID  
> → Mobilgeräte-ID  
> → Connected-TV-ID.

So entsteht ein **Identity Graph**.

## Data Enrichment

Ein Händler besitzt bereits seine Kundendaten und lässt diese um Merkmale ergänzen:

> statistische Kaufkraft  
> Haushaltsstruktur  
> wahrscheinliches Interesse an bestimmten Produkten  
> bestimmte Zielgruppenzugehörigkeiten.

## Activation

Der Datenanbieter sorgt dafür, dass dasselbe Zielgruppensegment auf verschiedenen Werbeplattformen verwendet werden kann.

Ökonomisch verkauft der Broker daher häufig nicht die Information:

> „Das ist Johannes.“

Sondern:

> „Wenn eine dieser IDs auftaucht, gehört sie mit hoher Wahrscheinlichkeit zu der Zielgruppe, die du erreichen möchtest.“

---

# 5. Woher kommen die Daten der Broker?

Ein Data Broker bekommt seine Informationen normalerweise nicht primär dadurch, dass er sich als Pseudo-Bieter in RTB-Auktionen einschleicht.

Mögliche Quellen sind beispielsweise:

- CRM-Daten von Unternehmen,
- Kauf- und Loyalty-Daten,
- Daten von Publishern und Apps,
- eigene Panels und Umfragen,
- kommerzielle Partner,
- öffentlich zugängliche Register,
- Online-Identifier,
- Daten anderer Anbieter.

The Trade Desk nennt bei seinen Datenpartnern beispielsweise verifizierte Käufe und Loyalty-Programme als Quellen für Third-Party-Zielgruppendaten.

Man unterscheidet häufig:

**First-party data:**  
Das Unternehmen hat die Information selbst vom eigenen Kunden.

**Second-party data:**  
Ein anderes Unternehmen stellt seine First-party-Daten einem Partner für einen zulässigen Zweck zur Verfügung.

**Third-party data:**  
Ein Anbieter aggregiert Daten aus verschiedenen Quellen und stellt daraus Segmente oder andere Informationsprodukte bereit.

Dabei ist ein wichtiger Punkt:

> Eine gehashte E-Mail-Adresse ist nicht automatisch anonym.

Wenn der Empfänger dieselbe E-Mail kennt und denselben Hash berechnen kann, kann er beide Datensätze miteinander verbinden. Solche Daten sind regelmäßig **pseudonym**, nicht anonym, und bleiben damit personenbezogene Daten im Sinne der DSGVO.

---

# 6. Händler und Data Broker

Auch hier muss man unterscheiden zwischen Marketing und Bonitätsprüfung.

## Was kann ein Broker dem Händler liefern?

Das Spektrum reicht von nahezu anonymen Statistiken bis zu individuellen Scores:

> „In dieser Postleitzahl ist die durchschnittliche Kaufkraft hoch.“

Das ist bei ausreichender Aggregation keine personenbezogene Aussage.

Dagegen:

> „Dieser Haushalt gehört zum oberen Kaufkraftdezil.“

ist bereits eine personenbezogene beziehungsweise haushaltsbezogene Profilinformation.

Noch weiter geht:

> „Bei diesem Kunden beträgt die geschätzte Zahlungsausfallwahrscheinlichkeit X Prozent.“

Dann sind wir im Bereich Bonität und Scoring.

Dass eine Information nur statistisch **geschätzt** wurde, bedeutet also nicht, dass sie datenschutzrechtlich anonym ist. Entscheidend ist, ob sie einer identifizierbaren Person oder einem Haushalt zugeordnet wird.

## Was kann der Händler an einen Broker geben?

Auch Identifikatoren wie Name, Adresse, Geburtsdatum oder unter Umständen E-Mail-Adresse können erforderlich und zulässig sein, etwa damit eine Bonitätsauskunftei überhaupt feststellen kann, welche Person geprüft werden soll.

Beim deutschen Experian-Unternehmen infoscore Consumer Data können beispielsweise Personenstammdaten, öffentliche Registerinformationen und bestimmte Transaktionsinformationen in die Bonitätsprüfung einfließen.

Das bedeutet aber nicht:

> „Der Händler darf seine komplette Kunden- und Kaufhistorie beliebig an einen Broker weiterreichen.“

Jede Weitergabe braucht einen bestimmten Zweck und eine entsprechende Rechtsgrundlage.

---

# 7. Was bringt es, Cookies abzulehnen?

Mehr, als der Begriff „Cookie“ vermuten lässt.

Ein Cookie ist bei personalisierter Werbung vor allem interessant, weil es eine **stabile pseudonyme Kennung** liefern kann:

> Besucher 73A91 war gestern bei Händler A, heute bei Publisher B und vorgestern bei Portal C.

Lehnt der Benutzer nicht notwendige Cookies und Tracking ab, darf eine Website solche Informationen grundsätzlich nicht einfach trotzdem auf dem Gerät speichern oder auslesen.

In Deutschland regelt § 25 TDDDG, dass Speicherung oder Zugriff auf Informationen im Endgerät grundsätzlich Einwilligung erfordern. Ausnahmen bestehen vor allem für technisch notwendige Vorgänge und die reine Nachrichtenübertragung.

Wichtig ist: Diese Regel betrifft nicht nur eine Datei namens „Cookie“. Der Europäische Datenschutzausschuss hat ausdrücklich klargestellt, dass auch andere technische Trackingverfahren – etwa bestimmte Formen von Fingerprinting, Pixel- oder URL-Tracking und eindeutige Kennungen – unter den Endgeräteschutz der ePrivacy-Regeln fallen können.

Das bedeutet:

> „Cookies abgelehnt – dann nehmen wir eben heimlich Fingerprinting“

ist kein allgemeiner legaler Ausweg.

Cookies abzulehnen verhindert allerdings **nicht die Werbung selbst**.

Die Website weiß weiterhin:

> Dieser Besucher liest gerade einen BMW-Artikel.

Kontextuelle Werbung bleibt also möglich.

Was schwieriger wird, ist:

> Dieser Benutzer liest jetzt BMW, hat gestern einen Porsche konfiguriert und vor drei Wochen bei Mobile.de gesucht.

---

# 8. Andere technische Schutzmaßnahmen

Browser wie Safari und Brave erschweren Cross-Site-Tracking und Fingerprinting zusätzlich.

iCloud Private Relay beziehungsweise ein VPN verändern vor allem die IP-Seite:

- die Zielwebsite sieht nicht mehr ohne Weiteres die reale Anschluss-IP,
- daraus abgeleitete Standort- und Netzwerkinformationen werden schwächer.

Ein VPN verhindert jedoch weder Cookies noch Browser-Fingerprinting. Es tauscht im Wesentlichen das IP-„Nummernschild“ aus.

Techniken wie Safari + Private Relay, Brave, Mullvad Browser oder Tor greifen an mehreren Stellen gleichzeitig an und erschweren dadurch die zuverlässige Wiedererkennung eines Benutzers.

Ein Login ist allerdings eine andere Kategorie:

> Wer sich bei Amazon einloggt, ist für Amazon identifiziert.

Das bedeutet nicht automatisch, dass jede beteiligte Werbeplattform Namen oder E-Mail-Adresse erhält. Der First Party – hier Amazon – kennt die Identität aber natürlich.

---

# 9. Rechtlicher Rahmen in Europa und Deutschland

Das System ist nicht als Ganzes „legal“ oder „illegal“. **Jeder einzelne Verarbeitungsschritt braucht eine Rechtsgrundlage.**

Man muss zwei Ebenen unterscheiden.

## Zugriff auf das Endgerät

Für nicht notwendige Cookies, IDs und vergleichbare Zugriffe gilt in Deutschland insbesondere § 25 TDDDG.

Grundsatz:

> vorherige Einwilligung.

Damit wird bereits das Erzeugen oder Auslesen bestimmter Tracking-Identifier reguliert.

## Weitere Verarbeitung personenbezogener Daten

Danach gilt die DSGVO.

Eine personenbezogene Verarbeitung braucht unter anderem:

- eine Rechtsgrundlage,
- einen definierten Zweck,
- Transparenz gegenüber dem Betroffenen,
- Datenminimierung,
- angemessene Sicherheit.

Mögliche Rechtsgrundlagen sind unter anderem Einwilligung und – unter bestimmten Voraussetzungen – berechtigtes Interesse.

„Berechtigtes Interesse“ bedeutet allerdings nicht:

> „Das Unternehmen kann damit Geld verdienen.“

Erforderlich sind ein legitimes Interesse, die Erforderlichkeit der Verarbeitung und eine Abwägung mit den Interessen und Grundrechten des Betroffenen.

---

# 10. Das Transparency and Consent Framework

Die Werbeindustrie hat mit dem **TCF – Transparency and Consent Framework** von IAB Europe versucht, Nutzerentscheidungen technisch durch die lange Werbekette zu transportieren.

Das Cookie-Banner erzeugt dabei einen sogenannten **TC String**:

> Für welche Zwecke hat der Benutzer zugestimmt?  
> Welche Anbieter dürfen welche Verarbeitung durchführen?

Dieser String kann im Bid Request an die beteiligten Systeme weitergegeben werden.

IAB Europe verlangt von TCF-Vendors unter anderem, die übermittelten Nutzerentscheidungen zu respektieren und personenbezogene Daten nicht an andere Vendors weiterzugeben, wenn diese keine entsprechende Rechtsgrundlage besitzen. Als Vendors gelten beispielsweise DSPs, SSPs, Adserver und Messanbieter.

Innerhalb des TCF wurde die Möglichkeit, für personalisierte Werbung einfach „berechtigtes Interesse“ statt Einwilligung anzuführen, mit Version 2.2 stark eingeschränkt; für zentrale Personalisierungszwecke sieht das Framework nur noch Consent als zulässige Rechtsgrundlage vor.

Wichtig:

> Das TCF ist ein technisches und organisatorisches Framework der Werbeindustrie. Es macht eine Datenverarbeitung nicht automatisch legal.

---

# 11. Der Streit um IAB Europe und RTB

Die Rechtmäßigkeit dieses Systems beschäftigt europäische Gerichte und Datenschutzbehörden seit Jahren.

Der Europäische Gerichtshof entschied 2024 unter anderem, dass bereits der TC String personenbezogenes Datum sein kann, wenn er mit Identifikatoren wie der IP-Adresse verknüpft werden kann. Der Gerichtshof beschrieb RTB dabei ausdrücklich als System, bei dem Unternehmen, Broker und Werbeplattformen in Echtzeit um personalisierte Werbeplätze bieten.

2025 bestätigte das belgische Berufungsgericht wesentliche Datenschutzverstöße und die gegen IAB Europe verhängte Geldbuße. Es stellte zugleich klar, dass IAB Europe nicht automatisch gemeinsam Verantwortlicher für sämtliche Datenverarbeitungen ist, die später vollständig innerhalb des OpenRTB-Systems stattfinden.

Daraus lässt sich eine wichtige Schlussfolgerung ziehen:

> RTB ist nicht pauschal verboten. Aber die Tatsache, dass sehr viele Unternehmen personenbezogene Informationen erhalten können, macht Transparenz, Rechtsgrundlage, Zweckbindung und Datenminimierung besonders schwierig.

---

# 12. Grenzen für Data Broker

Auch Data Broking ist in Europa nicht grundsätzlich verboten.

Aber aus:

> Unternehmen A besitzt Information X rechtmäßig

folgt nicht:

> Unternehmen A darf X beliebig an Broker B weitergeben, damit B X mit Y und Z verbindet und für völlig neue Zwecke verwendet.

Besonders wichtig sind vier Grenzen.

## Zweckbindung

Daten, die für Zweck A erhoben wurden, dürfen nicht beliebig für einen überraschenden Zweck B wiederverwendet werden.

Die Adresse, die ein Händler für die Lieferung eines Fernsehers bekommt, ist nicht automatisch zur Erstellung eines allgemeinen Lifestyle-Profils freigegeben.

## Transparenz

Wenn ein Unternehmen personenbezogene Daten nicht direkt vom Betroffenen erhält, verpflichtet Art. 14 DSGVO grundsätzlich dazu, über Quelle, Zweck, Datenkategorien, Empfänger und andere wesentliche Umstände zu informieren.

## Besondere Kategorien

Für Informationen wie:

- Gesundheit,
- Religion,
- ethnische Herkunft,
- politische Meinung,
- sexuelle Orientierung

gelten nach Art. 9 DSGVO besonders strenge Voraussetzungen.

Auch eine zuverlässige **Ableitung** solcher Eigenschaften aus anderen Daten kann datenschutzrechtlich problematisch sein.

„Interessiert sich vermutlich für Autos“ ist daher rechtlich etwas völlig anderes als:

> „ist wahrscheinlich schwer krank“  
> oder  
> „hat wahrscheinlich diese politische Überzeugung“.

## Folgenreiche automatisierte Entscheidungen

Wenn ein Profil nicht nur dazu dient, unterschiedliche Werbung zu zeigen, sondern maßgeblich bestimmt:

> bekommt diese Person einen Kredit?  
> Rechnungskauf?  
> Versicherung?  
> Vertrag?

greifen zusätzliche Regeln, insbesondere rund um Scoring und automatisierte Entscheidungen.

Ein Marketingsegment

> „wahrscheinlich Autokäufer“

ist damit wesentlich weniger eingriffsintensiv als

> „Zahlungsausfallwahrscheinlichkeit 18 % – Vertrag ablehnen“.

---

# 13. Wer bekommt also wirklich personenbezogene Daten?

Neben dem Unternehmen, mit dem der Kunde direkt zu tun hat, können verschiedene weitere Gruppen personenbezogene Daten erhalten.

Dazu gehören beispielsweise:

**Auftragsverarbeiter:**  
Cloud- und IT-Dienstleister, die grundsätzlich nur nach Weisung des Auftraggebers verarbeiten dürfen.

**Zahlungs- und Logistikdienstleister:**  
Banken, PayPal, Kreditkartenunternehmen oder Paketdienste, soweit die Daten für die Leistung nötig sind.

**Bonitäts- und Betrugspräventionsdienste:**  
wenn dafür ein legitimer und rechtlich zulässiger Zweck besteht.

**Werbe- und Datenpartner:**  
wenn die entsprechenden Datenverarbeitungen und Identifikatoren auf einer tragfähigen Rechtsgrundlage beruhen.

**Behörden:**  
bei gesetzlichen Auskunfts- und Übermittlungspflichten.

Entscheidend ist dabei:

> **Pseudonymisiert bedeutet nicht anonym.**

Eine ID wie

> `7A381F…`

ist personenbezogen, wenn ein Beteiligter oder eine realistisch verfügbare Datenverknüpfung sie wieder einer Person zuordnen kann.

---

# 14. Statistische Selektion und personenbezogenes Profil

Eine wichtige Grenze verläuft zwischen echter Statistik und einem persönlichen Profil.

> „In dieser Region leben überwiegend Haushalte mit überdurchschnittlicher Kaufkraft.“

kann reine Statistik sein.

> „Der Haushalt hinter dieser ID gehört wahrscheinlich zum obersten Einkommensdezil.“

ist dagegen ein personenbezogenes oder zumindest haushaltsbezogenes Profil.

Dabei spielt es keine entscheidende Rolle, dass die Aussage nur eine statistische Wahrscheinlichkeit ist.

Die praktische Frage lautet:

> Ist das Merkmal einer identifizierbaren Person oder einem identifizierbaren Haushalt zugeordnet?

Je überraschender, sensibler und folgenreicher das Merkmal und seine Verwendung sind, desto schwieriger wird die datenschutzrechtliche Rechtfertigung.

---

# 15. Die Sache mit dem Bäcker

Ein einfaches Bild hilft, die eigentliche Datenschutzfrage zu verstehen.

Mein Bäcker weiß:

> Ich kaufe gern bestimmte Semmeln.

Amazon weiß:

> Welche Produkte ich bei Amazon kaufe.

Das ist zunächst normales First-party-Wissen.

Problematischer wird es, wenn verschiedene Kontexte miteinander verbunden werden:

> Der Händler kennt meine Einkäufe.  
> Der Reiseanbieter kennt meine Reisen.  
> Eine Website kennt meine Lektüre.  
> Ein Dienst kennt meine Anschrift und meinen Haushalt.  
> Ein anderer kennt meine digitalen Geräte.  
> Ein Broker verbindet diese Informationen miteinander.

Die einzelne Information kann banal sein.

**Die Aggregation verändert qualitativ, was man über eine Person wissen und mit diesem Wissen tun kann.**

Genau deshalb beschäftigt sich die DSGVO nicht nur mit Geheimnissen. Auch völlig harmlose Informationen können personenbezogene Daten sein, deren Zusammenführung, Weitergabe oder Zweckänderung geregelt ist.

---

# 16. Das Gesamtmodell in einem Bild

Die moderne Werbemaschinerie lässt sich schließlich so darstellen:

```text
                    Data Broker / Identity Provider
                       |              |
                 Zielgruppen       Identity Graph
                       |              |
                       +-------> DSP <------ Werbetreibender
                                  |
                              Gebot
                                  |
User → Publisher → SSP / Exchange ⇄ DSPs
                      |
                 RTB-Auktion
                      |
                 Gewinner
                      |
                  Werbung
```

Der Publisher verkauft Aufmerksamkeit.

Die SSP organisiert den Verkauf.

Die DSP kauft im Auftrag von Werbetreibenden.

Der Data Broker hilft der DSP zu verstehen, **welcher Typ Mensch hinter einer pseudonymen Kennung stehen könnte**.

Und RTB ist lediglich das Verfahren, mit dem dieser einzelne Werbeplatz innerhalb von Millisekunden versteigert wird.

Die entscheidende datenschutzrechtliche Frage lautet daher weniger:

> „Wer kennt meinen Namen?“

sondern:

> **Welche stabilen Kennungen existieren über mich, wer kann sie miteinander verbinden, welche Informationen sind mit ihnen verknüpft und für welche Entscheidungen werden sie verwendet?**

Das ist der Kern des modernen Online-Werbe- und Data-Broker-Systems.
