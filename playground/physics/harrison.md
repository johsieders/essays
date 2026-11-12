
| Bezeichnung | Bedeutung | Werte |  
| $\phi$ | Breitengrad | $0°$ Äquator, $90°$ Nordpol |  
| $\delta$ | Deklination der Sonne | $0°$ bei Tagundnachtgleiche |  
| $H$ | Stundenwinkel | $0°$ um 12:00, $90°$ um 18:00, $180°$ um 24:00 |  



| Bezeichnung | Name  | Bedeutung | Werte |
|---------------------|-------------------|------------|----| 
| $\phi$ | Breitengrad | Winkel zwischen Äquator und Position | $0°$ am Äquator, $90°$ am Nordpol |
| $\lambda$ | Längengrad | Winkel zwischen Greenwich und Position | $0°$ in Greenwich, $175E°$ in Auckland |  
| $\delta$ | Deklination der Sonne | Winkel der Sonne gegenüber dem Himmelsäquator | -23,5° bei Wintersonnenwende, $0°$ bei Tagundnachtgleiche, 23,5° bei Sommersonnenwende |  
| $H$ | Stundenwinkel | lokale Tageszeit in Grad | $0°$ um 12:00, $90°$ um 18:00, $180°$ um 24:00 | 
| $h$ | Sonnenhöhe | vertikaler Winkel zwischen dem lokalen Horizont und der Sonne | $0°$ bei Sonnenaufgang oder -untergang, $90°$ mittags am Äquator bei Tagundnachtgleiche |


Ein Beobachter befinde sich am Punkt $(\phi, \lambda)$.

| Koordinate | Bedeutung  |
|---------------------|-------------------|
| $x$ | Richtung in der Äquatorebene vom Erdmittelpunkt zum Längengrad $\lambda$ | 
| $y$ | Richtung in der Äquatorebene senkrecht auf $x$ | 
| $z$ | Richtung vom Erdmittelpunkt zum Nordpol, steht senkrecht auf der Äquatorebene | 

Der Zenitvektor $z$ ist die Normale auf die Erdkugel im Punkt $(\phi, \lambda)$.
Er steht senkrecht auf dem lokalen Horizont.

```{math}
z = \begin{bmatrix} 
   \cos \phi \\
   0         \\
   \sin \phi \\
\end{bmatrix}
```

Der Sonnenvektor $s$ zeigt vom Erdmittelpunkt in Richtung Sonne.
In Kugelkoordinaten mit $H$ als horizontalem und $\delta$ als vertikalem Winkel
ergibt sich $s$ als:

```{math}
s = \begin{bmatrix} 
   \cos \delta \cos H   \\
   \cos \delta \sin H   \\
   \sin \delta \\
\end{bmatrix}
```

Es sei $\alpha$ der Winkel zwischen $z$ und $s$. Dann ist

```{math}
\alpha + h = 90° \\
\sin h = \cos (90° - h) = \cos \alpha = z \cdot s 
```
Somit:

```{math}
\sin h =  \cos \phi \cos \delta \cos H +  \sin \phi \sin \delta \\
\cos H = (\sin h - \sin \phi \sin \delta) / \cos \phi \cos \delta
```
 
Die letzte Gleichung liefert die lokale Uhrzeit aus Breitengrad, Stundenwinkel und Sonnendeklination.
Wenn man die Uhrzeit an einem Referenz-Längengrad genau kennt (z.B. Greenwich), 
kann man aus der Zeitdifferenz den Längengrad berechnen.

Der Erdumfang beträgt etwa $40.000$ km = $4 \cdot 10^7$ m. 
Daraus ergibt sich am Äquator eine Geschwindigkeit von

```{math}
v_0 = \frac{40.000.000}{86.400} \approx 463 [m/s]
```
und auf $45°$ Breite

```{math}
v_{45} = \frac{463}{\sqrt{2} \approx 327 [m/s]
```

Damit kann man für zwei Orte auf demselben Breitengrad

a) aus dem Abstand die Zeitdifferenz

oder 

b) aus der Zeitdifferenz den Abstand

berechnen.


Die Erde dreht sich nach Osten, von oben (vom Nordpol) aus gesehen gegen den Uhrzeigersinn.
Das heißt: Ein Flugzeug, das nach Westen fliegt, ändert seine Position gegenüber der Sonne nur wenig, 
die Erde dreht sich unter ihm. Die lokale Uhrzeit bei der Ankunft ist nur wenig später als die
lokale Uhrzeit beim Abflug -- wir gewinnen Zeit. Ein Flugzeug, das nach Osten fliegt,
nähert sich der Sonne ungefähr doppelt so schnell wie die Erde. Die Geschwindigkeit der Erdoberfläche 
und die des Flugzeugs addieren sich -- wir verlieren Zeit.

