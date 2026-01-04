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
aindrops, apples, and planets are tangible instances, but of course they do have shape, volume, and many other properties. 
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


In Newtonian physics, we study volumeless particles with positive mass that travel through space along a trajectory described 
by a differentiable function $x: [0, T] \rightarrow \mathbb{R}^3$. The interval $[0, T]$
can extend over microseconds or millennia, but is always finite. Starting at zero is just for notational convenience. 
$x(t)$ is the position in space of the particle at time $t$, 
$\dot{x}(t)$ its velocity. We write:

```{math}
x = \begin{bmatrix}
        x_1 \\
        x_2 \\
        x_3
    \end{bmatrix} \text{ and } \dot{x} = \begin{bmatrix}
        \dot{x}_1 \\
        \dot{x}_2 \\
        \dot{x}_3 
    \end{bmatrix}
```

This is the standard case. There are variations: When the particle travels along a straight line, 
we choose this direction as the basis vector. This reduces $x$ to a vector of dimension one. 
When the particle moves on a plane, $x$ is reduced to two dimensions.
When we study two or more particles at a time, say two, $x$ becomes a vector of dimension six, and we 
face a small notational challenge, for instance: 

```{math}
x^2 = \sum_{k=1}^6 x_k^2 = (x_{(1)})^2 + (x_{(2)})^2
```
where:

```{math}
x_{(1)} = \begin{bmatrix}
        x_1 \\
        x_2 \\
        x_3
     \end{bmatrix} \text{ and  }     
x_{(2)} = \begin{bmatrix}
        x_4 \\
        x_5 \\
        x_6
     \end{bmatrix}
```

In general, dealing with two or more particles is surprisingly inconspicuous: we keep writing $x$, whatever the dimension; 
most formulae remain valid regardless of the dimension of $x$. Notice will be given if they don't.

The **Lagrangian** is a function $L(x, \dot{x}) \rightarrow \mathbb{R}$ that is a measure 
of the mess caused by a particle travelling at velocity $\dot{x}(t)$ through point $x(t)$.
The total mess along $x$ is called the **action** and is defined by:

```{math}
:label: least-action
A[x] = \int_0^{T} L(x(t), \dot{x}(t)) \, dt 
```
Now, consider a particle that travels from some point $a$ to another point $b$. 
For any given Lagrangian $L$, we can seek itineraries $x$ that minimize the action $A$
subject to border conditions such as $x(0) = a$, $x(T) = b$.
We call such an $x$ minimal with respect to $L$ or **$L$-minimal**.

A **principle** is something that has been observed for ages and is taken for granted without further proof. 
A famous example is the fact that the speed of light is the same for all observers.
We are going to state the principle of least action, which is perhaps the most fundamental of all.
It governs all movements, from leaves whirling in the wind to rockets flying to Mars. Here it is:

````{prf:definition} Principle of Least Action
:label: def-least-action
For every problem in physics, from free fall to magnetic fields, there is a Lagrangian
such that L-minimal itineraries describe exactly what happens in reality.
````

````{prf:theorem} Euler-Lagrange
:label: def-euler-lagrange


Let $L$ be a Lagrangian, and $x$ be L-minimal. Then $x$ solves the **Euler-Lagrange equation**

```{math}
:label: euler-lagrange
\partial_t \, \partial_\dot{x} L = \partial_x L
```
The converse is not true.
The Euler-Lagrange equation is also known as the **equation of motion** of classical mechanics.
````
The theorem of Euler-Lagrange is a sophisticated variant of the fact that the derivative of a function vanishes at its extrema,
see {prf:ref}`thr-mean-value-differentiation`.

````{prf:proof}

todo

````


The link between the Lagrangian and observed reality is established by the following definition:

````{prf:definition} Force and Momentum
:label: def-least-action
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
````
If you have an idea of force and momentum, you get the Lagrangian by integration. 
If you have an idea of the Lagrangian, you get force and momentum by differentiation, 
and can compare these with your measurements. The good news is that today, 
Lagrangians are well-known, they are only a dozen or so, and many of them follow simple patterns.
We can just use them and get quickly to our results.
If, for whatever reason, you need a hitherto unknown Lagrangian, follow Susskinds advice: 
guess it, buy it, or steal it! (see {cite}`susskind2014classical`, p. 999). 

This world of volumeless particles, trajectories, and Lagrangians is a purely mathematical realm
that I call **Newton's world**. Let me emphasize the fact that no one has ever seen volumenless particles,
and that the idea of one time dimension plus three space dimensions extending to infinity 
contradicts the theory of relativity. Newton's world is a **model** of ours, extremely useful, but inaccurate and counterintuitive.
It abstracts away what is unimportant (the volume of particles) 
and idealizes to keep things simple (straight lines extending to infinity
rather than curved space). The results of Newtonian mechanics are perfectly accurate in Newton's world, 
but only approximate in ours as long as particles move much more slowly than light. When particles move fast,
Newtonian mechanics becomes vastly wrong.

The concept of Lagrangians is strange. You can choose any Lagrangian, plug it into Euler-Lagrange, 
and develop your own physics from here.
Unfortunately, it is unlikely to have a counterpart in the real world, so nobody will be interested.
But if you do have a counterpart, and observed particles follow your equations of motion with reasonable accuracy,
then your Lagrangian is likely to be the good one. Some years or decades later, your equations will be endorsed
by the community of physicists. But there will never be a proof in any mathematical sense.

Here is our roadmap: We are going to present some key Lagrangians that cover systems ranging from free fall to magnetic fields.
Each time, we will employ the same procedure: We plug the Lagrangian into the Euler-Lagrange equation, 
solve it, and interpret the result.




### Hamilton, Conservation of Energy

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

### General Case

```{list-table} General Case
:header-rows: 1
:name: tab-general-case
:widths: 25 50 25

* - Property
  - Expression
  - Comment
* - Lagrangian
  - $L(x, \dot{x})$
  - a differentiable function 
* - Force
  - $F = \partial_x L $
  - 
* - Momentum
  - $p = \partial_{\dot{x}} L$
  - $\dot{p} = \partial_t \partial_{\dot{x}} L$
* - Euler-Lagrange
  - $\partial_t \partial_{\dot{x}} L = \partial_x L$
  - $\dot{p} = F$
* - Energy
  - $H(x, p) = \dot{x}(p) p - L(x, \dot{x}(p)) $
  - $L(x, \dot{x}) = \dot{x} p(\dot{x})  - H(x, p(\dot{x}))$
```


### T, V

```{list-table} T, V
:header-rows: 1
:name: tab-t-v
:widths: 25 50 25

* - Property
  - Expression
  - Comment
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
  - $\dot{p} = F$
* - Energy
  - $H(x, p) = T(\dot{x}(p)) + V(x) $
  - $L(x, \dot{x}) =  H(x, p(\dot{x})$
```


### Standard Lagrangian

```{list-table} Standard Lagrangian
:header-rows: 1
:name: tab-standard-lagrangian
:widths: 25 50 25

* - Property
  - Expression
  - Comment
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
  - $\dot{p} = F$
* - Energy
  - $H(x, p) = \frac{p^2}{2m} + V(x)$
  - $= \frac{1}{2}m\dot{x}^2 + V(x)$  
```

### Constant Motion

```{list-table} Constant Motion
:header-rows: 1
:name: tab-constant-motion
:widths: 25 50 25

* - Property
  - Expression
  - Comment
* - Lagrangian
  - $L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2$
  - potential = 0
* - Force
  - $0$
  -
* - Momentum
  - $p = m \dot{x}$
  - $\dot{p} = m \ddot{x}$
* - Euler-Lagrange
  - $\ddot{x} = 0$
  -
* - Solution
  - $x(t) = vt$
  - $v = \text{const}$
* - Energy
  - $H(x, p) = \frac{p^2}{2m}$
  - $= \frac{1}{2}m\dot{x}^2$
```

### Constant Acceleration

```{list-table} Constant Acceleration
:header-rows: 1
:name: tab-constant-motion
:widths: 25 50 25

* - Property
  - Expression
  - Comment
* - Lagrangian
  - $L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2 - amx$
  - $a$ = acceleration
* - Force
  - $-am$
  -
* - Momentum
  - $p = m \dot{x}$
  - $\dot{p} = m \ddot{x}$
* - Euler-Lagrange
  - $\ddot{x} = -a$
  -
* - Solution
  - $x(t) = \frac{1}{2} a \, t^2$
  - $\dot{p} = F$
* - Energy
  - $H(x, p) = \frac{p^2}{2m} + amx$
  - $= \frac{1}{2}m\dot{x}^2 + amx$
```


### Hooke

```{list-table} Hooke
:header-rows: 1
:name: tab-hooke
:widths: 25 50 25

* - Property
  - Expression
  - Comment
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
  - $x(t) = a \sin \omega t + b \cos \omega t$
  - $a = x(\frac{\pi}{2}), b = x(0)$
* - Energy
  - $H(x, p) = \frac{p^2}{2m} + \frac{k}{2}mx^2$
  - $= \frac{1}{2}m\dot{x}^2 + \frac{k}{2}mx^2$ 
```

### Catenary


### Magnetic Field

```{list-table} Magnetic Field
:header-rows: 1
:name: tab-hooke
:widths: 25 50 25

* - Property
  - Expression
  - Comment
* - Lagrangian
  - $L(x, \dot{x}) = \frac{1}{2}m\dot{x}^2 + qA(x)\dot{x}$
  - $B = \partial \times A$
* - Force
  - $F = q \partial_x A \dot{x} $
  -
* - Momentum
  - $p = m \dot{x} + qA(x)$
  - $\dot{p} = m \ddot{x} + q \partial_x A \dot{x}$
* - Euler-Lagrange
  - $\ddot{x} = \frac{q}{m}(\ddot{x} \times B)$
  - $= \frac{q}{m} ((\partial_x A)^T - \partial_x A) \dot{x}$
* - Energy
  - $H(x, p) = \frac{1}{2m} (p- qA)^2$
  - $= \frac{1}{2}m\dot{x}^2$ 
```


## Conservation of Momentum

```{math}
\sum_{k=1}^n \dot {p_k} = \sum_{k=1}^n F_k
```






## Conservation of Information, Gibbs-Liouville

```{math}
\nabla \cdot 
\begin{bmatrix}
\dot{x} \\
\dot{p}
\end{bmatrix} = 0
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
