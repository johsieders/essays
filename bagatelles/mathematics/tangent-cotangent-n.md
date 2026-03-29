## Tangent and Cotangent Spaces

[Forster III, p. 128]: #



````{prf:definition} Manifolds via Constraints
:label: def-manifolds-constraints

Let $Q \subseteq \mathbb{R}^n$. $Q$ is called a **k-dimensional manifold** iff,
there is an open set $U \subseteq \mathbb{R}^n$ and a function $F \in C^\infty(U, \mathbb{R}^{n-k})$ such that:

```{math}
:label: equ-manifolds-1

Q = \{x \in U \mid F(x) = 0\}
```

with

```{math}
:label: equ-manifolds-2
\text{rank } \partial F(x) = n - k
```

The matrix $\partial F(x)$ is the Jacobi matrix of $F$ at $x$:
```{math}
\partial F(x)    = \begin{bmatrix}
         \partial F_1(x) \\
         \vdots \\
         \partial F_{n-k}(x)
    \end{bmatrix}
```
and condition {eq}`equ-manifolds-2` requires that the $n-k$ gradients of $F$ be linearily independent on $Q$.
The idea is that the constraint {eq}`equ-manifolds-1` removes $n-k$ degrees of freedom, leaving $k$ over. 
````

Definition {prf:definition}`def-manifolds-curves` is a simplified version of the general definition
which allows for different constraint functions $F$ depending on the position $x$.

````{prf:remark} Manifolds via Curves, Generalized
:label: rem-manifolds-curves-generalized

Let $Q \subseteq \mathbb{R}^n$. $Q$ is called a **k-dimensional manifold** iff,
for all $x \in Q$, there is an open environment $U(x)$ of $x$ such that the following holds:

```{math}
:label: equ-manifolds-1
\exists F \in C^\infty(U(x)), \mathbb{R}^{n-k}): 
Q \cap U_(x) = \{x \in U_\epsilon(x) \mid F(x) = 0\}
```
with

```{math}
:label: equ-manifolds-2
\text{rank } \partial F(x) = n - k
```

````

````{prf:definition} Manifolds via Curves
:label: def-manifolds-curves

Let $Q \subseteq \mathbb{R}^n$. $Q$ is called a **k-dimensional manifold** iff,
there is an open set $U \subseteq \mathbb{R}^n$ and a $F \in C^\infty(U, \mathbb{R}^{n-k})$ such that:

```{math}
:label: equ-manifolds-1

Q = \{x \in U \mid F(x) = 0\}
```

with

```{math}
:label: equ-manifolds-2
\text{rank } \partial F(x) = n - k
```

The matrix $\partial F(x)$ is the Jacobi matrix of $F$ at $x$:
```{math}
\partial F(x)    = \begin{bmatrix}
         \partial F_1(x) \\
         \vdots \\
         \partial F_{n-k}(x)
    \end{bmatrix}
```
and condition {eq}`equ-manifolds-2` requires that the $n-k$ gradients of $F$ be linearily independent on $Q$.
The idea is that $F$ removes $n-k$ degrees of freedom, leaving $k$ over. 
````

Definition {prf:definition}`def-manifolds-curves` is a simplified version of the general definition given below 
which allows for different constraints $F$ depending on the position $x$.


````{prf:definition} Tangent Vectors, Tangent Space
:label: def-tangent-vectors

Let $Q$ be a k-dimensional manifold in $\mathbb{R}^n$. 

**(a)**
A vector $v \in \mathbb{R}^n$ is called a tangent vector of $Q$ at $x \in Q$ iff
there is a function $\psi \in C^\infty(I_0, Q)$ such that:

```{math}
&\psi(0) = x \\
&\psi'(0) = 0
```
wher $I_0$ is an open intervall containing $0$.

**(b)**
The tangent space of $Q$ at $x$, called $T_xQ$, is the set of all tangent vectors of $Q$ at $x$.
````

````{prf:definition} Parameterized Manifolds
:label: def-parametreized-manifolds

Let $Q$ be a k-dimensional manifold in $\mathbb{R}^n$, $U \subset \mathbb{R}^k$ and $\phi \in C^\infty(U, \mathbb{R}^n)$.
$\phi$ is called a parameterization of $Q$, iff 

```{math}
\phi(U) = Q
```
and

```{math}
\text{rank } \partial \phi(u) = k
```
for all $u \in U$.
````



````{prf:theorem} Tangent Space
:label: thr-tangent-space

Let $Q$ be a k-dimensional manifold in $\mathbb{R}^n$. We define:

```{math}
T_1 = span

```


````

Let Q be an n-dimensional manifold with a smooth parameterization: $\phi: U \to V$
where $U \subseteq \mathbb{R}^n$ is an open set, $V$ is a vector space, and $\phi \in C^\infty(U, V)$.

#### Tangent Space

At each point $\phi(u_0) \in Q$ where $u_0 = (u^1_0, \ldots, u^n_0) \in U$, we define the **directional derivative operators** $\partial_{u^i}|_{u_0}$ for $i = 1, \ldots, n$ by their action on smooth functions:

$
\partial_{u^i}|_{u_0}: C^{\infty}(Q) \to \mathbb{R}, \quad f \mapsto \frac{\partial}{\partial u^i}\bigg|_{u=u_0} f(\phi(u))
$

The **tangent space** at $\phi(u_0)$ is:

$
T_{\phi(u_0)} Q = \text{span}\{\partial_{u^1}|_{u_0}, \ldots, \partial_{u^n}|_{u_0}\}
$

This is an n-dimensional vector space. A general tangent vector has the form $v = \sum_{i=1}^n v^i \partial_{u^i}|_{u_0}$ for $v^i \in \mathbb{R}$.

#### Cotangent Space

The **cotangent space** $T^*_{\phi(u_0)}Q$ is the dual space of $T_{\phi(u_0)}Q$. It is also n-dimensional, 
with basis elements $du^i|_{u_0}$ for $i = 1, \ldots, n$ defined by:

$
du^i|_{u_0}: T_{\phi(u_0)}Q \to \mathbb{R}, \quad \text{where } du^i|_{u_0}(\partial_{u^j}|_{u_0}) = \delta^i_j
$

For a general tangent vector $v = \sum_{j=1}^n v^j \partial_{u^j}|_{u_0}$, we have $du^i|_{u_0}(v) = v^i$.

#### Differential of a Function

For any smooth function $f \in C^{\infty}(Q)$, the **differential** $df$ is the covector:

$
df: T_{\phi(u_0)}Q \to \mathbb{R}, \quad df(v) = v(f)
$

Explicitly, for $v = \sum_{i=1}^n v^i \partial_{u^i}|_{u_0}$:

$
df(v) = \sum_{i=1}^n v^i \cdot \partial_{u^i}|_{u_0} f = \sum_{i=1}^n v^i \cdot \frac{\partial}{\partial u^i}\bigg|_{u=u_0} f(\phi(u))
$

and, for $f = u^j$:

$
du^j(v) = \sum_{i=1}^n v^i \cdot \partial_{u^i}|_{u_0} u^j = v^j
$

In the basis $\{du^1, \ldots, du^n\}$, we can write: $df = \sum_{i=1}^n (\partial_{u^i} f) \cdot du^i$.

#### Tangent Bundle

The **tangent bundle** is the collection of all tangent spaces:

$
TQ = \bigcup_{x \in Q} \{x\} \times T_x Q = \{(x, v) \mid x \in Q, v \in T_x Q\}
$

Using the parameterization $\phi: U \to Q$, we can also write:

$
TQ = \{(\phi(u), v) \mid u \in U, v \in T_{\phi(u)}Q\}
$

or more explicitly:

$
TQ = \left\{\left(\phi(u), \sum_{i=1}^n v^i \partial_{u^i}|_u\right) \mid u \in U, v^i \in \mathbb{R}\right\}
$

Note that the basis vectors $\partial_{u^i}|_u$ depend on the point $\phi(u)$ — they represent the tangent vectors at that specific point. The tangent bundle TQ is a 2n-dimensional manifold.

#### Cotangent Bundle

The **cotangent bundle** is the collection of all cotangent spaces:

$
T^*Q = \bigcup_{x \in Q} \{x\} \times T^*_x Q = \{(x, p) \mid x \in Q, p \in T^*_x Q\}
$

Using the parameterization:

$
T^*Q = \{(\phi(u), p) \mid u \in U, p \in T^*_{\phi(u)}Q\}
$

or more explicitly:

$
T^*Q = \left\{\left(\phi(u), \sum_{i=1}^n p_i \, du^i\right) \mid u \in U, p_i \in \mathbb{R}\right\}
$

The cotangent bundle $T^*Q$ is also a 2n-dimensional manifold and serves as the **phase space** for Hamiltonian mechanics.

#### Key Points

- The tangent space $T_x Q$ at each point $x$ is an n-dimensional vector space containing tangent vectors (velocities)
- The cotangent space $T^*_x Q$ at each point $x$ is the dual n-dimensional vector space containing covectors (momenta)
- The basis vectors $\partial_{u^i}|_u$ and dual basis $du^i|_u$ depend on the point via the parameters $u = (u^1, \ldots, u^n)$
- This definition is coordinate-independent in the sense that it depends only on the manifold structure of Q, though we use the parameterization $\phi(u)$ to make computations explicit
