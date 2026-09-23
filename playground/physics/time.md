# Zeit

Johannes Siedersleben, 31.8.2026


## W.Messing: Zeit {#w.messing:-zeit}

### Newtonsche Zeit {#newtonsche-zeit}

 

Probleme: 

(5) Unabhängigkeit von Raum und Materie wird von Leibniz bestritten: Zeit ist die Reihenfolge der Dinge; ohne Uhr keine Zeit

 

(6) Symmetrie in der Zeitumkehr ist eine wichtige Eigenschaft der klassischen Mechanik, die der Anschauung widerspricht.

 

Strukturelle Eigenschaften: (1) bis (4), praktische Eigenschaften: (5) bis (7)

 

### Spezielle Relativitätstheorie

Was ändert sich: (1) keine absolute Zeit (3) keine eindeutige Ordnung (4) keine Gleichzeitigkeit

Unklar: (5) Unabhängigkeit vom Raum

 

Weiterhin (2) Stetigkeit, Monotonie (6) Zeitsymmetrie (7) Messbarkeit

 

Beispiele: Twin Paradox, Myonen, Zug mit Blitzen (keine Gleichzeitigkeit)

 

### Gibt es eine objektive Gegenwart? {#gibt-es-eine-objektive-gegenwart?}

Weyl: Erleben des Jetzt ist subjektiv.

Gödel: Zeit ist Anschauung

Prior, Maudlin: Nur die Gegenwart ist real

 

### Kausalität, Pfeil der Zeit {#kausalität,-pfeil-der-zeit}

Boltzmann: Zeit ist der Anstieg der Entropie

Russell: Zeit ist eine Konstruktion des Gehirns

Bergson: Erlebte Zeit (lebendig) ist etwas anderes als physikalische Zeit (tot)

 

### Ist Zeit fundamental oder abgeleitet? {#ist-zeit-fundamental-oder-abgeleitet?}

Mach, Leibniz: Zeit ist nur eine Relation zwischen Ereignissen (Erde um die Sonne) 

\= relationist reading


Kant: Zeit, Raum sind apriorische Anschauungsformen;

Cassirer: Raumzeit ist die neue apriorische Struktur


### Grenzen der Intuition {#grenzen-der-intuition}

Gehirn ist ein Überlebensorgan, kein Wirklichkeitsorgan

### Modell und Wirklichkeit {#modell-und-wirklichkeit}

Modell /= Wirklichkeit

 

### Was ist real? {#was-ist-real?}

Kann man nicht sagen.

1) Sicher sind nur Wahrnehmungen und Tautologien.   
2) Zahlen, Zeit, Distanz, Dimension usw. kommen in der Natur nicht vor. Sie sind Produkte des menschlichen Geistes. Es hat jeweils erste Menschen gegeben, die gezählt haben, die Längen gemessen haben usw.  
3) Es ist unentscheidbar und irrelevant, ob diese Begriffe von Menschen **erfunden** wurden, oder ob sie schon vorher da waren und von Menschen **gefunden** wuden.

 

### Demut und Staunen {#demut-und-staunen}

Sokrates: Wir wissen, dass wir nichts wissen

Unsere Modelle sind vorläufig; die Wissenschaft liefert immer nur die beste verfügbare Theorie, keine absoluten Wahrheiten.

 

Was ist sonst noch nicht selbstverständlich?

Antwort: Alles, was der Mensch erdacht hat, kann man in Frage stellen. Selbst Mathematik und Logik haben sich in den letzten 150 Jahren grundlegend geändert.

 

### Allgemeine Relativitätstheorie {#allgemeine-relativitätstheorie}

Zeit hängt ab von der Differenz der Gravitation. 

Aus Sicht des Beobachters bleibt die Zeit in einem Schwarzen Loch stehen; der Beobachter im Schwarzen Loch merkt nichts.

Atomuhren sind heute genau bis auf 10\-18 Sekunden. Damit misst man (auf der Erde) Höhenunterschiede von wenigen Zentimetern.

 

### Quantenmechanik {#quantenmechanik}

 

Zeit wird nicht quantisiert (wie Ort, Impuls, Energie)

Quantengravitation: Wheeler-deWitt-Gleichung enthält keinen Zeitparameter

 

Wärme kommt aus Bewegung. Wo kommt die Zeit her?



Einsichten

 

1. Wir leben in der Mitte zwischen atomaren und astronomischen Strukturen  
2. Erleben und Physik sind zwei Welten. Physik kann Erleben nicht erklären.  
3. Unsere Kategorien reichen nicht bis auf den Grund – wo kommt die Zeit her? Was ist wirklich fundamental?  
4. Die Grenze des Wissens verschiebt sich täglich. Es wird keinen Tag X geben, wo wir sagen: OK, alle Fragen geklärt.

Rovelli: Wir sind Wesen, die aus der Zeit gemacht sind. Solange wir die Zeit nicht verstehen, verstehen wir uns selbst nicht. 

 

 


## Measuring Time {#measuring-time}

Claude: Defining a day

 

### What exactly is a day? {#what-exactly-is-a-day?}

 

**The SI day** is defined exactly: 86,400 SI seconds, where the second is the duration of 9,192,631,770 periods of the radiation from the cesium-133 hyperfine transition. This is a fixed, invariant unit of duration. No ambiguity, no dependence on Earth's rotation.

 

**The mean solar day** is a measure of Earth's actual rotation relative to the Sun — averaged over a year to smooth out the eccentricity/obliquity variations that make the *apparent* solar day (sundial time) wobble by up to \~16 minutes across the year via the equation of time. This is what "day" means in the 365.2425 context: the calendar is built to keep the year synced to the seasons in terms of actual Earth rotations.

 

**The SI day**: defined exactly, and measurable to the accuracy of the best clocks (optical clocks now hit fractional uncertainties around 10⁻¹⁸).

 

The **mean solar day**: not a defined constant at all but a *measured, drifting quantity*, tracked observationally (VLBI, satellite/lunar laser ranging) and published as UT1 by the IERS. Its length is known to microseconds but genuinely changes.

 

### What is UTC? {#what-is-utc?}

 

The foundation is **TAI (International Atomic Time)**. TAI is a weighted average of \~450 atomic clocks at \~80 institutions worldwide, coordinated by the BIPM in France. Each clock ticks in SI seconds (the cesium-133 definition), and the BIPM combines them into a single stable, uniform timescale. TAI's zero point is set so that it coincided with UT1 (rotational/astronomical time) at **1958 January 1, 00:00:00**. That's the conventional origin. TAI is defined to tick at the rate of a proper second **on the rotating geoid** (Earth's mean sea level). Clocks at altitude run faster and must be corrected down to the geoid.

 

**TAI − UTC \= 37 seconds** (as of the last leap second, end of 2016).

 

TAI, TCG (geocentric coordinate time, not geoid-corrected), TT (terrestrial time, the idealized version TAI approximates), and TDB (barycentric, for solar-system ephemerides) form a whole family of relativistic timescales, each defined for a different reference frame and gravitational potential.

 

How to coordinate 450 clocks? There is no frame-independent global "now," and the rotating-Earth frame famously admits no consistent global simultaneity at all (that's the Sagnac obstruction).

 

The international time system is a working, funded, committee-maintained proof that Einstein was right — "now" is not out there to be measured, so we legislate one and correct every clock to it. Two things must be corrected out:

* **Gravitational \+ velocity redshift.** A clock at altitude ticks faster (\~1.1×10⁻¹⁶ per meter of height, about 1 ns/day per \~10 m). Its proper rate is scaled to the geoid. This is why the geoid matters, not the raw geometric distance — the relevant quantity is the gravitational potential difference, which you get from geodesy/gravimetry, not just "how high up."  
* **The Sagnac term.** Because you're on a rotating Earth, any signal transfer picks up a rotation-dependent correction (∝ the enclosed area swept, eastward vs. westward asymmetry). Transporting a clock or a signal eastward vs. westward around the globe gives different accumulated time — the rotating frame has no global simultaneity, and the Sagnac term is precisely the bookkeeping for that.

You never need the "absolute distance" between clocks in a metaphysical sense — you need the **signal transfer delay**, and you get it by symmetric two-way techniques that cancel the delay:

* **TWSTFT** (Two-Way Satellite Time and Frequency Transfer): Residual non-reciprocity (Sagnac, ionosphere, equipment) is modeled and corrected.  
* **GNSS/GPS common-view and PPP** (Precise Point Positioning): multiple stations view the same satellites; differencing kills the satellite-clock and much of the path error. PPP with carrier phase now dominates for routine links.  
* **Optical fiber links** for the highest precision (10⁻¹⁸ level): a two-way phase-stabilized fiber, where the round-trip lets you actively cancel the fiber's own delay fluctuations.

### The rotating geoid {#the-rotating-geoid}

Two competing effects at the equator relative to the pole:

* The equator is farther from Earth's center (the \~21 km equatorial bulge), so it sits *higher* in the gravitational potential well → should tick *faster*.  
* The equator is moving at \~465 m/s from rotation, and sits deeper in the centrifugal potential → velocity/centrifugal redshift → should tick *slower*.

**The near-miracle:** they cancel — and not by accident. Here's why. The geoid is *defined* as a surface of constant **geopotential** W \= (gravitational potential) \+ (centrifugal potential). The Earth is a fluid body (oceans, plastic mantle over geological time); its equilibrium shape is precisely the shape where the surface follows an equipotential of W. The bulge at the equator exists *because* the fluid redistributed itself until the surface became an equipotential. That's what hydrostatic equilibrium means.

**Constant geopotential W ⟺ constant proper clock rate.**

The bulge (gravitational term) and the rotation (centrifugal term) don't cancel by luck — they cancel because the planet *shaped itself* until the two contributions to W became constant along the surface. A sea-level clock at the equator and a sea-level clock at the pole tick at the **same rate**, because both sit on the same equipotential.

Because the geoid is a *physical* equipotential tied to mean sea level, it's not perfectly defined — sea level changes, and the reference geopotential value W₀ has measurement uncertainty at the \~10⁻¹⁷ fractional level. Optical clocks are now good enough (10⁻¹⁸) to *feel* this. So the field has inverted: instead of using a geodetically-defined geoid to correct clocks, people now propose using clocks to *measure* geopotential differences ("relativistic geodesy" / chronometric leveling) — a clock comparison directly reads out ΔW, hence height differences, to the centimeter. The clock has become the more precise instrument, and there's active work to redefine TT's reference potential by a *conventional fixed constant* W₀ rather than by the messy, drifting physical geoid.

### Michelson-Morley {#michelson-morley}

The genius of the design is that it converts a hopeless absolute measurement into a feasible *differential* one, and then uses the wavelength of light itself as the ruler. Why does it work?

**1\)** With velocity u of the Earth orbiting the Sun ≈ 10⁻⁴ (c \= 1), the fractional difference between the longitudinal factor 1/(1−u²) and the transverse factor 1/√(1−u²) is ≈ u²/2 ≈ 5×10⁻⁹. But the interferometer measures the *path difference* in units of the wavelength of visible light, λ ≈ 5.5×10⁻⁷ m. Michelson and Morley folded the light path with mirrors to an effective arm length of about 11 m. The expected path asymmetry is then L·u² ≈ 11 m × 10⁻⁸ ≈ 10⁻⁷ m — about 0.2 of a wavelength. Rotating the apparatus 90° swaps which arm is longitudinal, doubling the swing to \~0.4 fringe. Suddenly the predicted effect is a *macroscopic* displacement of the interference pattern, easily within reach: a careful observer can read fringe positions to \~0.01 fringe. So the apparatus had a comfortable factor of \~40 between expected signal and resolution. Light's tiny wavelength is doing the heavy lifting — it's a ruler with 10⁻⁷ m tick marks that comes for free.

**2\)** It's a null, self-comparing measurement. They didn't need the arms to be equal to nine digits, didn't need to know L precisely, didn't need any absolute calibration. The question was only: *does the fringe pattern shift as the apparatus rotates?* Whatever imperfections the instrument has, it carries them along as it turns — common-mode rejection, in modern language. Better still, the expected signal has a known signature: it should vary as cos 2θ, a second harmonic of the rotation, with a phase tied to the direction of motion through the ether. They weren't looking for "some shift" but for a specific periodic pattern, which lets you average over many rotations and dig well below the single-reading noise.

**3\)** The engineering made rotation non-destructive. Michelson's 1881 Potsdam attempt nearly failed. The 1887 solution: mount everything on a massive sandstone slab (\~1.5 tons) floating in a trough of mercury. The float distributes support evenly so rotation introduces no differential stress, the mass gives thermal and vibrational inertia, and the apparatus could be kept turning *continuously* — observations taken on the fly at sixteen stations per revolution, no start-stop disturbance at all. Thermal gradients were the other killer (a temperature difference of a hundredth of a degree across an arm fakes a fringe shift), hence the basement location, the covers, and observations at a slow walk around the slab.

So the feat decomposes into three multipliers: wavelength of light as the unit (turns 10⁻⁹ into tenths of a fringe), differential rotation with a known harmonic signature (kills calibration and drift), and the mercury float (makes the differential comparison honest). What they convinced the world of was correspondingly modest and robust: not "our apparatus is accurate to one part in 10⁹," but "a fringe shift forty times our noise floor, with a specific angular signature, is absent." The result was so credible precisely because a null at second harmonic is hard to fake — almost any systematic error would *add* a spurious signal, not cancel a real one. (And Lorentz, notably, found it so credible that he invented length contraction specifically to explain it, rather than questioning the experiment.)

The experiment was sensitive enough that it would have detected the effect at Earth's orbital speed even if the lab happened to be momentarily at rest in the ether at one season — they planned to repeat it months apart for exactly that reason. The precision was never in doubt. What failed was the universe's cooperation.

 

### Is there an ether? {#is-there-an-ether?}

A successful Michelson-Morley experiment would have *vindicated* Newton, not undermined him.

**You could measure your speed from inside a train.** The ether (in the Fresnel picture that aberration observations favored) was not dragged along by moving matter — it penetrates the train car freely. So unlike the air inside the car, which moves with you, the ether wind would blow right through your closed compartment. An interferometer on your lap would detect your velocity relative to the ether, no window needed. (Strictly: your speed relative to the ether, not relative to the tracks — but if the ether is at rest relative to the Earth's surface only by coincidence, you'd effectively get an absolute velocity, including the Earth's orbital motion.)

**But this doesn't contradict Newtonian mechanics.** Galilean invariance in Newton is a theorem about *mechanics* — Corollary V of the Principia: the laws of mechanics can't distinguish uniform motion. Nothing in Newtonian physics forbids some *other* branch of physics from singling out a frame. Sound does exactly this: it propagates at a fixed speed relative to air, and measuring your airspeed is perfectly Newtonian. A luminiferous ether would just be the same situation for light — electromagnetism as the mechanics of a medium, with Maxwell's equations holding exactly in the medium's rest frame. That's not a violation of anything; it's how every other wave theory worked.

**Newton would have been delighted.** Remember that Newton *believed* in absolute space — it's load-bearing in his metaphysics (the rotating bucket argument). His embarrassment was that his own mechanics provided no way to detect absolute rest, only absolute acceleration. A positive ether-drift result would have handed him exactly what was missing: a physical realization of absolute space, empirically accessible. Maxwell and others explicitly hoped for this — identifying the ether frame with Newton's absolute frame would have closed the gap.

So the actual historical situation was the reverse of your scenario: it was the *null* result that created the crisis. The principle of relativity, which in 1880 looked like an accidental feature of mechanics that electromagnetism would break, turned out to hold for light too. Einstein's move was to stop treating that as a conspiracy to be explained (Lorentz's contraction-as-dynamical-effect) and instead promote it to a postulate: the relativity principle applies to *all* of physics, electromagnetism included. The price was giving up the Galilean velocity-addition law and absolute simultaneity — i.e., keeping the relativity principle but swapping the Galilean group for the Lorentz group.

There's a nice way to put it that connects to your twin-paradox geometry: Newtonian physics and special relativity *agree* that uniform motion is undetectable from inside. What a successful Michelson-Morley would have refuted is precisely that shared principle — and ironically, that's the one part of the Newtonian framework that survived 1905 intact.

A positive result of Michelson-Morley would have established a physically preferred frame: the rest frame of the ether, detectable by experiment from inside any closed laboratory. Newton would almost certainly have identified this frame with his absolute space, and so did the 19th-century ether theorists — Maxwell explicitly entertained that hope. It would have cured the one weakness in Newton's position: he asserted absolute space on metaphysical grounds (and via the bucket argument for absolute *rotation*), but his own mechanics made absolute *uniform* velocity undetectable in principle. The ether wind would have filled exactly that hole.

Strictly speaking, the experiment would only have shown that *electromagnetism* picks out a frame — the medium's rest frame, like air for sound. Identifying that frame with metaphysical absolute space is an additional interpretive step, not forced by the data. A determined relationist (Leibniz, Mach) could still say "fine, there's a cosmic medium, and motion relative to *it* is what you're measuring — that's still relative motion, just relative to something very big." But as a practical matter, physics would have proceeded with a universal standard of rest, and Newton's worldview would have looked triumphant. So the clean summary: Michelson-Morley succeeding → absolute rest operationally real → Newton vindicated. Michelson-Morley failing → relativity principle extends even to light → the Galilean structure of spacetime, not the relativity principle itself, was what had to go.

Closed compartment: the air is fully carried along, so sound propagates isotropically at 343 m/s in your frame. An acoustic interferometer shows no fringe shift, no matter how fast the train goes. Open wagon: the air streams through at the train's speed, sound goes faster downwind than upwind, and your interferometer happily measures your airspeed.

Now translate to light: the null result of Michelson-Morley is exactly what you'd expect *if the Earth drags the ether along with it* — the "closed compartment" scenario, Stokes' hypothesis. So why didn't physicists just conclude that and keep the ether? Because of stellar aberration: the apparent position of stars shifts annually by \~20 arcseconds due to Earth's orbital velocity, and Bradley's classical explanation of this only works if the ether is *not* dragged — light has to come in like rain falling through an open window, undisturbed by Earth's motion. (Fizeau's 1851 flowing-water experiment further pinned things down to Fresnel's *partial* drag coefficient, which matched aberration but predicted Michelson-Morley should succeed.)

So the experimental situation around 1890 was a genuine paradox in your terms: aberration said "open wagon," Michelson-Morley said "closed compartment." No consistent ether-wind story fit both. That's what made it a crisis rather than a mere null result — and Einstein's resolution dissolved the dilemma by removing the medium entirely: there's no fact of the matter about being open or closed to the ether, because light needs no medium and its speed is c in every inertial frame. Aberration and the null result both follow, now from kinematics rather than from any story about drag.

One footnote on your sound experiment: it would succeed in the open wagon but with a second-order effect, v²/c\_sound² — same as Michelson-Morley. Since sound is slow and trains are relatively fast, the fringe shift would actually be enormous compared to the optical case, where Earth's orbital v/c ≈ 10⁻⁴ made the expected effect tiny and Michelson's precision so heroic.


### The Twin Paradox in General Relativity

*Gravitational time dilation as the potential-term sibling of the kinematic twin effect. Plausibility level, no proofs. $c$ kept explicit where it clarifies the sign; set $c=1$ where it only clutters.*

## The scenario and its punchline

Twin **H** spends the summer on a mountain at height $\Delta h$; twin **L** stays in the valley. On reunion, **H has aged *more*** — the opposite sign from the special-relativistic twin, who ages *less*.

- **SR twin (velocity):** motion slows a clock → the traveller ages less.
- **GR twin (potential):** height in a gravitational field speeds a clock → the mountain twin ages more.

Height buys time, not youth.

## The formula

Gravitational time dilation, weak field, to leading order in $1/c^2$:

$$
\frac{\Delta\tau_{\text{high}} - \Delta\tau_{\text{low}}}{\Delta\tau} \;\approx\; \frac{\Delta\Phi}{c^2} \;=\; \frac{g\,\Delta h}{c^2},
$$

where $\Phi$ is the Newtonian gravitational potential (higher altitude = larger, less-negative $\Phi$). **Larger potential → faster clock.**

**Numbers** ($\Delta h = 1000\ \text{m}$, one summer $\approx 7.9\times10^{6}\ \text{s}$):

$$
\frac{g\,\Delta h}{c^2} \approx \frac{9.8 \times 1000}{9\times10^{16}} \approx 1.1\times10^{-13}
\quad\Longrightarrow\quad
\Delta\tau \approx 1.1\times10^{-13} \times 7.9\times10^{6}\,\text{s} \approx 0.9\ \mu\text{s}.
$$

The mountain twin gains roughly **one microsecond per summer** — tiny, but squarely within reach of modern optical clocks (the same physics that lets them resolve a 1 cm height difference).

## Why the sign is opposite to SR — one metric, two terms

Both effects are the *same* principle — a clock reads the proper-time length of its worldline — applied to different terms of the weak-field metric:

$$
d\tau^2 = \underbrace{\left(1 + \frac{2\Phi}{c^2}\right)dt^2}_{\text{gravitational (potential)}} \;-\; \underbrace{\frac{1}{c^2}\,dx^2}_{\text{kinematic (velocity)}} .
$$

- The **velocity term** $-\,dx^2/c^2$ *subtracts*: moving costs proper time (the SR twin).
- The **potential term** $+\,2\Phi/c^2$ *adds* as $\Phi$ increases: being higher up gains proper time; being deeper in the well loses it (the GR twin).

The two contributions carry **opposite signs**, so they compete. Integrating,

$$
\tau = \int \sqrt{\left(1 + \frac{2\Phi}{c^2}\right) - \frac{v^2}{c^2}}\;dt .
$$

## The unifying principle: geodesics maximize proper time

In curved spacetime the freely-falling **geodesic** is the timelike path of **maximal** proper time — the direct generalisation of flat-spacetime "the straight worldline is the longest" (the reversed triangle inequality). Both twins' ageing is this single variational principle evaluated on their respective worldlines; whoever follows the geodesic accumulates the most proper time.

This also resolves the *original* SR twin paradox in GR language: the turnaround acceleration is, by the equivalence principle, a pseudo-gravitational potential, and totalling the honest integral over both terms still favours the inertial (geodesic) twin — as it must.

## Real-world confirmation: GPS

Satellite clocks feel **both** terms, with opposite signs:

| Effect | Sign | Rate |
|---|---|---|
| SR (orbital velocity slows clock) | $-$ | $\approx -7\ \mu\text{s/day}$ |
| GR (high altitude speeds clock) | $+$ | $\approx +45\ \mu\text{s/day}$ |
| **Net** | $+$ | $\approx +38\ \mu\text{s/day}$ |

The GR term dominates; uncorrected, this would produce ~10 km of positioning error per day. The mountain twin is precisely this GR term, isolated and slowed to human scale.

## One-line summary

> The valley twin sits lower in the potential and ages *less*; the mountain twin sits higher and ages *more* — gravitational time dilation, $\Delta\tau/\tau \approx g\,\Delta h/c^2$, the potential-term counterpart of the velocity-term SR twin, both being the one principle that a clock measures $\int d\tau$ along its worldline and geodesics maximise it.




## Atomic Clocks {#atomic-clocks}

Why Caesium-133?

 

**Single stable isotope.** Natural caesium is 100% caesium-133 — no isotope separation, every atom identical. Most elements are isotopic mixtures whose components have slightly different frequencies; caesium hands you a pure sample for free.

 

**One valence electron, heavy nucleus.** Caesium is an alkali metal (like hydrogen, sodium): a single outer electron over a closed shell, giving a *simple, clean* hyperfine structure — just two ground-state levels to work between, no thicket of nearby lines to confuse the measurement. And being heavy (55 protons), its hyperfine splitting is large and sits at a convenient **microwave** frequency (\~9.2 GHz), which 1950s electronics could already generate and count. Hydrogen's line is cleaner still in some ways but its frequency and handling were less convenient when the standard was set.

 

**A sharp line — high "quality factor."** The hyperfine transition is highly *forbidden* to decay quickly, so the natural linewidth is extremely narrow: the two levels are sharply defined, the tick has little intrinsic fuzz. Narrow line \= precise frequency.

 

**Easy to vaporize and manipulate.** Caesium melts at 28 °C — barely above room temperature — so you get an atomic beam or vapor trivially. And its transitions are accessible to lasers for cooling and state-preparation, which is what turned caesium clocks from good to spectacular (fountain clocks drop laser-cooled caesium and interrogate it in free fall for \~1 second, narrowing the line enormously).

 

**Historical lock-in.** By 1967, caesium beam clocks were already the best realized standard and had been *calibrated against the older astronomical second*, so adopting caesium made the new second continuous with the old one. Once chosen, the entire infrastructure of timekeeping grew around it.

**Is caesium constant relative to *other* physical clocks?** *This* is measurable and is checked relentlessly. You compare a caesium clock against clocks built on entirely different physics — hydrogen masers, optical clocks based on strontium, ytterbium, aluminum ions, each ticking on different atoms and different transitions at different frequencies. If caesium were drifting relative to the underlying laws, these dissimilar clocks would drift relative to *each other* in tell-tale patterns. The tests are among the most precise in all of science, and so far: \*\*the ratios between different atomic clocks are constant to something like a part in 101810^{18} 1018 per year.\*\* No drift detected at that staggering precision. That's the empirical content of "caesium is constant" — not a statement about caesium alone (which is definitional) but about the *mutual consistency of all atomic clocks*, which is a real, falsifiable, so-far-confirmed claim.

**Why should we *expect* it to be constant?** Because the hyperfine frequency is determined by fundamental constants — the fine-structure constant α\\alpha α, the electron-to-proton mass ratio, the nuclear magnetic moment. If those constants are truly constant, so is every atomic transition, caesium included; and one atom's frequency can only drift relative to another's if a *fundamental constant* is drifting. So "will caesium stay constant?" is really the question **"are the constants of nature actually constant?"** — one of the deep open empirical questions in physics. And it is *actively tested*: people search for time-variation of α\\alpha α using exactly these clock-comparison experiments (and astrophysically, via quasar spectra billions of years old). Current terrestrial limits: α˙/α≲10−18\\dot\\alpha/\\alpha \\lesssim 10^{-18} α˙/α≲10−18 per year — consistent with zero, no variation found. We don't *know* it's constant forever; we have extraordinarily tight *bounds* saying that if it varies, it does so below our (phenomenal) sensitivity.

**The SI (sytem international d’unités) is now moving past caesium.** The successor won't be a claim that we finally found the *eternal* atom — it'll be *optical clocks* (strontium, ytterbium, aluminum-ion), which tick at \~101510^{15} 1015 Hz instead of caesium's 101010^{10} 1010 Hz. A hundred thousand times more ticks per second means a hundred thousand times finer division of time and correspondingly better precision. A redefinition of the second around an optical transition is expected around 2030\. Notice what this reveals: the choice of reference transition is *conventional and revisable*, chosen for precision and convenience, not for any claim of ultimate constancy. When we switch, the *number defining the second* will change atoms, but the *second itself* will be kept continuous — exactly as caesium was made continuous with the old astronomical second in 1967\.

 

## Optical Clocks {#optical-clocks}

An **optical clock** is an atomic clock whose "tick" is a transition at *optical* frequencies — around $10^{15}$ oscillations per second — instead of the *microwave* frequency (\~$10^{10}$ Hz) that caesium uses. That single change, five orders of magnitude more ticks per second, is the whole point: it buys enormously finer timekeeping. 

**Why frequency \= precision.** A clock measures time by counting cycles of some oscillator, and you can locate an event only to within roughly one cycle. Divide the second into $10^{10}$ parts (caesium) and each part is your resolution floor; divide it into $10^{15}$ parts (optical) and each tick is $100{,}000\\times$ finer. More precisely, a clock's stability scales with its **quality factor** $Q \= \\nu / \\Delta\\nu$ — the transition frequency $\\nu$ divided by the linewidth $\\Delta\\nu$ (the fuzz on the line). Optical transitions can have both a huge $\\nu$ *and* an extraordinarily narrow $\\Delta\\nu$ (some "forbidden" transitions have natural linewidths below 1 Hz), giving $Q$ values that dwarf caesium's. That's why optical clocks now reach fractional uncertainties around $10^{-18}$ — losing less than a second over the *age of the universe* — versus \~$10^{-16}$ for the best caesium fountains.

**What the atom does — same principle as caesium, higher note.** You have an ensemble (or a single ion) of atoms with two energy levels separated by an optical transition — strontium, ytterbium, aluminum, or a single trapped ion like Al⁺ or Yb⁺ are the leading choices. You shine a very stable laser at them, tuned to the transition. When the laser frequency exactly matches the atomic resonance, the atoms absorb maximally; you use that absorption as an error signal to lock the laser precisely onto the atomic line. The *atom* is the reference (its transition frequency is fixed by nature), and the *laser* is the oscillator being disciplined to match it. Same architecture as any atomic clock — a reference transition plus a servo-locked oscillator — just at a frequency a hundred thousand times higher.

Two families, worth distinguishing:

* **Single-ion clocks.** One ion (say Al⁺) held in an electromagnetic trap, laser-cooled nearly to rest. One ion means exquisite control and tiny systematic shifts, but a weak signal (one atom's worth), so averaging takes longer.  
* **Optical lattice clocks.** Thousands of neutral atoms (strontium is the workhorse) held in a "lattice" of standing-wave laser light — an egg-crate of optical traps, one atom per well. The trap wavelength is chosen at a **magic wavelength** where the trapping light shifts both clock levels *equally*, so it doesn't perturb the transition frequency. Many atoms means a strong signal and fast averaging, with the lattice holding them still to avoid motional errors.

**The hard part — counting $10^{15}$ ticks per second.** Here's the genuine obstacle that made optical clocks impossible until \~2000: no electronics can count $10^{15}$ cycles per second. Caesium's \~$10^{10}$ Hz is countable directly by microwave electronics — that's *why* caesium was chosen in the 1960s. Optical frequencies are simply too fast to count with a circuit. For decades this made optical transitions useless as clocks despite their superior $Q$: you could lock a laser to them but couldn't *read out* the frequency in countable units.

The breakthrough — 2005 Nobel Prize to Hall and Hänsch — is the **optical frequency comb.** A special mode-locked laser emits a spectrum of millions of sharp, evenly spaced frequency lines, like a ruler across the optical spectrum, with the *spacing* between teeth set by a **microwave** repetition rate you *can* count. The comb acts as a gearbox linking the uncountable optical frequency to a countable microwave one: you beat your optical clock laser against the nearest comb tooth, and since the whole comb is referenced to a countable rep-rate, you effectively *divide* the optical frequency down into the microwave domain where electronics can tally it. The comb is the essential enabling invention — without it an optical clock is a superb oscillator you cannot read; with it, you can convert $10^{15}$ Hz optical ticks into ordinary counted output. It's the piece that turned optical clocks from a tantalizing idea into working devices.

**Where this is going, tying back to the redefinition.** Optical clocks now *outperform* caesium by one to two orders of magnitude, which is exactly why the SI second is expected to be redefined around an optical transition (strontium and ytterbium are front-runners) near 2030\. The obstacles being cleared first: choosing *which* atom, ensuring different labs' optical clocks agree at the $10^{-18}$ level (they largely do), and maintaining continuity so the redefined second matches the caesium second at the moment of switchover — just as caesium was made continuous with the astronomical second in 1967\.

The reason optical clocks reach $10^{-18}$ isn't only the high frequency; it's that at that precision you're fighting *general relativity*. A clock run one centimeter higher in Earth's gravitational field ticks measurably faster (gravitational time dilation) — optical clocks are so good they detect a **height difference of \~1 cm** as a frequency shift. That's now a feature: optical clocks are becoming tools for *relativistic geodesy*, mapping the gravitational potential (and thus, effectively, altitude and mass distributions) by comparing clock rates. The instrument built to define the second has become sharp enough that the curvature of spacetime is a routine systematic it must correct for — a rather beautiful closing of the loop with everything you've been asking about.

So, compactly: an optical clock is an atomic clock ticking on a visible-light transition (\~$10^{15}$ Hz) rather than a microwave one, with a laser locked to an ultra-narrow atomic line as the reference and an optical frequency comb as the "gearbox" that makes those impossibly fast ticks countable — delivering precision (\~$10^{-18}$) high enough to redefine the second, and high enough that a centimeter of height, via relativity, becomes something the clock can see.

## Quantum Mechanics {#quantum-mechanics}

The clocks we’'ve been discussing are *quantum devices through and through*, even though we've been describing them in the classical language of "ticks" and "frequencies." Let me sort where QM is essential from where it's incidental, because they're genuinely different roles.

**The energy levels themselves are quantum — this is the foundation.** The very existence of a sharp "transition frequency" is a quantum fact. Classically, an electron bound to a nucleus could orbit at *any* energy, radiating a continuous smear of frequencies — there would be no sharp line to lock onto, no clock. Quantization is what gives atoms **discrete energy levels** $E\_1, E\_2$, and the transition emits/absorbs a photon at exactly

$$ \\nu \= \\frac{E\_2 \- E\_1}{h}, $$

the **Planck relation** — the single most important quantum equation for this whole subject. Every "frequency" in the last several messages — caesium's 9.19 GHz, strontium's $10^{15}$ Hz — *is* an energy gap divided by Planck's constant. No quantization, no gap, no reference, no clock. So QM comes into play at the absolute ground floor: it's why a clock frequency is a *sharp, universal, reproducible number* rather than a tunable classical orbit. This is why every caesium atom in the universe ticks identically — they're identical quantum systems with identical spectra, which is the property that made "define the second by an atom" possible at all.

**The hyperfine structure specifically is a doubly-quantum effect.** Caesium's clock transition is between two *hyperfine* levels — and hyperfine splitting comes from the quantum interaction between the electron's **spin** and the nucleus's **spin** (both intrinsically quantum, no classical analogue), a magnetic coupling whose two allowed orientations sit at slightly different energies. So the caesium tick isn't just quantized energy levels; it's the quantized coupling of two quantized spins. Spin is one of the most irreducibly quantum things there is — it has no classical picture — and it sits at the heart of the definition of the second.

**The "narrow line \= good clock" story is quantum too — and cuts both ways.** We kept saying the transition should be *sharp* (small $\\Delta\\nu$, high $Q$). The width of a spectral line is governed by quantum mechanics:

* A transition that decays fast has a broad line; one that decays slowly has a narrow line — this is essentially the **energy–time uncertainty relation**, $\\Delta E \\cdot \\Delta t \\gtrsim \\hbar$: a level that lives a long time ($\\Delta t$ large) has a sharply defined energy ($\\Delta E$ small). The ultra-narrow "forbidden" transitions that make optical clocks so precise are forbidden *by quantum selection rules* — they violate the easy dipole rules, so they decay slowly, so they're narrow. The clock's precision is a direct dividend of a quantum selection rule.  
* The *ultimate* noise floor of a clock is **quantum projection noise** — because measuring whether an atom is in level 1 or 2 is a quantum measurement with an intrinsically probabilistic outcome, averaging $N$ atoms leaves a residual $1/\\sqrt N$ statistical wobble (the "standard quantum limit"). The best clocks are now bumping against this genuinely quantum floor, and cutting-edge work uses **entanglement** (spin-squeezed states) to push *below* it. So QM sets both the ceiling (how sharp the line can be) and the floor (how precisely you can read it).

**The manipulation — laser cooling, state preparation, trapping — is all quantum.** Everything that turned good clocks into spectacular ones is applied QM:

* **Laser cooling** (slowing atoms to near absolute zero so they don't Doppler-smear the line) works by atoms *absorbing and re-emitting photons* — quantized momentum kicks, photon by photon. Pure QM.  
* **The optical frequency comb** — the gearbox from the last message — relies on the quantum coherence of a mode-locked laser, and lasers themselves are quantum devices (**stimulated emission**, Einstein's 1917 quantum insight; the "LASER" acronym has "stimulated emission" in it).  
* **State preparation and readout** — putting atoms into a definite level and detecting which level they're in — are quantum-mechanical operations on quantum states.

**So, when does QM come into play? Essentially always — it's the substrate.** Let me draw the one clean distinction that answers your question precisely:

* **Special relativity** (this whole conversation until the clocks) governs *how time and space relate between frames* — the kinematics, the geometry, the $\\gamma$ and cosh. It tells you how a clock's *rate* transforms when it moves.  
* **Quantum mechanics** governs *what a clock is made of and why it ticks at all* — the existence of a sharp, universal frequency to serve as the tick. It provides the *mechanism*; relativity provides the *transformation law*.

They meet at exactly the precision frontier we ended on. An optical clock is a *quantum* device (levels, spins, selection rules, laser cooling, projection noise) precise enough that *relativistic* effects (the 1-cm gravitational shift) become routine systematics. So the modern atomic clock is the point where your two great 20th-century theories are *both* operative at once: quantum mechanics builds the clock, relativity tells it how altitude and motion re-time it, and the frequency comb lets you read the result. The second — the anchor of the entire SI, the thing that via $c$ defines the metre — is quantum-mechanical in its very definition (an energy gap over $h$) and relativistic in its high-precision behavior.

A nice way to hold the whole arc: **relativity told us there's no absolute time and clocks are worldline-dependent; quantum mechanics told us there's an absolute, universal *tick* — the atomic transition — identical everywhere, that we can use to build those clocks.** The two theories divide the labor perfectly. Relativity: how clocks relate. Quantum mechanics: why there are clocks. Metrology is where the division stops being philosophical and becomes engineering — the caesium atom's quantum tick, transformed by relativity, read out by a quantum comb, defining the second for everyone.

## Limits on Optical Clocks {#limits-on-optical-clocks}

There's a hierarchy of ceilings, each tighter and more fundamental than the last:

1. **Technical/environmental limits** — thermal noise in the reference cavity, stray magnetic fields, collisions, blackbody radiation shifts, gravitational shifts (the 1-cm altitude effect). These are "just" engineering; they're what current clocks actually fight, and they keep improving. Not fundamental.

2. **The standard quantum limit (quantum projection noise)** — this *is* fundamental, and it's quantum. When you ask $N$ atoms "are you in level 1 or level 2?", each answer is a probabilistic quantum measurement (superposition collapsing to one outcome), so the frequency estimate has an irreducible statistical scatter $\\propto 1/\\sqrt{N}$. This is the quantum shot-noise floor of an *ensemble* clock, set by the granularity of *measurement outcomes*, not of time. It's beatable, though —

3. **The Heisenberg limit** — using **entanglement** (spin-squeezed states), you can push the scaling from $1/\\sqrt{N}$ to $1/N$, the ultimate limit allowed by quantum mechanics for $N$ particles. Cutting-edge clocks are starting to exploit this. Still a *measurement* limit.

4. **The energy–time uncertainty relation**, $\\Delta E,\\Delta t \\gtrsim \\hbar$ — the deepest of the "ordinary QM" limits, and the one most relevant to your question. It says a *frequency* measurement of precision $\\Delta\\nu$ needs interrogation time $\\Delta t \\gtrsim 1/\\Delta\\nu$: to define a frequency finely you must watch the oscillation for long enough. This limits *how fast* a clock of given precision can be read, and *how narrow* a usable transition line can be (a level of finite lifetime $\\tau\_{\\text{life}}$ has width $\\Delta E \\sim \\hbar/\\tau\_{\\text{life}}$). Crucially — and this is the point — **this is an uncertainty relation about measurement, not a granularity of time.** It says you can't *resolve* time/frequency below a trade-off bound; it says nothing about time coming in lumps.

So: yes, there's a fundamental lower limit to clock precision, and it's quantum-mechanical in origin (projection noise, energy–time uncertainty, the Heisenberg limit). But every one of these is a statement about **the precision of a measurement of time**, arising from the quantum nature of the *atoms and the measurement process* — not from any granular structure of time itself.

## 

 

## Time is continuous {#time-is-continuous}

Energy quantization (the thing that makes clocks possible) is a statement that a *bound system* has discrete energy levels — the caesium atom can sit at $E\_1$ or $E\_2$ but not between. That's a property of *matter in a potential*, derived from solving the Schrödinger equation with boundary conditions. It is **not** a statement that energy-in-general comes in universal indivisible lumps: a free particle has a perfectly *continuous* energy spectrum, any value allowed. So even "energy is quantized" is narrower than it sounds — it's *bound-state* energies that are discrete, because confinement \+ wave boundary conditions force standing-wave modes, exactly like a guitar string's discrete harmonics. Free energy is continuous.

Now time. In standard quantum mechanics, **time is not an observable at all** — it's a *continuous parameter*, the $t$ in the Schrödinger equation, not an operator with eigenvalues. There's no "time operator" whose spectrum could be discrete (there's a famous obstruction, Pauli's theorem, to building one for a Hamiltonian bounded below). So within the framework that governs the clock, **time is manifestly continuous by construction** — the atom's discreteness is in its *energy*, and that discreteness is precisely what lets it subdivide a *continuous* time into countable ticks. The clock uses *quantized energy* to measure *continuous time*. The ticks are countable, but each tick is a smooth oscillation $e^{-iEt/\\hbar}$ evolving continuously; nothing forces $t$ onto a lattice.

An analogy that may lock it in: a metronome ticks discretely, but that doesn't mean *time* is discrete — the metronome's discreteness is in the pendulum's periodic return, and it's measuring a perfectly continuous flow. The atom is a quantum metronome: discrete *because the atom* has discrete levels, ticking through *continuous* time. Countable ticks ≠ granular time.

**A** real open frontier, just not one that optical-clock limits reach:

* **The Planck time**, $t\_P \= \\sqrt{\\hbar G/c^5} \\approx 5\\times10^{-44}$ s, is the scale where quantum mechanics *and* gravity must both apply, and many candidate theories of **quantum gravity** (loop quantum gravity most explicitly, some others more subtly) suggest spacetime — including time — may have discrete or "foamy" structure at that scale. So "is time quantized?" is a *live* question — but at $10^{-44}$ s, and answered (if at all) by quantum gravity, **not** by atomic clocks. Optical clocks operate around $10^{-15}$ s transitions with precisions reaching maybe $10^{-19}$ s of a second's fractional stability — nowhere remotely near $t\_P$; there are \~30 orders of magnitude between the best clock resolution and the Planck time. The clock limits (projection noise, energy–time uncertainty) are *ordinary* QM and have nothing to do with any putative Planck-scale granularity.

* Note the crucial difference in *character*: the clock-precision limits come from the quantum nature of *the measuring apparatus* (atoms, photons, measurements). A hypothetical time-quantization would come from the nature of *spacetime itself*. The first is well-established quantum mechanics; the second is speculative quantum gravity. They live at scales 30 orders of magnitude apart and rest on entirely different physics.

**So the clean answer:** There is a fundamental lower limit to optical-clock precision, and it's genuinely quantum — the standard quantum limit from projection noise, tightened to the Heisenberg limit by entanglement, and underwritten by the energy–time uncertainty relation. But this limit is about the **precision of measuring** time, driven by the quantum nature of the *atoms and the measurement*, and it carries **no implication that time is quantized.** In standard QM time is a continuous parameter, not even an observable, and the clock uses the discreteness of *energy levels* to subdivide a *continuous* time — quantized energy in service of measuring smooth time, the reverse of what quantization-of-time would require. Whether time is *ultimately* granular is a real and open question, but it belongs to quantum gravity at the Planck scale ($10^{-44}$ s), untouchably far below anything an atomic clock probes. The uncertainty relation limits your *resolution*; it does not pixelate the *thing being resolved*.

 

 

# Units {#units}

## Time and Length {#time-and-length}

Since $c$ is constant and $v \= s/t$ ties the three together, you cannot independently define all of length, time, *and* the speed of light. The SI fixes **time** and **the speed of light** by decree, and lets **length** fall out. Here are the actual definitions.

**Time — the second — is the true primitive.** It's defined by a physical oscillation, not by any distance:

> The second is defined by fixing the caesium-133 hyperfine transition frequency $\\Delta\\nu\_{\\text{Cs}} \= 9,192,631,770$ Hz exactly. One second is the duration of that many periods of the radiation from the transition between the two hyperfine levels of the ground state of the caesium-133 atom.

So a second is "count 9,192,631,770 wiggles of a specific caesium transition." This is grounded in nothing but a frequency — a pure count of a natural oscillation. Time is the anchor of the whole system.

**The speed of light is defined, not measured.** Since 1983:

> $c \= 299,792,458$ m/s, **exactly**, by definition.

$c$ is no longer something we go out and measure with better and better apparatus; it is a *fixed conventional constant*, an exact integer. We stopped treating it as an empirical quantity and promoted it to a definition.

**Length — the metre — is derived** *in terms of* the second and the fixed $c$:

> The metre is the length of the path travelled by light in vacuum during a time interval of $1/299,792,458$ of a second, or 30.6633189885 caesium wiggles.

The circularity $v \= s/t$ with $c$ constant is broken not by finding an independent handle on all three, but by *choosing* which one to sacrifice. Length was sacrificed. There is now no such thing as "measuring the speed of light" — measuring $c$ would be measuring the metre against itself. What used to be a measurement of $c$ became, in 1983, a *definition of the metre*; the experimental effort that once refined our knowledge of $c$ now refines our *realization of the metre* (via stabilized lasers of known frequency, since $\\lambda \= c/\\nu$ and $c$ is exact).

**One layer deeper:** The post-2019 SI made this philosophy universal. The whole system is now built by *fixing the numerical values of a handful of constants exactly* — $\\Delta\\nu\_{\\text{Cs}}$, $c$, the Planck constant $h$, the elementary charge $e$, Boltzmann's $k$, Avogadro's $N\_A$ — and letting all units be derived from those fixed constants. Length via $c$ is just the first and cleanest instance of the general strategy: don't define units by artifacts or measurements, define them by nailing constants and deriving the rest. Your $v \= s/t$ observation is the toy model of the entire modern metrology

 

## Mass {#mass}

The crucial equation is

 

E \= h \\nu \= M c^2, so M \= h \\nu / c^2

 

Watt: 1 W \= kg  m^2 / s^3 \= J / s \= Nm / s

Newton: 1 N \= kg m / s^2, J \= N m \= kg m^2 / s^2

Planck h \= 6.62607015 \\times 10^{-34} J s \= kg m^2 / s

Energy E \= h \\nu \= kg m^2 / s \* 1 / s \= J

Mass M \= E / c^2 \= J s^2 / m^2 \= kg

Caesium frequency in 1 / s: \\nu\_CS \= 9,192,631,770, about 10 GHz

Caesium energy in J: E\_CS \= h \* \\nu\_CS

Caesium mass in kg: M\_CS \= E\_CS / c^2 \= 6.777265312312068e-41 kg

1 kg \= 1 / M\_CS \= 1.475521399735271e+40

 

The caesium atom is strictly used to define the **second** (time), not mass. The kilogram is no longer defined as a multiple of *any* physical object or specific atom.

Instead, the kilogram is defined as a specific mathematical multiple of a quantum of energy, translated into mass using Einstein's $E=mc^2$ and Planck's $E=h\\nu$.

The kilogram is actually a multiple of $\\frac{h \\cdot \\Delta\\nu\_{\\text{Cs}}}{c^2}$. Here is how that works:

* **The Energy-Mass Link:** We know from Einstein that mass and energy are equivalent ($m \= E/c^2$). We know from quantum mechanics that energy is proportional to frequency ($E \= h\\nu$). Therefore, mass can be expressed as $m \= \\frac{h\\nu}{c^2}$.  
* **The Constants:** The SI system fixed the Planck constant ($h$), the speed of light ($c$), and the frequency of the caesium atom's radiation ($\\Delta\\nu\_{\\text{Cs}}$).  
* **The Formula:** By substituting those exact fixed values into the equation, we get the literal definition of one kilogram.

If you do the math, **1 kg is exactly equal to:**

$$\\left( \\frac{299,792,458^2}{6.62607015 \\times 10^{-34} \\times 9,192,631,770} \\right) \\frac{h \\cdot \\Delta\\nu\_{\\text{Cs}}}{c^2}$$

Conceptually, this means a kilogram is defined as being exactly equal to the mass of roughly $1.475 \\times 10^{40}$ photons at the caesium-133 resonance frequency.

While scientists do use a perfectly spherical crystal of Silicon-28 to physicalize a kilogram in the real world, the silicon atom doesn't *define* the kilogram. The crystal is just an extremely precise, macroscopic way to count atoms and link a physical mass back to the fixed value of $h$.

# Astronomy  {#astronomy}

Claude: defining a day

## How the Earth orbits the Sun (1) {#how-the-earth-orbits-the-sun-(1)}

The Earth's tilted spin axis stays pointed the same way while the planet moves around the Sun, which is what *creates* the equinoxes and solstices. Earth's tilt doesn't wobble to follow the Sun; it stays "frozen" pointing at (roughly) Polaris. The seasons come *entirely* from the geometry of that fixed tilt against a moving vantage point, not from any change in the tilt itself, and not from distance to the Sun (Earth is actually closest to the Sun in early January, near the northern winter solstice).

 

March equinox — Axis tilts neither toward nor away from the Sun. Day and night nearly equal.

June solstice — North pole tilts toward the Sun. Longest day in the northern hemisphere.

September equinox — Axis side-on to the Sun again. Day and night nearly equal.

December solstice — North pole tilts away from the Sun. Shortest northern day.

 

At the **solstices**, the axis leans most directly toward or away from the Sun — one hemisphere gets sunlight at a steep angle for a long arc of the day. At the **equinoxes**, the axis is side-on to the Sun, so the terminator (day/night line) passes through both poles and every latitude gets \~12 hours of daylight.

 

**The orbit is** a mild ellipse — eccentricity \~0.0167 — with the Sun at one focus, not the centre. The eccentricity is what makes the seasons unequal in length and drives the equation-of-time asymmetry that pushes the *apparent* solar day around.

 

**The tilt itself precesses.** Over \~25,800 years the axis traces a cone (axial precession), which is exactly why the *equinox* slowly migrates around the orbit — and why the **tropical year** (equinox to equinox, \~365.2422 d) is shorter than the **sidereal year** (fixed-star to fixed-star, \~365.2564 d) by about 20 minutes. That \~20-minute gap is precession eating into the year, and it's the deep reason the calendar tracks 365.2425 rather than the sidereal figure: we calendar-keep to the *seasons*, i.e. to the equinox, not to the stars.

 

## How the Earth orbits the Sun (2) {#how-the-earth-orbits-the-sun-(2)}

Clockwise or counterclockwise (seen from the north)?

**Method 1 — the Sun tells you the direction, via the time of day.** You don't need fancy equipment; you need to know *where the velocity vector points*, and geometry hands it to you. Earth's orbital velocity is **tangent to the orbit**, i.e. perpendicular to the Earth–Sun line, in the direction of motion (counterclockwise seen from the north). Concretely: the velocity vector points toward the position the Sun will *appear* to occupy in about 3 months — or equivalently, it points 90° ahead of the Sun along the ecliptic. Translated to your standing on the ground, the leading edge of Earth's motion — the direction you're being "carried into" — is the point on the sky that is rising, roughly the dawn horizon. **At around 6 a.m. local solar time, the direction straight up (and the eastern horizon) is close to the direction of Earth's orbital travel; at 6 p.m. you're facing backward along the orbit.** More carefully: the "apex" of Earth's way, the point you're heading toward, sits near the ecliptic about 90° west of the Sun, so it's overhead near dawn. So to walk "into" the orbital motion, walk toward the pre-dawn eastern sky. This is pure "look out the window" — you're using the Sun as the landmark the window would show — but it requires no instrument beyond a clock and knowing the date.

**Method 2 — measure it directly, from starlight: aberration.** This is the one that's genuinely detecting the velocity, and it's the historical jewel. Because you move relative to the incoming starlight, you must tilt your telescope slightly *into* your direction of motion to catch a star — exactly as you tilt an umbrella forward when running through vertical rain. The tilt angle is v/c≈10−4v/c \\approx 10^{-4} v/c≈10−4 radians ≈20\\approx 20 ≈20 arcseconds. Over a year, as Earth's velocity vector swings around the orbit, every star traces a little annual ellipse on the sky of that radius, and **the direction of the aberration displacement at any moment points along Earth's instantaneous orbital velocity.** So a good telescope *does* let you read off the fore/aft/perpendicular direction of orbital travel — a star directly ahead of your motion is displaced toward you, one abeam is displaced along the velocity, and measuring the pattern gives you the vector. This is a real inside-the-solar-system measurement of the direction (and speed) of Earth's orbital motion, no assumption about the Sun's position needed — the starlight itself encodes v⃗\\vec v v.

 

 

## How the Sun orbits the Milky Way {#how-the-sun-orbits-the-milky-way}

Let’s climb the ladder of reference frames outward, because the Sun's speed is wildly different at each rung, and only the last one is special in an interesting way.

**With respect to nearby stars (the Local Standard of Rest).** The Sun moves at roughly **20 km/s** toward a point in the constellation Hercules (the *solar apex*, near the star Vega). This is the Sun's *peculiar velocity* — its drift relative to the average motion of the stars in our immediate neighborhood, the "Local Standard of Rest," which is itself defined as the frame co-rotating with the galaxy at our radius. So this number is the Sun's private wandering on top of the general galactic rotation.

**With respect to the galactic center.** The whole Local Standard of Rest — Sun included — orbits the center of the Milky Way at about **230 km/s**. One circuit, a "galactic year," takes roughly 220–250 million years; the Sun has completed on the order of 20 orbits since it formed. This is the dominant motion by far at galactic scale, and note it's an *orbit*, exactly like Earth around the Sun one level down — the same relative-motion story nested one rung out.

**With respect to the Local Group.** The Milky Way as a whole moves toward the Andromeda galaxy (they'll merge in \~4 billion years) and, together with Andromeda, drifts within the Local Group of galaxies. Numbers here are model-dependent and smaller than the galactic-rotation term.

**With respect to the cosmic microwave background — and this is the interesting rung.** Here something changes character. The CMB is radiation filling all space, left over from the early universe, and it is very nearly the same temperature in every direction — *except* for a **dipole**: it looks slightly hotter in one direction and cooler in the opposite, by about one part in a thousand. That dipole is a Doppler shift caused by *our* motion through it. Reading it off gives the Sun's velocity relative to the frame in which the CMB is isotropic: about **370 km/s** toward the constellation Leo. (Fold in the galaxy's own motion and the Local Group moves at \~630 km/s relative to the CMB.)

The CMB frame is the closest thing the universe offers to a "preferred" frame — the frame in which the large-scale cosmos looks isotropic (looks the same in every direction), in which the average matter of the universe is at rest. You *can* measure your velocity relative to it, from inside a closed lab, by reading the dipole — which sounds exactly like the ether detection, and superficially like a violation of "no absolute rest." But it isn't, and the distinction is the whole point:

* The CMB frame is **not absolute rest in the Newtonian/ether sense.** It is not a frame in which the *laws of physics* take a special form, and it is not detectable by any *local* mechanics or electrodynamics experiment. Maxwell's equations, particle physics, the whole of special relativity look identical in the CMB frame and in a frame moving at 370 km/s relative to it. The relativity principle is completely intact: there's no experiment on your bench whose *dynamical laws* single out the CMB frame.  
* What the CMB frame *is*, is a frame picked out by the **contingent contents** of the universe — the actual distribution of matter and radiation that happens to exist — not by the *structure* of spacetime. It's like being on a calm sea full of drifting debris: the average rest frame of the debris is a perfectly good, measurable reference, and you can measure your speed relative to it, but it carries no dynamical privilege. Move relative to it and your physics is unchanged; you just see the debris (the CMB photons) blueshifted ahead and redshifted behind.

# 

# Philosophy {#philosophy}

Claude: defining a day

## Relationists vs. Substantivalists {#relationists-vs.-substantivalists}

The **relationist / operationalist view**: *time is what clocks measure.* Leibniz is the ancestor here: time isn't a container the world sits in, it's just the ordering-relation of events themselves — "time is the order of succession." No events, no succession, nothing to order, so nothing that deserves the name "time." Mach and the logical positivists sharpened this into operationalism: a physical magnitude *is* the procedure that measures it, so a "time" no clock could track isn't merely unmeasurable, it's meaningless.

 

**The substantivalist view** descends from Newton's "absolute, true, mathematical time, \[which\] of itself, and from its own nature, flows equably without regard to anything external" — say time is a real backdrop that would keep flowing through a perfectly frozen, eventless universe. Measurement is just our access to time, not its ground. A ruler's absence doesn't shorten the room; a clock's absence doesn't stop time. On this view "no measurement, no time" confuses epistemology (what we can know) with metaphysics (what there is).

 

**Sydney Shoemaker's 1969 thought experiment**, "Time Without Change." Imagine a universe of three regions, A, B, C. Each, locals observe, undergoes a total freeze at a regular interval — A every 3 years, B every 4, C every 5\. During a freeze in A, its inhabitants notice nothing (they're frozen too) but observe the aftermath: B and C have moved on. Now here's the payoff: every 60 years (the least common multiple), all three would freeze *simultaneously*. 

 

**Poincaré** argued that even *with* clocks, the equality of two successive time intervals has no fact of the matter forced on us by nature — "one second now equals one second later" is a *definition* we adopt (the simplest one, the one that makes physics' laws come out cleanest), not a discovery. We *choose* the cesium transition as uniform; nothing deeper certifies that its "next" wiggle takes as long as its last. Regular processes don't *reveal* time's metric, they *stipulate* it — and we cross-check stipulations against each other (does the pendulum agree with the water clock agrees with the cesium?) for *consistency*, never against time-itself. So on the metric question the honest answer isn't "no measurement, no time" but "no measurement, no *fact about durations* — only a convention we'd have no way to fix."

 

## Newton’s Bucket {#newton’s-bucket}

 

**Newton's bucket** is the classic knife against the relativistic view. Spin a bucket of water in your empty void — nothing else in the universe. The water climbs the sides (centrifugal effect). But climbing *relative to what*? There are no objects to rotate relative to; on strict relationism "the water rotates" should be as contentless as "the universe shifted five feet left." Yet the water *knows*. Newton concluded it rotates relative to **absolute space** — a real spatial structure that persists in the void and does causal work whether or not anything's in it to measure it. If he's right, your "no objects, no distance" is false: the void has geometric structure — distances, straight lines, rotation-facts — sitting there unmeasured, waiting. The ruler doesn't *create* the distance; it *reads* one that was already there.

Newton's position: the movement is relative to absolute space itself. The concave surface is a physical detector of absolute rotation. And this was aimed at a specific target — Descartes had defined motion as motion relative to contiguous bodies, and Leibniz held that all motion is relative, that space is nothing but relations among bodies. The bucket is Newton's counterexample: here is an experiment, performable in any courtyard, whose outcome distinguishes "really rotating" from "not really rotating" without reference to any relative motion that plausibly matters. 

Note how this connects to Michelson-Morley: mechanics gives Newton a detector of absolute *acceleration* (the bucket, and equivalently the tension in a cord joining two rotating globes — his other thought experiment), but no detector of absolute *velocity*. That asymmetry is exactly the awkward gap in his position. He asserts absolute space, can demonstrate absolute rotation, yet uniform motion through his absolute space remains empirically invisible. Hence why a successful ether-drift experiment would have completed his metaphysics.

The relationist reply (Mach's): the water climbs relative to *all the other matter in the universe* — the distant stars — and in a *truly* empty universe the effect would simply vanish, because there'd be nothing to be inertial *with respect to*. **Empty the universe and rotation itself becomes meaningless.** So the bucket doesn't settle it — it *sharpens* it into a question about whether inertia is a relation to matter or to space, and that's an empirical-sounding question we can't actually run.

 

## What if the Universe freezes? {#what-if-the-universe-freezes?}

You cannot rule out that after each click (or each 100th) of a clock the universe stands still. And if so, there is no way to tell how long it paused.

 

Assume there is only one clock. There is no way to tell if it is accurate. If we get more tired because today is longer than yesterday, our body is itself an inaccurate clock.

 

**Principle of Sufficient Reason** — Leibniz's argument that a universe shifted five feet to the left, or created five hours earlier, describes *no distinct state of affairs*, because there's no fact that could distinguish it from the original. Two "possibilities" that agree on every possible observation, forever, are not two possibilities. They're one situation under two descriptions.

 

Whether the freeze is *undetectable-but-real* (substantivalism) or *not-even-a-real-alternative* (relationism) is not decidable by any clock — it's the very same substantivalist/relationist fork from before. No experiment adjudicates the metaphysics of time, because the experiment is made of the very stuff whose status is in question.

 

The substantivalist grants the void real structure (Newton's absolute space, GR's vacuum metric) that rulers and clocks *discover* rather than *constitute*, and no experiment in an empty universe can adjudicate between "the ruler reads a pre-existing distance" and "the ruler brings distance into being," because — as with the frozen clock — running the experiment requires putting an object into the void, which destroys the very emptiness in question.

The deepest tension: modern physics leans *against* the strong form of your thesis for space (empty spacetime is structured) while leaving the time-half more defensible (changeless time still looks contentless).

## GR in a void Universe {#gr-in-a-void-universe}

Einstein's equation is G \= 8πT (in units c=G=1). Setting T \= 0 gives the **vacuum equation** G \= 0, equivalently R\_μν \= 0 (the Ricci tensor vanishes). The temptation is to read "R\_μν \= 0" as "no curvature." But the Ricci tensor is only *part* of the full curvature. The complete curvature — the Riemann tensor — splits into the Ricci part *and* the **Weyl tensor** C. And the vacuum equation kills Ricci while leaving **Weyl completely unconstrained**. That's the crux:

Vacuum ⇒ Ricci \= 0, but Weyl can be anything.

**What remains of GR in a vacuum**

**The metric itself — geometry with no matter.** Empty Minkowski spacetime already has a full metric: distances, time intervals, light-cones, a notion of "straight line" (geodesic), angles. A ruler and clock dropped in would read genuine intervals. Everything a surveyor could measure is defined, with zero mass anywhere.

**Free, propagating gravitational waves.** Because Weyl is unconstrained in vacuum, there exist honest solutions of R\_μν \= 0 that are *not* flat — ripples of pure curvature travelling at the speed of light through a universe containing no matter at all. A gravitational wave far from its (long-gone or idealized-away) source is a vacuum solution: Ricci-flat, Weyl-nonzero. It carries energy and momentum, it stretches and squeezes test separations, it can in principle interfere and scatter — a wave in nothing but geometry. Gravity is not just a relation between masses; it's a field that can exist and do work with the masses removed.

**Curved vacuum spacetimes as a whole — including black holes.** The Schwarzschild solution — the black hole — is a **vacuum** solution *everywhere except the singularity*. Outside the horizon, T \= 0: it's empty space. The curvature that bends light and holds orbits is Weyl curvature in a region with no matter in it. You can have the entire exterior geometry of a black hole as a solution with no matter present in the region you're standing in. The gravitational attraction there is not matter-in-your-vicinity; it's the shape of empty space. (Idealized eternal Schwarzschild has no matter *anywhere* — a black hole made of pure geometry.) 

**The causal and topological skeleton.** Even setting curvature aside, a vacuum spacetime still carries its **light-cone structure** (what can causally influence what), its **topology**, its **dimensionality**, and its **orientation** (arrows of time and handedness). These are not sourced by matter. GR without matter still tells you the causal architecture of the world.

**The dynamics — the equation itself is still live.** Crucially, R\_μν \= 0 is a *nontrivial differential equation*, not the empty statement 0 \= 0\. It has a huge solution space, initial-value formulation, well-posed evolution. You can pose data on a spacelike slice and *watch empty geometry evolve* — two gravitational waves can pass through each other, focus, defocus, even (in strong-field solutions) collide and form curvature concentrations. The theory has content, degrees of freedom, and time-development with the matter switched off. Vacuum GR is a full dynamical field theory in its own right; matter is a *source* you can add, not the thing that brings the field into being.

**What disappears from GR in a vacuum**

**The Ricci tensor** vanishes — meaning *local volume-focusing* of geodesics tied to local energy density is gone. A small ball of test dust in vacuum is not compressed in *volume* (that's Ricci); but it *is* distorted in *shape* — sheared and tidally stretched — and that shape-distortion is precisely Weyl. So tidal forces survive (Weyl), while the "matter squeezes volume here" effect (Ricci) does not.

**Newtonian "gravitational attraction toward a mass"** as a local notion disappears where there's no mass — but is *replaced*, not eliminated: the attraction you'd feel near a black hole is Weyl curvature of empty space, not a mass beside you.

**Any built-in scale.** With T \= 0 and (say) Λ \= 0, the vacuum equation is scale-free — there's no mass to set a length. Matter is what stamps a scale onto the geometry.

**The cosmological constant Λ.** If you keep Λ in the equation, "empty" isn't quite empty — the vacuum equation becomes R\_μν \= Λg\_μν, and even with *no matter* you get intrinsically curved maximally-symmetric spacetimes: **de Sitter** (Λ\>0) and **anti-de Sitter** (Λ\<0). A void universe with a cosmological constant *expands* (de Sitter) or has constant negative curvature (AdS) — all with T \= 0\. So whether a matter-empty universe is dynamically dead or does something depends on Λ, which is why Λ is philosophically charged: it's curvature that belongs to *space itself*, not to its contents. 

 

 

 
