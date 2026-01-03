# Newton

*Johannes Siedersleben, April 2026*


XXX introduction  XXX


## The Greeks

* Anaximander (610 – 547) is the founder of natural science, the first to think
scientifically, according to Carlo Rovelli.

* Democrit (460 – 370) invented a theory of atoms without providing any
evidence.

* Aristotle (384 –322) got it all wrong. His idea was that of objects tending to come
to a rest.

* Euclid (365 – 300) amazing, compiled (most of) Greek geometry. Valid and
virtually flawless to this day. Still THE pattern of mathematics.

* Aristarchos of Samos (310 – 240) computed the size of the moon using
trigonometry.

* Archimedes (287 – 212) found the law of the lever, invented hydrostatics,
anticipated modern calculus, and did a lot more. Considered the leading scientist
of antiquity.

* Eratosthenes (276 – 194) computed the circumference of the Earth (using
trigonometry).


## The Newtonian Theatre 

Imagine Newton (1687) studying falling apples or, more generally, how heavy objects move when subjected to gravity. 
He abstracted away properties such as volume, feel, and colour, eventually arriving at the idea of volume-less 
particles with positive mass, and calculated how they move {cite}`susskind2014classical`. 
aindrops, apples, and planets are tangible instances, but of course they do have shape, volume and many other properties. 
Newton's equations of motion are exact for particles (which aren't real), but approximate otherwise. 
Newtonian mechanics takes place in space-time, with four dimensions extending in both directions straight to infinity. 
This is the stage, and the actors are volume-less particles. You need at least one of them; if there are many, 
it's called statistical mechanics. Newtonian mechanics is a model (in the mind, on paper, or on a computer) 
that describes reality and allows us to make predictions, but it is separate from nature. A falling raindrop 
is completely unaware of Newton's laws, raindrops have always fallen in the same way. Newton's laws have less effect 
on objects in motion than a thermometer has on temperature.


## Classical Mechanics

What’s the Problem: How do particles move in a field (spring, gravitational
field, electric field, magnetic field, …) and how do particles affect the
field?

* Principle of Least Action (amazing, this principle rules the world!)
* The Lagrangian defines the effort caused per unit of time
* The action is the accumulated amount of effort over time
* The principle says: Every system minimizes the action

  * Equations of Motion (Euler-Lagrange, Hamiltonian)
  * Principle of Relativity (sic): Speed is relative and symmetric (you cannot
    tell which train is moving). There is no absolute rest (Galileo
    Transformation)
  
* Consequences:
    * Conservation of Momentum (Newton’s Laws)
    * Conservation of Energy (Energy = the Hamiltonian)
    * Conservation of Information (Theorem of Gibbs-Liouville)



## The Lagrangian

There is a function $L(x, \dot{x})$ which is, somehow, a measure 
for the mess caused by a particle that moves at speed $\dot{x}(t)$ through point $x(t)$.
Here is the principle of least action:

The particle moves in such a way that the action $A[x]$ defined by

(least-action)=
```{math}
:label: least-action-x
A[x] = \int_a^b L(x, \dot{x}) \, dt 
```

is minimized. It is understood that the particle moves from the position $x(a)$ to $x(b)$. 
We are minimizing over all continuous functions 

```{math}
&x: \left\{
    \begin{array}{lr}
        [a, b] \rightarrow \mathbb{R}^3\\
        x \mapsto x(t)
    \end{array}
\right .
```

We will show that all functions $x$ that minimize the {ref}`least action <least-action>`
solve the Euler-Lagrange equation:

```{math}
:label: euler-lagrange
\frac{d}{dt} \frac{\partial L}{\partial \dot{x}} = \frac{\partial L}{\partial x}
```

```{math}
:label: euler-lagrange
\partial_t \, \partial_\dot{x} L = \partial_x L
```

The converse, however, is not true. 

For a given Lagrangian $L$, the quantities **force** and **momentum** are defined by:

```{math}
:label: force-momentum

& p = \frac{\partial L}{\partial \dot{x}} \\
\\
& F = \frac{\partial L}{\partial x}
```
which reduces the Euler-Lagrange equation to

```{math}
:label: euler-lagrange-short

\dot {p} = F
```
Force and momentum are the link between the Lagrangian and observed reality:
If you have an idea of force and momentum, you get the Lagrangian by integration. 
If you have an idea of the Lagrangian, you get force and momentum by differentiation, 
and can compare these with your measurements.



### T-V Lagrangian

Lagrangian:

```{math}
:label: lagrange-t-v
L(x, \dot{x}) = T(\dot{x}) - V(x)
```

Force:

```{math}
:label: force-t-v

F = -\partial V = 
-\begin{bmatrix}
\partial_1 V  \\
\partial_2 V  \\
\partial_3 V  \\
\end{bmatrix}
```
Momentum:

```{math}
:label: momentum-t-v

p = \partial T = 
\begin{bmatrix}
\partial_{\dot{x}} T \\
\partial_{\dot{y}} T \\
\partial_{\dot{z}} T \\
\end{bmatrix}
```

```{math}
:label: momentum-t-v

p = \partial T = 
\begin{bmatrix}
\partial_1 T  \\
\partial_2 T  \\
\partial_3 T  \\
\end{bmatrix}
```

```{math}
:label: momentum-t-v-dot

\dot{p} = \partial_t \, \partial T = \partial \dot{T} = 
\begin{bmatrix}
\partial_1 \dot{T} \\
\partial_2 \dot{T}  \\
\partial_3 \dot{T}  \\
\end{bmatrix}
```

Euler-Lagrange

```{math}
:label: euler-lagrange-t-v

\partial \dot{T} = -\partial V
```

### Standard Lagrangian

Lagrangian:

```{math}
:label: lagrange-t-v
L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2 - V(x)
```

Force:

```{math}
F = -\partial V
```

Momentum:

```{math}
& p = \partial T = m \dot{x} \\
& \dot{p} = m \ddot{x} \\
```

Euler-Lagrange:

```{math}
:label: euler-lagrange-standard

m \ddot{x} = -\partial V
```

### General Case

```{list-table} General Case
:header-rows: 1
:name: tab-general-case
:widths: 25 50 25

* - Property
  - Expression
  - Notes
* - Lagrangian
  - $L(x, \dot{x})$ any continuous function 
  - defined on $[a, b]$
* - Force
  - $F = -\partial_x L $
  -
* - Momentum
  - $p = \partial_{\dot{x}} L$
  - 
* - Euler-Lagrange
  - $\partial_t \partial_{\dot{x}} L = \partial V$
  -
```


### T, V

```{list-table} T, V
:header-rows: 1
:name: tab-t-v
:widths: 25 50 25

* - Property
  - Expression
  - Notes
* - Lagrangian
  - $L(x, \dot{x}) = T(\dot{x}) - V(x)$
  -
* - Force
  - $F = -\partial V$
  -
* - Momentum
  - $p = \partial T$
  - $\dot{p} = \partial \dot{T}$
* - Euler-Lagrange
  - $\partial \dot{T} = -\partial V$
  -
```


### Standard Lagrangian

```{list-table} Standard Lagrangian
:header-rows: 1
:name: tab-standard-lagrangian
:widths: 25 50 25

* - Property
  - Expression
  - Notes
* - Lagrangian
  - $L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2 - V(x)$
  -
* - Force
  - $F = -\partial V$
  -
* - Momentum
  - $p = m \dot{x}$
  - $\dot{p} = m \ddot{x}$
* - Euler-Lagrange
  - $\ddot{x} = -V$
  -
```

### Constant Motion

```{list-table} Constant Motion
:header-rows: 1
:name: tab-constant-motion
:widths: 25 50 25

* - Property
  - Expression
  - Notes
* - Lagrangian
  - $L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2$
  - potential = 0
* - Force
  - $0$
  -
* - Momentum
  - $p = m \dot{x}$
  -
* - Euler-Lagrange
  - $\ddot{x} = 0$
  -
* - Solution
  - $x(t) = vt$
  - $v = \text{const}$
```

### Free Fall

```{list-table} Free Fall
:header-rows: 1
:name: tab-free-fall
:widths: 25 50 25

* - Property
  - Expression
  - Notes
* - Lagrangian
  - $L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2 - gm \begin{bmatrix} 0 \\ x_2  \end{bmatrix}$
  - $x = \begin{bmatrix} x_1 \\ x_2  \end{bmatrix}$
* - Force
  - $-gm \begin{bmatrix} 0 \\ 1  \end{bmatrix}$
  -
* - Momentum
  - $p = m \dot{x}$
  - $\dot{p} = m \ddot{x}$
* - Euler-Lagrange
  - $\ddot{x} = -g\begin{bmatrix} 0 \\ 1  \end{bmatrix}$
  -
* - Solution
  - $x(t) = -g/2 \, \begin{bmatrix} 0 \\ t^2  \end{bmatrix}$
  - 
```

### Hooke

```{list-table} Hooke
:header-rows: 1
:name: tab-hooke
:widths: 25 50 25

* - Property
  - Expression
  - Notes
* - Lagrangian
  - $L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2 - \frac{k}{2}mx^2$
  - 
* - Force
  - $F = -kx$
  -
* - Momentum
  - $p = m \dot{x}$
  - $\dot{p} = m \ddot{x}$
* - Euler-Lagrange
  - $\ddot{x} = -\omega^2 x $
  - $\omega = \sqrt{\frac{k}{m}}$
* - Solution
  - $x(t) = A \cos \omega t + B \cos \omega t$
  - 
```


## Conservation of Momentum

```{math}
\sum_{k=1}^n \dot {p_k} = \sum_{k=1}^n F_k
```

## Conservation of Energy, Hamiltonian

```{math}
H(x, p) + L(x, \dot{x}) = p \, \dot{x}
```

```{math}
&\partial_x H = - \dot{p} \\
\\
&\partial_p H = \dot{x} \\
\\
&\{\cdot, H\} = \frac{d}{dt}
```

```{math}
&E(t) = H(x(t), p(t)) \\
&\partial_t E = \partial_t H(x, p) \\
&= \partial_x H \dot{x} + \partial_p H \dot{p} \\
&= \dot{p} \dot{x} - \dot{x} \dot{p} = 0
```

```{math}
&\frac{\partial H}{\partial x} = - \dot{p} \\
\\
&\frac{\partial H}{\partial p} = \dot{x} \\
```



## Conservation of Information, Gibbs-Liouville

```{math}
\nabla \cdot 
\begin{bmatrix}
\dot{x} \\
\dot{p}
\end{bmatrix} = 0
```

## A Catalogue of Lagrangians

### Hooke


### Pendulum

```{math}
L(x, \dot{x}) = \frac{1}{2}m \dot{x}^2 - \frac{k}{2}x^2
```

### Catenary

### Magnetic Field

```{math}
L(x, \dot{x}) = \frac{1}{2}m \dot{x}^2 + A \dot{x}
```

## A Note on Trains, Elevators, and Spaceships
* Train
  * You cannot tell which train is moving.
  * You cannot measure speed without looking out of the window. 

* Elevator
  * Inside an elevator, you cannot tell gravitational force from
    acceleration/deceleration
  * Inertia and gravitation are indistinguishable.
  * Spaceships, or: Why do astronauts float?
  * Gravity amounts to 99.7% of what it is on the ground at 10 km altitude
    (aeroplane), 89% at 400 km (ISS) and 2% at 35.786 km (geostationary satellites).
  * The ISS orbits the Earth 15.6 times per day, a geostationary satellite exactly once.
    The speed is such that the centrifugal force compensates exactly the remaining
    gravity (89% or 2% resp. ).
  * Astronauts cannot distinguish between gravity and centrifugal force (=
    acceleration). Their levitation is mostly due to centrifugal force.



## References

```{bibliography}
:filter: docname in docnames
```



<div style="margin-bottom: 100px;"></div>
