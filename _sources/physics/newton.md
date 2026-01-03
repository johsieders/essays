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

For a given Lagrangian, the quantities **force** and **momentum** are defined by:

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
\partial V / \partial x \\
\partial V / \partial y \\
\partial V / \partial z \\
\end{bmatrix}
```
Momentum:

```{math}
:label: momentum-t-v

p = \partial T = 
\begin{bmatrix}
\partial T / \partial \dot{x} \\
\partial T / \partial \dot{y} \\
\partial T / \partial \dot{z} \\
\end{bmatrix}
```

Euler-Lagrange

```{math}
:label: euler-lagrange-t-v

\partial_t \, \partial T = -\partial V
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
p = \partial T = m \dot{x}
```

Euler-Lagrange:

```{math}
:label: euler-lagrange-standard

m \ddot{x} = -\partial V
```

### Free Fall

Lagrangian:

```{math}
:label: lagrange-free-fall
L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2 - gx
```

Force:

```{math}
F = g
```

Momentum:

```{math}
p = \partial T = m \dot{x}
```

Euler-Lagrange:

```{math}
:label: euler-lagrange-free-fall

m \ddot{x} = g
```

### Hooke

Lagrangian:

```{math}
:label: lagrange-hooke
L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2 - \frac{k}{2}mx^2
```

Force:

```{math}
F = kx
```

Momentum:

```{math}
p = \partial T = m \dot{x}
```

Euler-Lagrange:

```{math}
:label: euler-lagrange-hooke

m \ddot{x} = -kx
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
