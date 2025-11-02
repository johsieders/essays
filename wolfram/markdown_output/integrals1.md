10.4.2025

## Riemann Integrals in $\mathbb{R^1$

### 1 Zeno{'s Paradox}

The standing arrow: An infinite sum of numbers close to zero can be positive.

### Littlewood{'s Principles}

Every measurable set is nearly a finite union of intervals
Every measurable function is nearly continuous
Every convergent sequence of measurable functions is nearly uniformly convergent

### Step Functions

Consider a closed interval $A = [a, b]\subset \mathbb{R$ . A * partition of A* is an increasing sequence $\left\{x_1, x_2, \text{..} ,x_n\right\$
with $a = x_1$,  $b = x_n$. Its granularity is $\max \left\{\left.x_k-x_{k-1}\right|k=1,\text{..},n\right\$. A * step function* is
constant on the intervals  $\left[x_{k-1}, x_k\right]$. It is clear that the sum of two step functions is again a step function and the same
is true for the product of a step function with a scalar. So the step functions on an interval form a vector space $\mathcal{S}[a, b]$ . The integral
of a step function $\phi$ on [a, b] is defined as 

$$
\int_a^b \phi [x] \, dx= \sum _{k=1}^n \phi _k\text{                         }\text{with} \phi [x]= \phi _k \text{on} \left[x_{k-1},x_k\right]
$$

The integration functional

$$
\int :\phi  â \int_a^b \phi [x] \, dx
$$

is a linear mapping from $\mathcal{S}[a, b]$ to $\mathbb{R$. It is also monotone:

$$
\phi  â¤ \psi  \Rightarrow  \int_a^b \phi [x] \, dx â¤ \int _a^b\psi [x]dx\text{     }\text{for} \text{any} \text{two} \text{step}
\text{functions} \phi ,\psi
$$

### Integrable Functions

We extend the integration functional to a larger class of functions. The idea is that of a sandwich: A function $f$ defined on $[a,b]$is squeezed
between two step functions $\phi $,$\psi $ such that: 

$$
\phi â¤fâ¤\psi 

\int _a^b\psi [x]-\phi [x]dx < \epsilon
$$

If we can find such step functions for any $\epsilon >0$  then we say that $f$ is * Riemann-integrable* or * R-integrable* for
short. This equivalent to:

$$
\sup _{\phi â¤f}\int_a^b \phi [x] \, dx=\inf _{\psi â¥f}\int_a^b \phi [x] \, dx
$$

and we can define:

$$
\int_a^b f[x] \, dx\text{:=}\sup _{\phi â¤f}\int _a^b\phi [x]dx \left(\text{or} =\inf _{\psi â¥f}\int_a^b \phi [x] \, dx\right)
$$

Equation (1) is a concise reformulation of equation (2), there is nothing to prove. An alternative definition of Riemann integrability is based on
intermediate sums.This needs some terminology: we call $\left\{x_1, x_2, \text{..} ,x_n\right\$ a partition of $[a,b]$, $\min _{k =1,\text{..},n}\text{
 }\left\{x_k-x_{k-1}\right\$ its granularity, and $\left\{\xi _1, \xi _2, \text{..} ,\xi _n\right\$ a set of intermediate points with $\left.\xi
_k\in \left[x_{k-1},x_k\right.\right)(k=1,\text{..},n)$. Here is the definition: A function $f$ is R-integrable on $[a,b]$ iff, for any $\epsilon
>0$, we can find a $\delta  >0$, such that for any partition with granularity less than $\delta $ and any set $\xi$ of intermediate points,
we have

$$
\left|\int_a^b f[x] \, dx - \sum _{k=1}^n f\left[\xi _k\right]\right|<\epsilon
$$

This definition is needed for the proof of the main theorem. 

### Properties of Riemann Integrals

(R1) The set $\mathcal{R$[a, b] of R-integrable functions is a vector space. The integration functional

$$
\int :f â \int_a^b f[x] \, dx
$$

is a linear mapping from $\mathcal{R$[a, b] to $\mathbb{R$. It is also monotone:

$$
f â¤ g \Rightarrow  \int_a^b f[x] \, dx â¤ \int _a^bg[x]dx\text{     }\text{for} \text{any} \text{two} \text{functions} f,g\in
\mathcal{R}[a,b]
$$

(R2) There are many R-integrable functions: step functions (by definition), continuous functions (also with finitely many discontinuities), monotone
functions, the maximum, minimum, and product of R-integrable functions. A famous non-integrable function is the * Dirichlet function*, which
is $1$ for rational numbers and $0$ otherwise.

(R3) $\mathcal{R$[a, b] is closed under the maximum norm, i.e. the uniform limit of R-integrable functions is R-integrable, and we can swap limit
and integral:

$$
lim_{n\text{-$>$\infty }\int_a^b f_n[x] \, dx=\int _a^blim_{n\text{-$>$\infty }f_n[x]\text{     }(\text{assuming} \text{uniform}
\text{convergence})
$$

### The Main Theorem of Integration

Integration and differentiation are inverse operations, but the devil is in the detail. The thing to remember is this: (A) The integral over the
derivative of $F$ gives $F$, but: (B) The derivative of the integral over $f$ gives $f$ almost everywhere. This is formally stated in two
theorems:
(A) Let F be differentiable on [a,b], and let the derivative $F'$ be R-integrable (no other assumptions on $F$ or $F'$), Then it holds that:

$$
F[b]-F[a]=\int_a^b F'[y] \, dy
$$

Note that we must require $F'$ to be integrable. If $F$is differentiable, $F'$ can be very well be not integrable.
(B) Let $f$ be integrable on $[a, b]$ and F[x] = $\int_a^x f[y] \, dy$ be differentiable. Then, for any interval [r,s] $\subset $ [a,b]:

$$
\int _r^s(f[y]-F'[y]) dy = 0
$$

This is a formal way of saying that $f$and $F'$ are equal almost everywhere, and it is all we can expect: The function

$$
f[x] = \begin{cases}
 1 \text{if} x =0\text{     } 
 0 \text{otherwise}
\end{cases}
$$

is clearly integrable, but the derivative of its integral is zero everywhere. The single discontinuity (in this case in $x=0$), or a finite number
of them just vanish $--$ integration destroys information. Note also that if $f$is integrable, $F[x]=\int _a^xf[y]dy$ does not need to be differentiable
(think of $f$as a step function).

### Proofs

The properties (R1), (R2) and (R3) follow easily from (3), (R5) follows easily from (R4), and the proof of (R4) is the sting of this chapter. Let's
do it in this order.
(R1) We show that f+g is integrable if f and g are. The proof follows a very simple pattern that often works: If f and g are integrable, the there
are step functions $\phi $, $\psi $, $\rho $, and $\sigma $ such that $\phi â¤fâ¤\psi$and $\rho â¤gâ¤\sigma$.
So

$$
\phi  + \rho â¤f+gâ¤\psi  + \sigma
$$

and

$$
\int _a^b\psi [x]-\phi [x]dx < \epsilon  \text{and} \int _a^b\rho [x]-\sigma [x]dx < \epsilon
$$

Using the additivity of the integral for step functions, we get:

$$
\int _a^b(\psi [x]+\rho [x])-(\phi [x]+\sigma [x])dx < 2\epsilon
$$

Inequalities (4) and (5) show that $f+g$ is integrable. The proof for the integrability of $\text{$\lambda $f$ for $\lambda \in \mathbb{R$
is analogous. 

(R2) We show that a function continuous on $[a, b]$ is integrable. 
Intervals in $\mathbb{R$, rectangles in $\mathbb{R}^2$, cubes in $\mathbb{R}^3$ and $\mathbb{R}^k$. The measure (or volume)
$m[C]$ of a cube $C$ with edge length $\left[x_1, x_2, \text{..},x_k\right]$ is:

$$
m[C] \text{:=} x_1 x_2 \text{..}x_k
$$

The characteristic function $X_A$of a set $A$ is $1$ on $A$ and $0$ everywhere else.
Step functions take on finitely many values, are constant on cubes (of any size). Let $\psi $ be a step function defined on disjoint cubes $C_i$
with $\psi $[x] = $\psi _{i $ on $C_{i $$(i=1,\text{..}N)$. The integral of $\psi $ is defined as:

$$
\int _{\mathbb{R}^k}\psi [x]dx \text{:=} \sum _{i=1}^N \psi _im\left[C_i\right]
$$

For stepwise functions $\psi $ and $\phi $, and from( $\alpha $, $\beta $ $\in $ $\mathbb{R$ it is clear that:

$$
\int _{\mathbb{R}^k}(\alpha \phi [x]+ \beta \psi [x])dx = \alpha \int _{\mathbb{R}^k}\phi [x]dx+\beta \int _{\mathbb{R}^k}\psi [x]dx
$$

For some functions f it turns out that: 

$$
\sup _{\psi â¤f}\int _{\mathbb{R}^k}\psi [x]dx = \inf _{\psi â¥f}\int _{\mathbb{R}^k}\psi [x]dx
$$

If this is true, $f$ is said to be Riemann-integrable (or integrable for short), and we define

$$
\int _{\mathbb{R}^k}f[x]dx \text{:=} \sup _{\psi â¤f}\int _{\mathbb{R}^k}\psi [x]dx = \inf _{\psi â¥f}\int _{\mathbb{R}^k}\psi
[x]dx
$$

All step functions are obviously integrable, and so are continuous functions with compact support (proof!). A famous non-integrable function is the
function $r$ defined on the interval $[0, 1]$ with $r[x] = 1$ if $x \in \mathbb{Q$ and $0$ otherwise. 

Let $\left(\psi _n\right)_{n\in \mathbb{N$ be a sequence of step functions converging uniformly towards some function f:

$$
\underset{n\to \infty }{lim}\psi _n = f\text{  }\text{(uniformly)}
$$

Then f is integrable and it holds that

$$
\underset{n\to \infty }{lim}\int _{\mathbb{R}^k}\psi _n[x]dx=\int _{\mathbb{R}^k}f[x]dx
$$

This can be seen as follows:

to do!

Now, let $f$ and $g$ be integrable and $\alpha $, $\beta $ $\in $ $\mathbb{R$. Then $\text{$\alpha $f} + \text{$\beta $g$ are integrable,
and it holds that

$$
\int _{\mathbb{R}^n}\text{$\alpha $f}[x]+ \text{$\beta $g}[x]dx = \alpha \int _{\mathbb{R}^n}f[x]dx+\beta \int _{\mathbb{R}^n}g[x]dx
$$

### Measurable Sets

A set $A$ is said to be measurable if its characteristic function is, and it is clear that the measure $m[A]$ is:

$$
m[A]\text{:=}\int _{\mathbb{R}^n}X_A[x]dx
$$

We define the integral of a function $f$ over a set $A$ as:

$$
\int _Af[x]dx \text{:=} \int _{\mathbb{R}^n}\chi _A[x]f[x]dx
$$

if the function $\chi _{A }f$ is Riemann-integrable. 

### Intermediate Value Theorem

Let f$: [a, b]\to \mathbb{R$ be a continuous function, and $\mu \in \mathbb{R$ such that  

$$
\quad \min  \{f [x]|x \in [a,b]\}\leq \mu  \leq \max  \{f [x]|x \in [a,b]\}
$$

Then there exists a $\xi \in [a, b]$such that $f[\xi ]=\mu$.
Proof by halving intervals.

### Mean Value Theorem

Let f$,\phi : [a, b]\to \mathbb{R$ be continuous functions with $\phi \geq $0.

Then there exists a $\xi \in [a, b]$such that $f[\xi ]=\mu$.

$$
\quad \int _a^bf[x]\phi [x]dx= f[\xi ]\int _a^b\phi [x]dx\text{                    }
$$

With $\phi $=1 we get:

$$
\quad \int_a^b f[x] \, dx= f[\xi ](b-a)\text{                }
$$

$$
\text{Proof}:\quad m\leq f[x] \leq M

\quad \text{m$\phi $[x]\leq f[x]\phi [x] \leq \text{M$\phi $[x]\text{       }\text{for} x \in [a,b]

\quad m\int_a^b \phi [x] \, dx\leq \int _a^bf[x]\phi [x]dx\leq  M\int_a^b \phi [x] \, dx\text{       }

\quad \int _a^bf[x]\phi [x]dx=\mu \int_a^b \phi [x] \, dx

\quad \exists \mu \in [a,b]:f[\xi ]=\mu
$$

### Theorem (Taylor 1)

Let $f \in  C^{n+1}(A), x,u\in A$. Then

$$
\quad f[u]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+\frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}[t]dt\text{                  }
$$

$$
\text{Proof} \text{by} \text{induction},\text{using} \text{the} \text{main} \text{theorem} \text{of} \text{integration}:\quad f[u]-f[x]=\int_x^u
f'[t] \, dt=-\int _x^u\frac{d(u-t)}{dt}f'[t]dt 

\text{                                }=(u-x)f'[x]+\int _x^u(u-t)f'[t]dt\text{=.}\text{..}

\text{                                 }=\sum _{k=1}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+\frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}[t]dt\text{  }
$$

### Theorem (Taylor 2)

Let $f \in  C^{n+1}(A), x,u\in A$. Then there exists a $\xi \in [x,u]$ such that:

$$
\quad f[u]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+\frac{f^{(n+1)}[\xi ]}{(n+1)!}(u-x)^{n+1}\text{               }
$$

which is the same as $(h = u-x)$:

$$
\quad f[x+h]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}h^k+\frac{f^{(n+1)}[\xi ]}{(n+1)!}h^{n+1}\text{               }
$$

$$
\text{Proof}:\text{Using} \text{the} \text{mean} \text{value} \text{theorem}, \text{there} \text{is} a \text{$\xi \in $[x,u]}\text{such} \text{that}

\quad \frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}[t]dt= \frac{f^{(n+1)}[\xi ]}{n!}\int_x^u (u-t)^n \, dt=\frac{f^{(n+1)}[\xi ]}{(n+1)!}(u-x)^{n+1}
$$

### Theorem (Taylor 3)

Let $f \in  C^{n+1}(A), x,u\in A$. Then

$$
\quad f[u]=\sum _{k=0}^n \frac{f^{(k)}[a]}{k!}(x-a)^k+o[| x-a| ]^n\text{              }
$$

which is the same as $(h = u-x)$:

$$
\quad f[x+h]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}h^k+o\left[| h| ^n\right]\text{               }
$$

$$
\text{Proof}:\quad f[u]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+\frac{f^{(n)}[\xi ]-f^{(n)}[x]}{n!}\text{  }(u-x)^n

\quad
$$

### Little o, Big O

Little o means: f tends to 0 faster than g, or f/g tends to zero:

$$
\quad f=o[g]\text{        }\Longleftrightarrow \text{    }lim\frac{f[x]}{g[x]}=0\quad f=o[1]\text{        }\Longleftrightarrow
\text{    }lim\text{$$f}[x]=0\quad f=o\left[x^n\right]\text{      }\Longleftrightarrow \text{    }lim\frac{f[x]}{x^n}=0
$$

Big O means: f grows not faster than g:

$$
\quad f=O[g]\text{        }\Longleftrightarrow \text{    }\frac{f[x]}{g[x]}â¤ C\quad f=O[1]\text{        }\Longleftrightarrow \text{ 
  }f[x]â¤ C\quad f=O\left[x^n\right]\text{      }\Longleftrightarrow \text{    }f[x]â¤C x^n
$$

