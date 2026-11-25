# Differentials


### The Simple Case

Let $C$ be a smooth curve in $\mathbb{R}^n$. In the simplest case, $C$ is parameterized by a global parameter function $x$:


```{math}
x: \left\{
       \begin{array}{lr}
          [a, b] \to C \\
          t \mapsto x(t)
       \end{array}
   \right .
```

The tangent vector $\boldsymbol{t}_p$ on a point $p = x(t) \in C$ is given by

```{math}
\boldsymbol{t}_p = \frac{x(t)}{\| \dot{x}(t) \|}
```
provided that

```{math}
\| \dot{x}(t) \| \neq 0 \quad \text{on} \; [a, b]
```

which implies that the mapping $x^{-1}$ is defined on $C$: For each $p \in C$ there is exactly one $t \in [a, b]$
such that $x(t) = p$. The value $\| \dot{x}(t) \|$ is the velocity at which the point $p = x(t)$ moves along $C$ as
$t$ moves uniformly from $a$ to $b$. The condition states that $x(t)$ never stops, meaning it cannot change direction.
The **tangent space** of $C$ at $p = x(t)$ is defined by

```{math}
T_p C = \text{span}\{\boldsymbol{t}_p\}
```

The **cotangent space** $T^*_p C$ is the dual of the tangent space. 
It looks similar:

```{math}
T^*_p C = \text{span}\{\boldsymbol{t}^*_p\}
```
where, for $v, w \in T_p C$, we define $v^*$ through

```{math}
v^*(w) &= v \cdot w       \\
v^*(v) &= v^2
```

and, in particular

```{math}
\boldsymbol{t}^*_p(\boldsymbol{t}_p) = \boldsymbol{t}^2_p = 1
```

So, every **covector** $\omega \in T^*_p C$ has the form 

```{math}
\omega = \lambda \, \boldsymbol{t}^*_p \quad (\sigma \in \mathbb{R})
```

It is useful to remember that a covector is a mapping 

```{math}
\omega_p:
   \left\{
       \begin{array}{lr}
          T_p C \to \mathbb{R} \\
          v \mapsto \omega_p(v)
       \end{array}
   \right .
```

Every vector $u \in \mathbb{R}^n$ defines a covector $u^*$ through

```{math}
u^*(v) &= u \cdot v \quad (v \in T_p C)  \\
       &= \lambda_u \, \boldsymbol{t}^*_p(v)
```
Two vectors $u_1, u_2$ define (or represent) the same covector iff $u_1 - u_2 \perp T_p C$.

An important covector is the **differential**. The differential $df_p$ of a smooth function $f: C \to \mathbb{R}$
at $p$ is a covector defined by

```{math}
df_p(\boldsymbol{t}_p) &= \frac{d}{dt}f(x(t))|_{t=t_0}    \\
                       &= \frac{d}{dt}f(x(t))|_{t=t_0} \, \boldsymbol{t}^*_p (\boldsymbol{t}_p)
```
which can be written as

```{math}
df_p = \lambda_f \, \boldsymbol{t}^*_p  \quad \text{(a covector)}
```
with
```{math}
\lambda_f = \frac{d}{dt}f(x(t))|_{t=t_0}  \quad \text{(a scalar)}
```
If $f$ is defined and smooth on an open set $U \supset C$ then the gradient $\partial f$ exists on $U$ then we can apply the chain rule and get with $p = x(t_0), v = \dot{x}(t_0)$

```{math}
df_p(v) &= \frac{d}{dt}f(x(t))|_{t=t_0} \\
        &= \partial f(x(t_0)) \cdot \dot{x}(t_0) \\
        &= \partial f(p) \cdot v
```

To put it loosely, the differential is just the gradient $\partial f(p)$; however, the point is that we only need $f$ on $C$ and can do without a gradient.



### The Kinematic Approach

The kinematic approach makes do with a local parametrization rather than a global one.

````{prf:definition} Local Parametrization
:label: def-local-parametrization

**i)** A **local parametrization** of $C$ in $p$ is a smooth function 
$\gamma: (-\epsilon, \epsilon) \to C$ with $\gamma(0) = p$, $\dot{\gamma(t)} \neq 0$, where $\epsilon$ is arbitrarily small.

**ii)** It is called **regular** if it is a diffeomorphism 
from $(-\epsilon, \epsilon )$ to an open environment of $p$.
````

````{prf:theorem}
:label: thr-tangent

Let $C$ be a smooth curve and $x$ a local regular parametrizations of $C$ at $p \in C$. 
Then for any two local parametrizations $\gamma$, $\sigma$ it holds that, for some  $\lambda \in \mathbb{R}$

```{math}
\dot{\gamma}(0) = \lambda \, \dot{\sigma}(0)
```
````

````{prf:proof}
Let 

Since $x$ is a diffeomorphism, we can define a function $\phi$ as

```{math}
\phi:
   \left\{
       \begin{array}{lr}
          (-\epsilon, \epsilon ) \to (-\epsilon, \epsilon ) \\
          t \mapsto x^{-1}(\gamma(t))
       \end{array}
   \right .
```
So
```{math}
\phi(0) &= x^{-1}(\gamma(0)) = 0 \\
\gamma(t) &= x(\phi(t))
```
The chain rule gives
```{math}
\dot{\gamma}(t) = \dot{x}(\phi(t)) \dot{\phi}(t)
```
which proves the assertion.
````

We can now choose any local parameterization $\gamma$ and define, as before, 

```{math}
\boldsymbol{t}_p &= \frac{\gamma(0)}{\| \dot{\gamma}(0) \|} \\
\\
T_p C &= \text{span}\{\boldsymbol{t}_p\}  \\
\\
T^*_p C &= \text{span}\{\boldsymbol{t}^*_p\} 
```
and this definition does not depend on the choice of $\gamma$.

The definition of the differential remains the same, up to the new interpretation of $x$:
The differential $df_p$ of a smooth function $f: C \to \mathbb{R}$ at $p$ is a covector defined by

```{math}
df_p(\boldsymbol{t}_p) &= \frac{d}{dt}f(\gamma(t))|_{t=0}    \\
                       &= \frac{d}{dt}f(\gamma(t))|_{t=0} \, \boldsymbol{t}^*_p (\boldsymbol{t}_p)
```
or

```{math}
df_p = \frac{d}{dt}f(\gamma(t))|_{t=0} \, \boldsymbol{t}^*_p
```
where $\gamma$ is any local parameterization of $C$ at $p$.


### The Algebraic Approach

````{prf:definition} Germ
:label: def-germ

**(i)** Let $U, V \subseteq C$ be open neighbourhood of a point $p \in C$ and $f \to U$, $g \to V$ two smooth functions.
We say that $f \sim_p g$ iff there is a $W \subseteq U \cap V$ such that $p \in W$ and $f = g$ on $W$.

The equivalence class of $f$, denoted by $[f]_p$, is called the **germ** of $f$ in $p$. It contains all functions that coincide with $f$ is some neighbourhood of $p$.

**(ii)** 
The **algebra of germs** of smooth real-valued functions on $C$ in $p$ is denoted by $C^{\infty}_p (C )$.

**(iii)** 
A linear mapping $D : C^{\infty}_p (C ) \to \mathbb{R}$ is called a **derivation** in $p$ iff it satisfies the **Leibniz rule**. It clearly holds that $D = 0$ for constant functions.

```{math}
D(fg) = f(p)D(g) + D(f)g(p)
```
````

````{prf:lemma} Hadamard
:label: lem-hadamard

Let $f$ be a smooth function on $C$ and $p \in C$. Then $f$ can be written as

```{math}
f(x) = f(p) + (x-x(p))\, g(x)
```
where 

```{math}
g(p) = \frac{f}{x}(p)
```
````

````{prf:proof}


````

````{prf:theorem} 
:label: thr-kinematic-algebraic

The **tangent space** $T_p C$ is the set of all derivations in $p$
````

````{prf:proof}


**(i)** Any $v = \gamma'(0)$ defines a derivation through

```{math}
D_v(f) = \frac{d}{dt}f(\gamma(t))|_{t=0}
```

**(ii)**


 
````


############################
### The One-Dimensional Case

Let Q be a 1-dimensional manifold given by a smooth curve:
$x: [a, b] \to V$
where $V$ is a vector space and $x \in C^\infty([a,b], V)$.

#### Tangent Space

At each point $x(t_0) \in Q$, we define the **directional derivative operator** $\partial_t|_{t_0}$ by its action on smooth functions:

$
\partial_t|_{t_0}: C^{\infty}(Q) \to \mathbb{R}, \quad f \mapsto \frac{d}{dt}\bigg|_{t=t_0} f(x(t))
$

The **tangent space** at $x(t_0)$ is:

$
T_{x(t_0)} Q = \text{span}\{\partial_t|_{t_0}\}
$

This is a one-dimensional vector space. A general tangent vector has the form $v = \lambda \partial_t|_{t_0}$ for $\lambda \in \mathbb{R}$.

#### Cotangent Space

The **cotangent space** $T^*_{x(t_0)}Q$ is the dual space of $T_{x(t_0)}Q$. It is also one-dimensional, with basis element $dt$ defined by:

$
dt: T_{x(t_0)}Q \to \mathbb{R}, \quad \text{where } dt(\partial_t|_{t_0}) = 1
$

For a general tangent vector $v = \lambda \partial_t|_{t_0}$, we have $dt(v) = \lambda$.

#### Differential of a Function

For any smooth function $f \in C^{\infty}(Q)$, the **differential** $df$ is the covector:

$
df: T_{x(t_0)}Q \to \mathbb{R}, \quad df(v) = v(f)
$

Explicitly, for $v = \lambda \partial_t|_{t_0}$:

$
df(v) = \lambda \cdot \partial_t|_{t_0} f = \lambda \cdot \frac{d}{dt}\bigg|_{t=t_0} f(x(t))
$

In the basis $\{dt\}$, we can write: $df = (\partial_t f) \cdot dt$.

#### Tangent Bundle

The **tangent bundle** is the collection of all tangent spaces:

$
TQ = \bigcup_{x \in Q} \{x\} \times T_x Q = \{(x, v) \mid x \in Q, v \in T_x Q\}
$

Using the parameterization $x: [a,b] \to Q$, we can also write:

$
TQ = \{(x(t), v) \mid t \in [a,b], v \in T_{x(t)}Q\}
$

or more explicitly:

$
TQ = \{(x(t), \lambda \partial_t|_t) \mid t \in [a,b], \lambda \in \mathbb{R}\}
$

Note that the basis vector $\partial_t|_t$ depends on the point $x(t)$ — it represents the tangent vector at that specific point. The tangent bundle TQ is a 2-dimensional manifold.

#### Cotangent Bundle

The **cotangent bundle** is the collection of all cotangent spaces:

$
T^*Q = \bigcup_{x \in Q} \{x\} \times T^*_x Q = \{(x, p) \mid x \in Q, p \in T^*_x Q\}
$

Using the parameterization:

$
T^*Q = \{(x(t), p) \mid t \in [a,b], p \in T^*_{x(t)}Q\}
$

or more explicitly:

$
T^*Q = \{(x(t), p_1 \, dt) \mid t \in [a,b], p_1 \in \mathbb{R}\}
$

The cotangent bundle $T^*Q$ is also a 2-dimensional manifold and serves as the **phase space** for Hamiltonian mechanics.

#### Key Points

- The tangent space $T_x Q$ at each point $x$ is a vector space containing tangent vectors (velocities)
- The cotangent space $T^*_x Q$ at each point $x$ is the dual vector space containing covectors (momenta)
- The basis vectors $\partial_t|_t$ and dual basis $dt$ depend on the point via the parameter $t$
- This definition is coordinate-independent in the sense that it depends only on the manifold structure of Q, though we use the parameterization $x(t)$ to make computations explicit

#### Question

Let's summarize:

$
T_{x(t_0)} Q = \text{span}\{\partial_t|_{t_0}\} 
$

$
T^*_{x(t_0)} Q = \text{span}\{dt\}
$

$
TQ = \{(x, v) \mid x \in Q, v \in T_x Q\}
$

$
T^*Q = \{(x, p) \mid x \in Q, p \in T^*_x Q\}
$

Question 1: When you write

$
T^*Q = \{(x(t), p_1 \, dt) \mid t \in [a,b], p_1 \in \mathbb{R}\}
$

how do you express the fact that $p_1 \, dt$ depends on $t$.
We need something like $dt|t_0$ don't we?


Question 2: These are formal definitions; the terms $\partial_t|_{t_0}$ and $dt$ are just symbols satisfying

$
dt(\partial_t|_{t_0}) = 1
$

All this is independent of Euler-Lagrange. How do poisson brackets come in?

We already have

$
<p, v> = p_i v^i
$

but not yet

$
{x^i, p_j} = \delta_{ij}
$
