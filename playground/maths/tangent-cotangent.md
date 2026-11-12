## Tangent and Cotangent Spaces

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
