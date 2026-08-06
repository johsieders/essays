# The Lorentz Group $O(1,3)$

*A structural sketch for special relativity. Plausibility level — no proofs. Units: $c = 1$ throughout, so velocities are dimensionless and $|v| < 1$ for material bodies, $|v| = 1$ for light.*

The organizing idea of these notes is a single substitution:

> Take the rotation group $SO(3)$, flip one sign in the metric, and the circular functions that describe rotations turn hyperbolic. That flip — and *only* that flip — is special relativity's kinematics.

Everything below is an unpacking of that sentence, together with the three things it quietly hides. We will meet those three caveats as we go, and collect them at the end.

---

## 1. The invariant form

A group of linear transformations is defined by *what it leaves unchanged*. For the rotation group $SO(3)$ the invariant is the Euclidean squared length

$$
|\mathbf{x}|^2 = x^2 + y^2 + z^2,
$$

a **positive-definite** form: it is zero only for the zero vector, positive otherwise.

The Lorentz group $O(1,3)$ is defined by exactly the same move, applied to a different form — the **spacetime interval**

$$
Q(t, x, y, z) = t^2 - x^2 - y^2 - z^2 ,
$$

of signature $(+\,-\,-\,-)$. This form is **indefinite**: it is positive for *timelike* vectors (more time than space — worldlines of material bodies), negative for *spacelike* vectors, and zero for a whole cone of nonzero *null* vectors (light). $O(1,3)$ is precisely the set of linear maps $\Lambda$ on spacetime with

$$
Q(\Lambda v) = Q(v) \quad \text{for all } v .
$$

This one line is the premise; every feature in the remaining sections is downstream of it. In particular, the famous cosh/sinh substitution is **not** the axiom — it is the *symptom* of the single sign that distinguishes $Q$ from $|\mathbf{x}|^2$. Keep the signature as primary and the trigonometry will follow on its own; take the trigonometry as primary and it will mislead you the moment you leave a single plane.

The whole parallel-and-difference story is: $SO(3)$ and $O(1,3)$ are the isometry groups of two quadratic forms that differ by the sign of three terms. Same construction, one flip.

---

## 2. What is preserved — orbits, and the cone that has no Euclidean cousin

An isometry group moves each vector only within the surface where the invariant form is constant. These surfaces — the **orbits** — are the cleanest picture of the group's action.

For $SO(3)$ the level sets $x^2 + y^2 + z^2 = \text{const}$ are **spheres**, nested around the origin, and the group acts **transitively** on each: any point of a sphere can be rotated to any other point of the same sphere. Space is cleanly foliated into orbits and there are no exceptional directions.

For $O(1,3)$ the level sets of $Q$ are **hyperboloids**, and they come in two geometrically distinct families separated by a wall:

- $Q > 0$ (timelike): **two-sheeted hyperboloids**, one sheet in the future ($t>0$), one in the past. A given constant, say $Q = \tau^2$, is the locus "proper time $\tau$ from the origin" — the surface of constant aging that the twin story lives on.
- $Q < 0$ (spacelike): **one-sheeted hyperboloids**, the loci of constant spacelike separation.
- $Q = 0$ (null): the **light cone** itself, the boundary between the two families.

Two differences from $SO(3)$ are worth stating sharply, because they have no Euclidean analogue at all:

1. **The action is not transitive across the whole space.** No Lorentz transformation carries a timelike vector to a spacelike one, or either to a null one — the sign of $Q$ is invariant, so the three regions are sealed off from one another. (Within a single sheet the action *is* transitive, which is the relativity principle: any inertial state of motion is equivalent to any other.)
2. **The light cone is a fixed invariant boundary.** Every Lorentz transformation maps the cone $Q=0$ to itself, and no transformation moves a null vector off it. This is the geometric residence of the light postulate: the invariance of the speed of light is the statement that the $45^\circ$ cone is a structural feature of the group, not a frame-dependent accident.

A rotation group has nothing like an invariant cone — a positive-definite form has no nonzero null vectors to build one from. So the very first thing the substitution slogan hides is that $O(1,3)$ carries an extra piece of furniture, the null cone, that $SO(3)$ simply lacks.

---

## 3. Generators split: rotations *and* boosts

Both groups are described near the identity by their **generators** — the independent "infinitesimal moves" you can exponentiate to build finite transformations.

$SO(3)$ has **three** generators, the rotations $J_x, J_y, J_z$ about the three axes. They are all of the same kind. Each generates rotation in a coordinate *plane* ($J_z$ in the $xy$-plane, etc.), each orbit is a circle, and each is **periodic**: rotate by $2\pi$ and you are back where you started.

$O(1,3)$ has **six** generators, and — this is the crucial structural fact — they split into two kinds of three:

- **Three rotations** $J_x, J_y, J_z$, acting in the purely spatial planes $yz, zx, xy$. These are *literally an $SO(3)$ sitting inside $O(1,3)$*: they leave $t$ untouched and do nothing but reorient the spatial axes. They keep their ordinary circular character — periodic, cos/sin, exactly as before.
- **Three boosts** $K_x, K_y, K_z$, acting in the three planes that contain the *time* axis: $tx, ty, tz$. A boost is the transformation to a frame in *relative motion*; it is the group element that changes velocity rather than reorienting rulers. These are the elements that go hyperbolic.

Here, then, is the **second caveat**, and the one your slogan most needs pinned to it. The substitution $\cos \to \cosh$, $\sin \to \sinh$ applies **only in the three planes that contain the time axis** — the boost planes. In the three purely spatial planes, nothing changes: those are ordinary rotations with ordinary trigonometry. So the honest form of the slogan is:

> *Replace $\cos$ with $\cosh$ in the planes that mix time with space; keep $\cos$ in the planes that mix space with space.*

Half of $O(1,3)$ is Euclidean-as-before. Only the half that entangles time with space is new.

Explicitly, a boost in the $tx$-plane with rapidity $\theta$ is

$$
\begin{pmatrix} t' \\ x' \end{pmatrix}
=
\begin{pmatrix} \cosh\theta & -\sinh\theta \\ -\sinh\theta & \cosh\theta \end{pmatrix}
\begin{pmatrix} t \\ x \end{pmatrix},
\qquad
v = \tanh\theta,\quad \gamma = \cosh\theta,\quad \gamma v = \sinh\theta,
$$

the same matrix as a rotation with $\cos,\sin$ replaced by $\cosh,\sinh$. A spatial rotation slides points along circles $x^2+y^2=\text{const}$; a boost slides events along the hyperbolas $t^2-x^2=\text{const}$ of §2 — same picture, conic section changed by the sign flip.

A general Lorentz transformation (in the part connected to the identity) is a boost followed by a rotation. So $O(1,3)$ is not "$SO(3)$ with cosh"; it is "$SO(3)$, *plus* three new boost directions that are $SO(3)$'s rotations with cosh." The rotations are inherited unchanged; the boosts are the genuinely new content.

---

## 4. Compactness, and why you cannot boost past light

The split in §3 is not merely a bookkeeping of six generators into $3+3$. The two kinds differ in a property with direct physical teeth: **compactness**.

$SO(3)$ is **compact**. Concretely: the rotation angle is *bounded* — it lives on a circle, wraps at $2\pi$, and you can always rotate back to where you began. The group is a closed, bounded object; there is nowhere to run off to.

The boost part of $O(1,3)$ is **non-compact**. The rapidity $\theta$ runs over the *entire* real line, $-\infty < \theta < \infty$, with no wrapping and no bound. You can always boost more. Yet the *velocity* does not run away with the rapidity, because

$$
v = \tanh\theta ,
$$

and $\tanh$ **saturates at $1$**: as $\theta \to \infty$, $v \to 1$ but never reaches it. This is the whole content of "you cannot accelerate past light speed," read straight off the shape of $\tanh$. Unbounded rapidity, bounded velocity.

The light cone reappears here as the **unreachable asymptote**: the null directions $x = \pm t$ correspond to $\theta \to \pm\infty$, the boundary the boosts approach forever and never cross. Non-compactness *is* the statement that this boundary sits at infinite rapidity. A compact group like $SO(3)$ has no analogue — its orbits close up, so there is no asymptotic edge to fail to reach.

This is the **third thing the substitution hides**: "cosh instead of cos" looks like a cosmetic change of special function, but $\cos$ is bounded and periodic while $\cosh$ is unbounded and non-periodic, and that qualitative difference — compact vs. non-compact — is exactly what encodes the speed limit and the one-way, never-arriving character of acceleration. The functions are siblings; their global shapes are opposite.

---

## 5. The triangle inequality — and its reversal

This is the sharpest place the analogy stops being cosmetic, and the single fact most worth carrying away.

In the Euclidean world of $SO(3)$, the **triangle inequality** holds: for the length induced by $x^2+y^2+z^2$,

$$
|a + b| \;\le\; |a| + |b| ,
$$

with equality only when $a$ and $b$ are parallel. Geometrically: **the straight line is the shortest path** between two points; any detour is longer. This is so ingrained that we rarely name it as a property of the *positive-definite* form — but that is exactly what it is.

Flip the signature and the inequality **reverses**. For *timelike* vectors, with proper time $\tau(v) = \sqrt{Q(v)}$ playing the role of "length," one has the **reversed (or inverted) triangle inequality**

$$
\tau(a + b) \;\ge\; \tau(a) + \tau(b),
$$

again with equality only when $a$ and $b$ are parallel (same velocity). Geometrically: between two timelike-separated events, **the straight worldline is the *longest* path in proper time**, and any detour — any change of velocity along the way — makes the elapsed proper time *shorter*.

That is the **twin paradox**, stated as a theorem of geometry rather than a puzzle of clocks. The twin who travels inertially from departure to reunion follows the straight worldline and ages the most; the twin who accelerates away and back follows a bent worldline — two timelike segments $a$ and $b$ — and by the reversed inequality ages $\tau(a)+\tau(b) \le \tau(a+b)$, i.e. *less*. The kink costs proper time, exactly as a Euclidean detour costs extra length, but with the sign of the effect turned over.

This is the fact that proves cosh is *not* merely cos in disguise. The two functions share every algebraic identity up to signs, but the geometry they generate is opposite in its most basic ordering property: shortest becomes longest. If you remember one "keep in mind that…", make it this one.

*(Why the reversal, in one line of plausibility: the sign flip in $Q$ puts a **minus** in front of the spatial part, so adding spatial displacement now* subtracts *from the interval. A detour spends its extra motion in space, and space counts negatively — so the detour shortens the proper time instead of lengthening a distance. The minus sign that flipped the trig is the same minus sign that flips the inequality.)*

---

## 6. Composition — adding angles, adding rapidities, and the sting in the tail

Finally, how transformations combine. Here the analogy is at its most *generative* — it predicts real effects — but also delivers a genuine surprise with no Euclidean counterpart.

**Within a single plane**, both groups compose by *adding the angle*. Two rotations in the $xy$-plane by $\alpha_1, \alpha_2$ give a rotation by $\alpha_1 + \alpha_2$. Two boosts in the $tx$-plane by rapidities $\theta_1, \theta_2$ give a boost by $\theta_1 + \theta_2$: **rapidities add**. Feeding this through $v = \tanh\theta$ and the addition formula for $\tanh$ reproduces the relativistic velocity-addition law

$$
v = \frac{v_1 + v_2}{1 + v_1 v_2},
$$

and the saturation of $\tanh$ at $1$ guarantees that stacking any number of sub-light boosts never reaches light speed. So "why don't velocities just add?" has the clean answer: *the additive quantity is rapidity, and $v$ is its $\tanh$.* This is the analogy working for you — the same "angles add" law, read through the hyperbolic function.

**Across different planes**, both groups are **non-commutative**, and this is where $O(1,3)$ springs its surprise. In $SO(3)$, rotations about different axes fail to commute — the order matters — and their non-commutation is the whole substance of the group; the commutator of two rotations is a third rotation. In $O(1,3)$ the rotation part behaves identically. But now ask what two **boosts** about different spatial directions do when composed. The startling answer:

$$
\text{boost}_x \ \text{then} \ \text{boost}_y \;\ne\; \text{a pure boost} \;=\; \text{a boost combined with a *rotation*.}
$$

Schematically, the commutator of two boosts is a rotation — $[K_x, K_y] \sim J_z$ — "two boosts make a turn." Physically this is **Thomas–Wigner rotation** (and its dynamical form, Thomas precession): an object cycled through boosts in different directions, with no torque and no spatial rotation applied anywhere, nonetheless comes back *rotated*. It is a real, measured effect — it corrects the spin–orbit coupling of the electron by the notorious factor of one-half.

This has **no analogue whatsoever in the substitution slogan**. "Replace cos with cosh" says nothing about how boosts in *different* planes interlock; only the full group structure — the commutation relations of the six generators — reveals that boosts and rotations are woven together so tightly that the boosts cannot form a subgroup on their own. It is the deepest signal that $O(1,3)$ is a real, irreducibly new object and not a cosmetic recolouring of $SO(3)$: the three "cosh" directions and the three "cos" directions do not live in separate rooms; compose the hyperbolic ones and a circular one falls out.

---

## Coda: the slogan, with its three asterisks attached

The one-line story we promised, now safe to state because every caveat has been earned:

> **Minkowski spacetime is Euclidean space with one sign flipped in the metric.** The visible symptom is $\cos \to \cosh$, $\sin \to \sinh$, circle $\to$ hyperbola — *but only in the planes that contain the time axis (the boosts); the purely spatial planes stay ordinary rotations.* The price of the flip is that $\cosh$ is unbounded where $\cos$ was periodic — so rapidity is limitless while velocity saturates at $1$ — and that the triangle inequality **reverses**, making the straight worldline the path of **greatest** proper time. And composing boosts in different directions secretly produces a rotation, so the two halves of the group are inseparable.

Read the substitution as the *symptom of the signature*, never as the axiom, and it becomes a reliable guide instead of a trap. Everything an introduction to special relativity needs — the speed limit, time dilation, the velocity-addition law, the twin asymmetry, even Thomas precession — is the geometry of that single flipped sign.
