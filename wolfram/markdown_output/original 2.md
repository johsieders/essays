\title{Mathematics4Physics}
\author{}
\date{}
\maketitle

14.04.2025

## Integration on $\mathbb{R^1$

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

## Differentiation on $\mathbb{R^1$

### Definition of First Derivative

Let f$:\mathbb{R}\text{-$>$ \mathbb{R$

$$
f\unicode{0008}'[x]=lim_{h\to 0}\frac{1}{h}(f[x+h]-f[x])=\frac{d}{d\epsilon }f[x+\text{$\epsilon $h}]|_{\epsilon =0}
$$

So:

$$
f[x+h]=f[x]+ f'[x]h+o[h]
$$

and the term $f'[x]h$ is a linear approximation of $f$ at $x$. 

### Chain Rule

We note that:

$$
\text{todo}
$$

### Product Rule

We note that:

$$
\text{todo}
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

### Theorem (Substitution in $R^1$)

### Legendre Substitution in $R^1$

### Theorem (Taylor in $R^1$)

Derivatives are about local changes: how does a function $f$behave in a neighbourhood of some point $x$. The Taylor series allows us to express
$f[x+h]$ in terms of its higher derivatives of $f$ with arbitrary precision. It comes in three varieties that differ in the remainder term. In
what follows, $A$ is an open interval, and$x,u\in A$.

#### Taylor V1

Let $f \in  C^{n+1}(A)$. Then:

$$
f[u]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+\frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}[t]dt\text{                  }
$$

#### Taylor V2

Let $f \in  C^{n+1}(A)$. Then there exists a $\xi \in [x,u]$ such that:

$$
f[u]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+\frac{f^{(n+1)}[\xi ]}{(n+1)!}(u-x)^{n+1}\text{               }
$$

which is the same as $(h = u-x)$:

$$
f[x+h]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}h^k+\frac{f^{(n+1)}[\xi ]}{(n+1)!}h^{n+1}\text{               }
$$

#### Taylor V3

Let $f \in  C^n(A)$. Then:

$$
f[u]=\sum _{k=0}^n \frac{f^{(k)}[a]}{k!}(x-a)^k+o[| x-a| ]^n\text{              }
$$

which is the same as $(h = u-x)$:

$$
f[x+h]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}h^k+o\left[| h| ^n\right]\text{               }
$$

#### Proofs 

$$
\pmb{\text{V1}}\pmb{:} \text{Proof} \text{by} \text{induction},\text{using} \text{the} \text{main} \text{theorem} \text{of} \text{integration}:f[u]-f[x]=\int_x^u
f'[t] \, dt=-\int _x^u\frac{d(u-t)}{dt}f'[t]dt 

=(u-x)f'[x]+\int _x^u(u-t)f'[t]dt= \text{...}
$$

$$
=\sum _{k=1}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+\frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}[t]dt\text{  }
$$

So we have:

$$
f[u]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+\frac{f^{(n)}[\xi ]-f^{(n)}[x]}{n!}\text{  }(u-x)^n

\quad
$$

$$
\pmb{\text{V2}}:\text{Using} \text{the} \text{mean} \text{value} \text{theorem}, \text{there} \text{is} a \text{$\xi \in $[x,u]}\text{such} \text{that}

\frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}[t]dt= \frac{f^{(n+1)}[\xi ]}{n!}\int_x^u (u-t)^n \, dt=\frac{f^{(n+1)}[\xi ]}{(n+1)!}(u-x)^{n+1}
$$

\pmb{ V3} :

$$
f[u]=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+\frac{f^{(n)}[\xi ]-f^{(n)}[x]}{n!}\text{  }(u-x)^n
$$

$$
=\sum _{k=0}^n \frac{f^{(k)}[x]}{k!}(u-x)^k+o\left[(u-x)^n\right]
$$

## Differentiation on Hilbert Spaces

#### Definition

$>>>$ Let $F:U\text{-$>$ V$. The derivative DF of F at x is defined as $\text{DF}[x]:U\text{-$>$ V$ is the derivative of $F$ in $x$, iff

$$
\text{DF}[x]= lim_{h\to 0}\frac{1}{\| h\| }(F[x+h]-F[x])
$$

$$
F[x+h]-F[x]=\text{DF}[x][h]+o[h]=\text{DF}[x]\mathsf{T}h+o[\| h\| ]
$$

If such a mapping exists, $F$ is called differentiable in $x$. We say that $F$ is locally approximated by $\text{DF}[x]$. 

$>>>$ Chain rule, product rule

$$
\text{DF}[x][h]=\frac{d}{d\epsilon }F[x+\text{$\epsilon $h}]|_{\epsilon =0}
$$

#### Theorem 1 (Uniqueness of the Derivative)

The derivative is unique. 

Proof: Assume that

$$
F[x+h]-F[x]=D[h]+o[h]

F[x+h]-F[x]=E[h]+o[h]
$$

Then:

$$
\quad D[h]+o[h]=E[h]+o[h]
$$

which shows that $D= E$.

### Theorem 2 (Chain Rule)

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be differentiable in x and $G:\mathbb{R}^m\text{-$>$ \mathbb{R}^n$differentiable in F[x]. 
Then $G\circ F:U\text{-$>$ W$is differentiable in $x$ and we have:

$$
D(G\circ F)[x]= \text{DG}[F[x]]\circ \text{DF}[x]
$$

or, omitting the argument:

$$
D(G\circ F)= \text{DG}[F]\circ \text{DF}\text{  }
$$

Note that:

$$
(\text{DG}[F]\circ \text{DF} )[h]=\text{DG}[F][\text{DF} [h]]=\text{DG}[F]\mathsf{T}\cdot \text{DF}\mathsf{T}h
$$

You have to multiply the transpose of DG[F] and DF; DG[F] and DF cannot multiplied.
The case $p = 1$:

$$
D(g\circ F)[h]=\partial g\mathsf{T}\dot{F}\mathsf{T}h\text{               }(1\times 1)\mathsf{T}
$$

So, for instance:

$$
\partial _t(g[\text{tx}])=\partial g\mathsf{T}x\text{              }
$$

or, with an $n\times m$-Matrix $A$:

$$
\partial _t(g[t A])=\partial g\mathsf{T}A\text{     }
$$

Proof:

$$
G\circ F[x+h]=G[F[x]+ \text{DF}[x][h]+o[h]]

\text{$\quad $            }=G[F[x]]+\text{DG}[F[x]][ \text{DF}[x][h]+o[h]]+o[h]

\text{                      }=G\circ F[x]+(\text{DG}[F[x]]\circ \text{DF}[x])[h]+o[h]
$$

So:

$$
G\circ F[x+h]-G\circ F[x]=(\text{DG}[F[x]]\circ \text{DF}[x])[h]+o[h]
$$

which proves the assertion via uniqueness.

## Matrices, Tensors, Linear Mappings

Let $A$ be an ($n x m$)-Matrix, so $A^T$ is $(m x n)$. $A$ defines a linear mapping $A$$:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$by 

$$
A[x] = A\mathsf{T}x = \left(
\begin{array}{c}
 . 
 \sum _{j=1}^n a_{\text{ij}}x_j 
 . 
\end{array}
\right) {}_{i=1,\text{..},m}
$$

Likewise,

$$
y[A] = y\mathsf{T}A = \left(
\begin{array}{c}
 . 
 \sum _{i=1}^m y_ia_{\text{ij}} 
 . 
\end{array}
\right) {}_{j=1,\text{..},n}
$$

So, every vector and every matrix can also be considered a linear mapping defined as above. Physicists use an alternative notation:

$$
\langle A|x\rangle  = A\mathsf{T}x =A[x]

\langle y|A\rangle  = y\mathsf{T}A =y[A]

\langle B|A|x\rangle =\langle B|\langle A|x\rangle \rangle =B\mathsf{T} A\mathsf{T}x = (A B)\mathsf{T}x=B[A[x]]
$$

What is right of the bar is the argument, what is left of the bar is the function. No need to care about transpositions.

Let $B$ be an ($m x p$)-Matrix, so $B^T$ is $(p x m)$.$B$ defines a linear mapping $B$$:\mathbb{R}^m\text{-$>$ \mathbb{R}^p$by the
same procedure. Then the linear mapping $B\circ A$$:\mathbb{R}^n\text{-$>$ \mathbb{R}^p$is defined by

$$
(B\circ A)[x] = B[A[x]] =B\mathsf{T} A\mathsf{T}x =(A B)\mathsf{T}x=\left(
\begin{array}{c}
 . 
 \underset{j=1}{\overset{n}{\sum _{i=1}^m \sum }}b_{\text{ki}}a_{\text{ij}}x_j 
 . 
\end{array}
\right) {}_{k=1,\text{..},p}
$$

The matrix $(A\circ B)\mathsf{T$ is $(p\times n)$.  This is important for the chain rule. The case $p = 1$ is frequent:  6 

$$
B = b = \left(
\begin{array}{c}
 b_1 
 . 
 b_m 
\end{array}
\right)
$$

$$
(b\circ A)[x]= b\mathsf{T} A\mathsf{T}x =(A b)\mathsf{T}x= \sum _{i=1}^m \sum _{j=1}^n b_ia_{\text{ij}}x_j
$$

### Tensors, Frobenius Product

 Let $x$ $\in $ $\mathbb{R}^n$, $y$ $\in $ $\mathbb{R}^m$. Then

$$
x\unicode{f3da}y =x\cdot y\mathsf{T}= \left(
\begin{array}{cccc}
 x_1y_1 & . & . & x_1y_m 
 . &   &   & . 
 . &   &   & . 
 x_ny_1 & . & . & x_ny_m 
\end{array}
\right)
$$

$$
\text{$\quad $        }x^{\unicode{f3da}q}= \left(
\begin{array}{ccc}
 . & . & . 
 . & x_{j_1}x_{j_2}\text{..} x_{j_q} & .  
 . & . & . 
\end{array}
\right)_{j_1,\text{..},j_q=1,\text{..},n }
$$

$>>>$ Let S, T be tensors with shape = $\left(n_1, n_2,\text{..}, n_q\right)$. Then the Frobenius product $\langle S,T\rangle$of $S$and $T$
is defined by

$$
\langle S,T\rangle =\sum _{j_q=1}^{n_q} \text{..}\sum _{j_2=1}^{n_2} \sum _{j_1=1}^{n_1} s_{j_q,\text{..},j_1}t_{j_1,\text{..},j_q}
$$

$>>>$ or, in Einstein notation:

$$
\langle S,T\rangle =s_{j_1,\text{..},j_q}t^{j_1,\text{..},j_q}
$$

So, $h^{\unicode{f3da}q$ is a tensors with shape = $(n, n, \text{..},n)$ with $q$ times $n$. With an $(n\times n)$-matrix $A$ we have:

$$
\quad \quad h\mathsf{T}A h =\left\langle A,h^{\unicode{f3da}2}\right\rangle =\left\langle A\mathsf{T},h^{\unicode{f3da}2}\right\rangle =h\mathsf{T}A\mathsf{T}
h
$$

## Vector Calculus on $\mathbb{R^n$

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be a function. A linear mapping $\text{DF}[x]:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$ is the derivative
of $F$ in $x$, iff

$$
F[x+h]-F[x]=\text{DF}[x][h]+o[h]=\text{DF}[x]\mathsf{T}h+o[h]
$$

$\text{DF}[x]$ is also called the Jacobian of $F$ in $x$. 

### Definition 3 (Directional Derivatives) 

Let $x,h \in \mathbb{R}^n$,  $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be differentiable in $x$and defined in an open environment of $x$.
The directional derivative of $F$ with respect to $h$ is defined as:

$$
\partial _yF[x][h]=lim_{\epsilon \to 0}\frac{1}{h}(F[x+\epsilon  h]-F[x])\in \mathbb{R}^m
$$

$$
=\frac{d}{d\epsilon }F[x+\epsilon  h]|_{\epsilon =0}
$$

$$
=\partial F[x]\mathsf{T}h
$$

The first equation is the definition of the directional derivative, the second definition of the derivative in one dimension, and the third follows
from the chain rule. If $b_j$ is the j-th basis vector, then

$$
\partial _{b_j}F[x]=\partial _jF[x]
$$

### Theorem 2 (Chain Rule)

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be differentiable in x and $G:\mathbb{R}^m\text{-$>$ \mathbb{R}^n$differentiable in F[x]. 
Then $G\circ F:U\text{-$>$ W$is differentiable in $x$ and we have:

$$
D(G\circ F)[x]= \text{DG}[F[x]]\circ \text{DF}[x]
$$

or, omitting the argument:

$$
D(G\circ F)= \text{DG}[F]\circ \text{DF}\text{  }
$$

Note that:

$$
(\text{DG}[F]\circ \text{DF} )[h]=\text{DG}[F][\text{DF} [h]]=\text{DG}[F]\mathsf{T}\cdot \text{DF}\mathsf{T}h
$$

You have to multiply the transpose of DG[F] and DF; DG[F] and DF cannot multiplied.
The case $p = 1$:

$$
D(g\circ F)[h]=\partial g\mathsf{T}\dot{F}\mathsf{T}h\text{               }(1\times 1)\mathsf{T}
$$

So, for instance:

$$
\partial _t(g[\text{tx}])=\partial g\mathsf{T}x\text{              }
$$

or, with an $n\times m$-Matrix $A$:

$$
\partial _t(g[t A])=\partial g\mathsf{T}A\text{     }
$$

Proof:

$$
G\circ F[x+h]=G[F[x]+ \text{DF}[x][h]+o[h]]

\text{$\quad $            }=G[F[x]]+\text{DG}[F[x]][ \text{DF}[x][h]+o[h]]+o[h]

\text{                      }=G\circ F[x]+(\text{DG}[F[x]]\circ \text{DF}[x])[h]+o[h]
$$

So:

$$
G\circ F[x+h]-G\circ F[x]=(\text{DG}[F[x]]\circ \text{DF}[x])[h]+o[h]
$$

which proves the assertion via uniqueness.

### Definition 2

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be a function. The partial derivative of $F_i$ with respect to $x_j$ is defined as:

$$
\partial _jF_i\left[x_1,\text{..},x_j,\text{..}x_n\right]=lim_{h\text{-$>$0}\frac{1}{h}\left(F_i\left[x_1,\text{..},x_j+h,\text{..}x_1\right]-F_i\left[x_1,\text{..},x_j,\text{..}x_n\right]\right)
$$

Let $\left(j_1, j_2,\text{..}, j_q\right)$ be a sequence of indices. The partial derivative of $F_i$ with respect to $x_{j_1},x_{j_2},\text{..},
x_{j_q$ is recursively defined as:

$$
\partial _{j_1}\partial _{j_2}\text{..}\partial _{j_q}F_i\left[x_1,.,x_j,.x_n\right]=lim_{h\text{-$>$0}\frac{1}{h}\left(\partial _{j_2}\text{..}\partial
_{j_q}F_i\left[x_1,.,x_{j_1}+h,.,x_n\right]-\partial _{j_2}\text{..}\partial _{j_q}F_i\left[x_1,.,x_{j_1},.,x_n\right]\right)
$$

### Theorem 3 (Jacobian and Partial Derivatives)

a) If $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$ is differentiable in $x$, then

$$
\text{DF}[x]=\partial \unicode{f3da}F[x]\text{    }(n\times m)
$$

which is the same as (omitting the argument $x$)

$$
\text{DF}_{\text{ji}} =\partial _jF_i (j=1,\text{..},n;i=1,\text{..},m)
$$

So:

$$
F[x+h]-F[x]=\partial \unicode{f3da}F[x]\mathsf{T}h+o[h]
$$

b) If all $\partial _jF_i$ are continuous in an open environment $U$ of $x$, then $F$ is differentiable in $U$, and (a) holds for all $y\in
U$.

### Theorem 4 (Partial derivatives are interchangeable)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R}^1$be a function. If $\partial _i\partial _jf$ and $\partial _j\partial _if$ are continuously differentiable
in an open environment of x, then

$$
\partial _i\partial _jf[x]=\partial _j\partial _if[x]
$$

So, if all $\partial _i\partial _jf$ are continuously differentiable in an open environment of x, then Theorem 3 applies and we have:

$$
\partial ^{\unicode{f3da}2}=\left(\partial ^{\unicode{f3da}2}\right)\mathsf{T}
$$

which is the same as

$$
\partial _i\partial _jf[x]=\partial _j\partial _if[x]\text{  }(i,j=1,\text{..},n)
$$

More generally, multiple derivative, such as

$$
\partial _{j_1}\partial _{j_2}\text{..}\partial _{j_q}f[x]
$$

do not depend on the order of the indices, or, equivalently, the tensor of partial derivatives is fully symmetric.

### Differential Operators

todo: here comes some text

$$
f:\mathbb{R}^n\text{-$>$ \mathbb{R}

F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m
$$

$$
\partial = \left(
\begin{array}{c}
 \partial _1 
 . 
 . 
 \partial _n 
\end{array}
\right) =\nabla , \partial f=\partial ^{\unicode{f3da}1}f=\nabla f=\text{grad} f\text{    }(\text{gradient})

\partial ^{\unicode{f3da}2}= \left(
\begin{array}{cccc}
 \partial _1\partial _1 & . & . & \partial _1\partial _n 
 . &   &   & . 
 . &   &   & . 
 \partial _n\partial _1 & . & . & \partial _n\partial _n 
\end{array}
\right)=H, \partial ^{\unicode{f3da}2}f=\text{Hf}\text{       }(\text{Hessian})

\partial ^{\unicode{f3da}q}= \left(
\begin{array}{ccc}
 . & . & . 
 . & \partial _{j_1}\partial _{j_2}\text{..} \partial _{j_q} & .  
 . & . & . 
\end{array}
\right)_{j_1,\text{..},j_q=1,\text{..},n }\text{  }(\text{tensor} \text{of} \text{partial} \text{derivatives} \text{of} \text{rank} q)
$$

$$
\text{DF}=\partial \unicode{f3da}F = \left(
\begin{array}{cccc}
 \partial _1F_1 & . & . & \partial _1F_m 
 . &   &   & . 
 . &   &   & . 
 \partial _nF_1 & . & . & \partial _nF_m 
\end{array}
\right)=\text{JF}\text{                       }(\text{Jacobian})
$$

There is the dot notation for $n=1$:  

$$
\partial \unicode{f3da}F=\left(
\begin{array}{cccc}
 \partial F_1 & . & . & \partial F_m 
\end{array}
\right)=\dot{F}
$$

$$
D^2F=\partial ^{\unicode{f3da}2}\unicode{f3da}F =\left(
\begin{array}{ccc}
 . & . & . 
 . &  \partial _k\partial _jF_i & . 
 . &  . & . 
\end{array}
\right)_{j=1,\text{..}nk=1,\text{..}ni=1,\text{..},m}=\left(
\begin{array}{cccc}
 \partial _1\text{DF} & . & . & \partial _n\text{DF} 
\end{array}
\right)\text{    }(\text{tensor} \text{of} \text{partial} \text{derivatives} \text{of} \text{rank} 2)

\partial ^{\unicode{f3da}q}\unicode{f3da}F= \left(
\begin{array}{ccc}
 . & . & . 
 . & \partial _{j_1}\partial _{j_2}\text{..} \partial _{j_qF_i} & .  
 . & . & . 
\end{array}
\right)_{j_1,\text{..},j_q=1,\text{..},n i=1,\text{..}m}
$$

The terms $\partial ,\partial ^{\unicode{f3da}q$ and their aliases ($\nabla $, grad, H, D, J) are operators that map a scalar- or vector-valued
function ($f$ or $F$) to a  tensor-valued function, such as $\partial f$.

Let $F:\mathbb{R}^n\times \mathbb{R}^m\text{-$>$ \mathbb{R}^p$be a function of two vectors. Then we write, assuming that the arguments are denoted
by $x$ and $y$:

$$
\partial _x=\left(
\begin{array}{c}
 \partial _1 
 . 
 . 
 \partial _n 
\end{array}
\right), D_xF[x,y]=\partial _x\unicode{f3da}F[x,y]=\left(
\begin{array}{cccc}
 \partial _1F_1 & . & . & \partial _1F_p 
 . &   &   & . 
 . &   &   & . 
 \partial _nF_1 & . & . & \partial _nF_p 
\end{array}
\right)

\partial _y=\left(
\begin{array}{c}
 \partial _{n+1} 
 . 
 . 
 \partial _{n+m} 
\end{array}
\right),D_yF[x,y]=\partial _y\unicode{f3da}F[x,y]=\left(
\begin{array}{cccc}
 \partial _{n+1}F_1 & . & . & \partial _{n+1}F_p 
 . &   &   & . 
 . &   &   & . 
 \partial _{n+m}F_1 & . & . & \partial _{n+m}F_p 
\end{array}
\right)
$$

$>>>$ We assume that the subscript somehow identifies the argument in question. So, writing $\left.\partial _{x_j}F[x,y\right]$ or $\left.\partial
_{y_k}F[x,y\right]$ can be useful and unambiguous. In physics, we often encounter arguments like L[x, $\dot{x$], to indicate that the second
argument is supposed to the velocity. This leads to expressions like $\partial _{\dot{x}}L\left[x,\dot{x}\right]$. In this case, $\dot{x}\text{
 $is just the name of an argument, and it happens to have a dot at the top. Referencing arguments by name can be ambiguous. Take the functions
$f[x, y]$, $g[x, y]$, $h[x, y]$ and differentiate $f[g[x,y], h[x,y]]$. 

$$
A[x,y]=\left(
\begin{array}{c}
 g[x,y] 
 h[x,y] 
\end{array}
\right),\text{DA}=\partial \unicode{f3da}A=\left(
\begin{array}{cc}
 \partial _xg & \partial _xh 
 \partial _yg & \partial _yh 
\end{array}
\right)
$$

$$
f[g[x,y],h[x,y]]=(f\circ A)[x,y]
$$

The chain rule gives:

$$
D(f\circ A)=\text{DA}\cdot \text{Df}=\left(
\begin{array}{cc}
 \partial _xg & \partial _xh 
 \partial _yg & \partial _yh 
\end{array}
\right)\left(
\begin{array}{c}
 \partial _xf 
 \partial _yf 
\end{array}
\right)=\left(
\begin{array}{c}
 \partial _xf\cdot \partial _xg+\partial _yf\cdot \partial _xh 
 \partial _xf\cdot \partial _yg+\partial _yf\cdot \partial _yh 
\end{array}
\right)
$$

Ambiguities are eliminated by parenthesis. Identifying the variables by indices works as well:

$$
D(f\circ A)=\left(
\begin{array}{c}
 \partial _1f\cdot \partial _1g+\partial _2f\cdot \partial _1h 
 \partial _1f\cdot \partial _2g+\partial _2f\cdot \partial _2h 
\end{array}
\right)
$$

$$
F:\mathbb{R}^3\text{-$>$ \mathbb{R}^3 f:\mathbb{R}^n\text{-$>$ \mathbb{R}\quad
$$

$$
\partial ^2 =\sum _{i=1}^n \partial _i{}^2\text{   }=\nabla \cdot \nabla  = \nabla ^2\text{                    }(\text{Laplace})
$$

$$
\partial \cdot F = \sum _{j=1}^n \partial _jF_j= \text{div}[F]\text{                    }(\text{divergence})
$$

$$
(\partial \cdot )^2F =\partial \cdot \partial \cdot F =\sum _{k=1}^n \sum _{j=1}^n \partial _k\partial _jF_j= \text{div}^2[F]\text{      }\left(\text{divergence}^2\right)
$$

$$
\partial \times F = \left(
\begin{array}{c}
 \partial _2F_3-\partial _3F_2 
 \partial _3F_1-\partial _1F_3 
 \partial _1F_2-\partial _1F_2 
\end{array}
\right) = \text{curl}[F]
$$

$$
\partial ^2F = \left(
\begin{array}{c}
 \partial ^2F_1 
 \partial ^2F_2 
 \partial ^2F_3 
\end{array}
\right)
$$

### Some Formulae

$$
F,G:\mathbb{R}^3\text{-$>$ \mathbb{R}^3 

f,g:\mathbb{R}^n\text{-$>$ \mathbb{R}\quad
$$

div(curl) = 0

$$
\partial \cdot (\partial \times F)=0
$$

curl(gradient) = 0

$$
\partial \times (\partial f)=0
$$

div(product)

$$
\partial \cdot (F\cdot g)=(\partial F)\cdot g+F\cdot \partial g
$$

$$
\partial (F\cdot G)=(F\cdot \partial )G+(G\cdot \partial )F+F\times (\partial \times G)+G\times (\partial \times F)
$$

Laplace = grad(div) - curl(curl)

$$
\partial ^2F =\partial (\partial \cdot F)-\partial \times (\partial \times F)
$$

div(cross product) = G $\cdot $ curl(F) - F $\cdot $ curl(G)

$$
\partial \cdot (F\times G)=G\cdot (\partial \times F)-F\cdot (\partial \times G)
$$

### Notation 4 (1+3 Dimensions) { 1}

$$
\partial ^{\mu } =\left(
\begin{array}{c}
 \partial _0 
 -\partial _1 
 -\partial _2 
 -\partial _3 
\end{array}
\right)

\partial _{\mu } =\left(
\begin{array}{c}
 \partial _0 
 \partial _1 
 \partial _2 
 \partial _3 
\end{array}
\right)
$$

$$
\square =\partial ^2=\partial _{\mu }\partial ^{\mu } = \left(\partial _0\right){}^2 -\left(\partial _1\right){}^2-\left(\partial _2\right){}^2-\left(\partial
_3\right){}^2\text{    }(d'\text{Alembert})
$$

### Definition 4 (Stationary Points)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R$be a function, differentiable in $x$. The point x is a stationary point of f if

$$
\partial f[x]=0
$$

### Theorem 3 (Local Extrema)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R$be a function, differentiable in $x$. If f has a local minimum or maximum in $x$, then $x$ is a
stationary point of $f$. 

Proof (for minimum only): Let h$\in $$\mathbb{R}^n$ be a small vector. Then:

$$
f[x]\leq f[x+h]=f[x]+\partial f[x]\mathsf{T}h+o[h]\text{   }(\text{works} \text{for} h \text{and} \text{-h})

0\leq \partial f[x]\mathsf{T}h+o[\| h\| ]

0\leq \frac{\partial f[x]\mathsf{T}h}{\| h\| }+\frac{o[\| h\| ]}{\| h\| }

0\leq -\frac{\partial f[x]\mathsf{T}h}{\| h\| }+\frac{o[\| h\| ]}{\| h\| }
$$

So, for small positive $\epsilon$ we get:

$$
\frac{\partial f[x]\mathsf{T}h}{\| h\| }-\epsilon \leq 0\leq \frac{\partial f[x]\mathsf{T}h}{\| h\| }+\epsilon
$$

$$
-\epsilon \leq -\frac{\partial f[x]\mathsf{T}h}{\| h\| }\leq +\epsilon
$$

which proves the statement.

### Theorem 4 (Derivative of the Inverse Function)

a) Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$be differentiable in x, and let $F^{-1}:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$be differentiable
in $F[x]$. Then:

$$
\left(D\left(F^{-1}\right)\right)[F[x]]=(\text{DF}[x])^{-1}
$$

which is the same as (setting $y=F[x]$)

$$
\left(D\left(F^{-1}\right)\right)[y]=\left(\text{DF}\left[F^{-1}[y]\right] \right)^{-1}
$$

which is the same as (omitting $x$)

$$
(\text{DF})^{-1}=D\left(F^{-1}\right)\circ F
$$

Proof: Immediate from the chain rule:

$$
I=D\left[F\circ F^{-1}\right][y] =\text{DF}\left[F^{-1}[y]\right]\circ \left(D\left(F^{-1}\right)\right)[y]
$$

b) Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$be continuously differentiable in an open environment of $x$, and let $\text{DF}[x]$ be invertible.

Then $F^{-1$ exists and is differentiable in an open environment $U$ of $x$. So, (a) applies on $U$.

Proof: Hard stuff.

### Theorem 5 (Derivative of Implicit Functions)

Let $F:\mathbb{R}^{n\times m}\text{-$>$ \mathbb{R}^m$be continuously differentiable in an open environment of$(a,b)$, and let $F[a,b] = 0$.
$F$is a function of two vectors $x$ and $y$. The partial derivatives $\partial _xF$, $\partial _yF$ are defined as above (see Notation
XX). Let $\partial _yF[a,b]$ be invertible.Then there is a function $G:A\text{-$>$\mathbb{R}^m$ (with $A\subset \mathbb{R}^n$ open and $a\in
A$) such that:

$$
F[x, G[x]]=0
$$

and the derivative of $G$ is given by

$$
\text{DG}=-\left(\partial _yF\right){}^{-1}\circ \partial _xF
$$

Proof: Let

$$
H[x,y]\text{:=}(x,F[x,y)])

H[a, F[a,b]]=(a,0)
$$

H is invertible. The inverse $H^{-1$is defined in an open environment $A\times B$ of $(a,0)$, with $A\subset \mathbb{R}^n$, $B\subset \mathbb{R}^m$),
and there is a function $K:A\times B\text{-$>$ \mathbb{R}^m$such that

$$
H^{-1}[x,y]=(x,K[x,y])
$$

on $A\times B$. So, for $x\in A$ and $y=0$ we get:

$$
(x,0)=H\left[H^{-1}[x,0]\right]=H[x,K[x,0]]=(x,F[x,K[x,0]])

\text{           }0=F[x, K[x,0]]
$$

Setting $G[x] = K[x,0]$ completes the proof. $K$ is defined on $A\times B$, $G$ is defined on $A$.
The derivative of $G$ is immediate from the chain rule.

### Theorem 7 (Taylor in n dimensions)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R}^1$and assume $\partial ^{\unicode{f3da}(k+1)}f$ continuous in an open environment J of $x\in \mathbb{R}^n$.
Let $h\in \mathbb{R}^n$such that $x+h\in J$. Then there exists a $\xi \in [x,x+h]$ such that:

$$
f[x+h]=\sum _{j=0}^k \frac{1}{k!}\left\langle \partial ^{\unicode{f3da}j}f[x], h^{\unicode{f3da}j}\right\rangle +\frac{1}{(k+1)!}\left\langle \partial
^{\unicode{f3da}(k+1)}f[\xi ], h^{\unicode{f3da}(k+1)}\right\rangle 

\text{$\quad $       }=\sum _{j=0}^k \frac{1}{k!}\left\langle \partial ^{\unicode{f3da}j}f[x], h^{\unicode{f3da}j}\right\rangle +o\left[\| h\| ^k\right]
$$

Proof: It holds that, for j$\leq $k:

$$
\frac{d^j}{dt^j}f[x+\text{th}]=\left\langle \partial ^{\unicode{f3da}j}f[x+\text{th}], h^{\unicode{f3da}j}\right\rangle
$$

because:

$$
\frac{d}{dt}f[x+\text{th}]=\sum _{j=1}^n \partial _jf[x+\text{th}]h_j=\partial f[x+\text{th}]\mathsf{T}h=\langle \partial f[x+\text{th}],h\rangle

\frac{d^2}{dt^2}f[x+\text{th}]=\sum _{i=1}^n \sum _{j=1}^n \partial _i\partial _jf[x+\text{th}]h_ih_j=\left\langle \partial ^{\unicode{f3da}2}f[x+\text{th}],
h^{\unicode{f3da}2}\right\rangle
$$

and so on. Taylor in one dimension tells us, for $g[t] = f[x+\text{th}]$:

$$
g[1]=\sum _{j=0}^k \frac{g^{(j)}[0]}{j!}+\frac{g^{(k+1)}[\xi ]}{(k+1)!}
$$

for some $\xi \in [0,1]$. Rewriting this equation in terms of $f$gives the statement.

## Riemann Integrals in $\mathbb{R^n$

### Step Functions

Consider a closed cube $C = \left[a_1,b_1\right]\times \left[a_2,b_2\right]\times \text{..} \times \left[a_n,b_n\right]$ $\subset $ $\mathbb{R}^n$.
A partition of $C$ is a finite set $\mathcal{C$ of pairwise disjoint cubes $C_k$
such that $C=$ $\cup  C_k$. Th granularity of $\mathcal{C$ is $\text{g = max$ $\left| C_k\right|$.

The characteristic function $\chi _K$ of a set $K\subset \mathbb{R}^n$ is defined as

$$
\chi _K[x]=
\begin{array}{ll}
 \{ & 
\begin{array}{ll}
 1 & x\in K 
 0 & \text{otherwise} 
\end{array}
 
\end{array}
$$

K is called Riemann-measurable, if $\chi _K$ is Riemann-integrable

### Integrals over Intervals, Rectangles, Cubes

$$
f:\mathbb{R}^m \to \mathbb{R}
$$

$f$ is a measure, or a weight, or a density. We assume that $\text{tr}[f]$ is compact.
We

Integral over Q $\subset $ $\mathbb{R}^m$:

$$
\text{tr} Q \approx  \cup Q_k , x_k \in Q_k\text{                                     }
$$

This generalizes intervals ($m=1$), rectangles ($m=2$) and cubes ($m=3$).
The $Q_k$, the patches, can be rectangular or not. But we assume we know what $|$$Q_k$$|$ is. 

Measure or weight of $Q$:

$$
\int _Qfd^mx\approx \sum _{k=1}^n f\left[x_k\right]\left| Q_k\right| \text{  }
$$

The approximate-sign ($\approx $) means: For any $\epsilon  >0$ we can divide $Q$ in a number n of small patches $Q_k$ such that the approximate
equality is accurate up to $\epsilon$.

Volume of $Q$:

$$
\int _Qd^mx\approx \sum _{k=1}^n \left| Q_k\right| \text{                                                  }
$$

So, we can write

$$
\int _Qfd^mx=\int _C\chi _Qfd^mx\text{  }
$$

for any superset $C$ of $Q$, and in particular for large cubes.

#### Volume under linear transformations

The unit cube:

$$
C^m\text{=[}\text{0,1}]^m\text{                                             }

\left| C^m\right| = 1
$$

The main formula (obvious for $m=1$, easy for $m=2, 3$, not easy in general) :

$A:\mathbb{R}^m\text{-$>$\mathbb{R}^m \text{linear}, \text{then}:$

$$
\left| A\left[C^m\right]\right| = | \text{Det}[A]|
$$

and more generally, for any set Q $\subset $ $\mathbb{R}^m$ 

$$
\frac{| A[Q]| }{| Q| }= | \text{Det}[A]| \text{        }

\text{               }
$$

#### Substitution Rule

$$
Q = \cup Q_k , x_k \in Q_k\text{                                      }

R = \cup R_k , u_k \in R_k\text{                                           }

\phi :\mathbb{R}^m\text{-$>$\mathbb{R}^m

Q=\phi [R], \phi ^{-1}[Q]=R

Q_k=\phi \left[R_k\right], \phi ^{-1}\left[Q_k\right]=R_k
$$

For small cubes it approximately holds

$$
\frac{\left| Q_k\right| }{\left| R_k\right| }\approx \left| \text{Det}\left[\partial \phi \left[u_k\right]\right]\right| \text{               
                          }
$$

So, substituting $u =\phi [x]$ amounts to this:

$$
\int _Q fd^mx\approx \sum _n^{k=1} f\left[x_k\right]\left| Q_k\right| 

=\sum _n^{k=1} f\left[\phi \left[u_k\right]\right]\frac{\left| Q_k\right| }{\left| R_k\right| }\left| R_k\right| 

\approx \sum _n^{k=1} f\left[\phi \left[u_k\right]\right]\left| \text{Det}\left[\partial \phi \left[u_k\right]\right]\right| \left| R_k\right| 

\approx \int _{\phi ^{-1}[Q]}f\circ \phi | \text{Det}[\partial \phi ]|  d^mu\text{                                }
$$

Example: Volume of the sphere using spherical coordinates.
Let $S_R$ be the unit sphere with radius $R$.

$$
\left(
\begin{array}{c}
 x 
 y 
 z 
\end{array}
\right)=\left(
\begin{array}{c}
 r \sin [\theta ]\cos [\phi ] 
 r \sin [\theta ]\sin [\phi ] 
 r \cos [\theta ] 
\end{array}
\right)

\text{with} \theta  \in [0, \pi ]; \phi  \in [0, 2\pi ]; r \in [0, R];
$$

$$
J = \left(
\begin{array}{ccc}
 \partial _rx & \partial _{\theta }x & \partial _{\phi }x 
 \partial _ry & \partial _{\theta }y & \partial _{\phi }y 
 \partial _rz & \partial _{\theta }z & \partial _{\phi }z 
\end{array}
\right)=\left(
\begin{array}{ccc}
 \sin [\theta ]\cos [\phi ] & r \cos [\theta ]\cos [\phi ] & -r \sin [\theta ]\sin [\phi ] 
 \sin [\theta ]\sin [\phi ] & r \cos [\theta ]\sin [\phi ] & r \sin [\theta ]\cos [\phi ] 
 \cos [\theta ] & -r \sin [\theta ] & 0 
\end{array}
\right)

\det  J = r^2\sin [\theta ]

\left| S_R\right| =\int _{S_R}d(x, y, z)=\int _0^{2\pi }\int _0^{\pi }\int _0^Rr^2\sin [\theta ]d\phi d\theta dr = \frac{4\pi }{3}R^3
$$

#### Fubini{'s Theorem}

Integral over an interval ($m=1$)

$$
[a,b] =\text{  }\cup I_k , x_k \in I_k
$$

Measure or weight of $[a,b]$

$$
\int_a^b f[x] \, dx\approx \sum _{k=1}^n f\left[x_k\right]\text{$\Delta $x}_k
$$

Integral over a rectangle ($m=2$)

$$
R =\text{  }\cup R_k , x_k \in R_k
$$

Measure or weight of $R$

$$
\int _Rf[x]dx\approx \sum _{j,k=1}^n f\left[x_{\text{jk}}\right]\left|R_{\text{jk}}\right|
$$

## Integral Theorems

### Path Integrals

#### Measure, Weight, Length

$$
\gamma  \subset \mathbb{R}^m, \gamma  \approx \left[x_0,x_1,\text{..},x_n\right], \text{$\Delta $x}_k=x_k-x_{k-1}

f:\mathbb{R}^m \to \mathbb{R}, F:\mathbb{R}^m \to \mathbb{R}^m\text{                         }(f:\text{density}, F:\text{field})

\int _{\gamma }fds\approx \sum _{k=1}^n f\left[x_k\right]\left\| \text{$\Delta $x}_k\right\| \text{                         }(\text{measure} \text{or}
\text{weight} \text{of} \gamma ) 

\int _{\gamma }ds\approx \sum _{k=1}^n \left\| \text{$\Delta $x}_k\right\| \text{                                         }(\text{length} \text{of}
\gamma ) \text{  }
$$

#### Work along a Path

$$
f= F\cdot \hat{t}

\hat{t}_k=\frac{\text{$\Delta $x}_k}{\left\| \text{$\Delta $x}_k\right\| }

\int _{\gamma }F\cdot \hat{t}ds\approx \sum _{k=1}^n F\left[x_k\right]\cdot \frac{\text{$\Delta $x}_k}{\left\| \text{$\Delta $x}_k\right\| }\left\|
\text{$\Delta $x}_k\right\| \text{     }

\text{                  }= \sum _{k=1}^n F\left[x_k\right]\cdot \text{$\Delta $x}_k\text{                     }(\text{work} \text{along} \gamma 
\text{given} \text{field} F)
$$

#### Path Independence: Path to Points

Set $F=\partial f$. 
For small $\text{$\Delta $x}_k$, local path independence means:

$$
\partial f\left[x_k\right]\cdot \text{$\Delta $x}_k \approx  f\left[x_k\right]-f\left[x_{k-1}\right]\text{        }
$$

Telescope sum:

$$
\sum _{k=1}^n \partial f\left[x_k\right]\cdot \text{$\Delta $x}_k = \sum _{k=1}^n \left(f\left[x_k\right]-f\left[x_{k-1}\right]\right)
$$

Global path independence:

$$
\int _{\gamma }\partial f\cdot \hat{t}ds= f\left[x_n\right]-f\left[x_0\right]\text{                    }
$$

#### Path Given by Explicit Function

$$
\phi :[a, b] \text{-$>$ \mathbb{R}^n, [a, b] \approx \left[u_0,u_1,\text{..},u_n\right], \text{$\Delta $u}_k=u_k-u_{k-1}

g:[a, b] \text{-$>$ \mathbb{R}

\hat{t}=\frac{\dot{\phi }}{\left\| \dot{\phi }\right\| }\text{                                                      }(\text{tangent} \text{vector}
\text{of} \gamma )

$$

$$
\int _{\gamma }f[x]ds\approx \sum _{k=1}^n f\left[x_k\right]\left\| \text{$\Delta $x}_k\right\| 

\text{                    }=\sum _{k=1}^n f\left[\phi \left[u_k\right]\right]\frac{\left\| \Delta \phi \left[u_k\right]\right\| }{\text{$\Delta $u}_k}\text{$\Delta
$u}_k

\text{                    }\approx \int _a^bf[\phi [u]]\left\| \dot{\phi }[u]\right\| du
$$

$$
\int _{\gamma }ds=\int _a^b\left\| \dot{\phi }[u]\right\| du\text{                                  }(\text{length} \text{of} \gamma  )\text{ 
           }\int _{\gamma }F\cdot \hat{t}ds=\int_a^b F[\phi [u]]\cdot \dot{\phi }[u] \, du\text{             }\int _{\gamma }\partial f\cdot \hat{t}ds=\int_a^b
\partial f[\phi [u]]\cdot \dot{\phi }[u] \, du\text{   }\text{                      }=f[\phi [b]]-f[\phi [a]]
$$

### Surface Integrals

$$
|a\cdot b|=\| a\| \| b\|  \cos  \alpha 

\| a\times b\| \text{   }=\| a\| \| b\|  \sin  \alpha \text{        }

\phi :R \text{-$>$ \mathbb{R}^3

S=\phi [R]
$$

Normal vector of S:

$$
\hat{n}=\frac{\partial _u\phi \times \partial _v\phi }{\left\| \partial _u\phi \times \partial _v\phi \right\| }\text{
                                                      }
$$

### Measure, Weight, Surface

$$
\text{  }\text{$\Delta $x}_{\text{jk}}=\left(x_{\text{jk}}-x_{j-1\text{jk}}\right)\times \left(x_{\text{jk}}-x_{\text{jk}-1}\right)\left|S_{\text{jk}}\right|=
\left\| \text{$\Delta $x}_{\text{jk}}\right\|
$$

Measure or weight of S

$$
\int _SfdS\approx \sum _{j,k=1}^n f\left[x_{\text{jk}}\right]\left\| \text{$\Delta $x}_{\text{jk}}\right\| \text{         }
$$

Surface of S

$$
\int _SdS\approx \sum _{j,k=1}^n \left\| \text{$\Delta $x}_{\text{jk}}\right\| \text{                                                    }
$$

#### Flow

Flow density through S

$$
f= F\cdot \hat{n}
$$

Flow through S

$$
\int _SF\cdot \hat{n}dS\approx \sum _{j,k=1}^n F\left[x_k\right]\cdot \frac{\text{$\Delta $x}_{\text{jk}}}{\left\| \text{$\Delta $x}_{\text{jk}}\right\|
}\left\| \text{$\Delta $x}_{\text{jk}}\right\| \text{     }

= \sum _{j,k=1}^n F\left[x_{\text{jk}}\right]\cdot \text{$\Delta $x}_{\text{jk}}\text{                              }
$$

#### Stokes: Surface to Line

Replace F with $\partial \times F$

$$
(\partial \times F)\left[x_{\text{jk}}\right]\cdot \text{$\Delta $x}_{\text{jk}} \approx  \int _{\partial S_{\text{jk}}} F\cdot \hat{t}ds\text{
                          }\left(\text{for} \text{small} S_{\text{jk}},\text{local} \text{Stokes}\right)

\sum _{j,k = 1}^n (\partial \times F)\left[x_{\text{jk}}\right]\cdot \text{$\Delta $x}_{\text{jk}} = \sum _{j,k = 1}^n \int _{\partial S_{\text{jk}}}
F\cdot \hat{t}ds\text{       }(\text{telescope} \text{sum})

\int _S(\partial \times F)\cdot \hat{n}dS =\int _{\partial S} F\cdot \hat{t}ds\text{                                      }(\text{global} \text{Stokes})
$$

#### Surface Given by Explicit Function

$$
R = \cup R_{\text{jk}}\text{  }

x_{\text{jk}}=\phi \left[u_j, v_k\right]

 S_{\text{jk}}=\phi \left[R_{\text{jk}}\right]

 \phi ^{-1}\left[ S_{\text{jk}}\right]=R_{\text{jk}}

\left|R_{\text{jk}}\right|=\left(u_j-u_{j-1}\right)\left(v_k-v_{k-1}\right)
$$

$$
\left.\left.\left|S_{\text{jk}}\right|=\left\| \phi \left[u_j,v_k\right]-\phi \left[u_{j-1},v_k\right]\right\| \right\|
\phi \left[u_j,v_k\right]-\phi \left[u_j,v_{k-1}\right]\right\| \sin \left[\alpha _{\text{jk}}\right] 

\frac{\left|S_{\text{jk}}\right|}{\left|R_{\text{jk}}\right|}=\frac{\left\| \phi \left[u_j,v_k\right]-\phi \left[u_{j-1},v_k\right]\right\|
\left\| \phi \left[u_j,v_k\right]-\phi \left[u_j,v_{k-1}\right]\right\| \sin \left[\alpha _{\text{jk}}\right]}{\left(u_j-u_{j-1}\right)\left(v_k-v_{k-1}\right)}

\text{                }\approx \left\| \partial _u\phi \left[u_j,v_k\right]\right\| \left\| \partial _v\phi \left[u_j,v_k\right]\right\|
\sin \left[\alpha _{\text{jk}}\right]

\text{                }=\left\| \partial _u\phi \left[u_j,v_k\right]\times \partial _v\phi \left[u_j,v_k\right]\right\| 
$$

$$
\int _s fdS\approx \sum _{j,k=1}^n f\left[x_{\text{jk}}\right]\left|S_{\text{jk}}\right|
$$

$$
=\sum _{j,k=1}^n f\left[x_{\text{jk}}\right]\frac{\left|S_{\text{jk}}\right|}{\left|R_{\text{jk}}\right|}\left|R_{\text{jk}}\right|
$$

$$
=\sum _{j,k=1}^n f\left[\phi \left[u_j,v_k\right]\right]\left\| \partial _u\phi \left[u_j,v_k\right]\times \partial
_v\phi \left[u_j,v_k\right]\right\| \left|R_{\text{jk}}\right|
$$

$$
=\int _R f[\phi [u,v]]\left\| \partial _u\phi [u,v]\times \partial _v\phi [u,v]\right\| d(u,v)
$$

$$
=\int _R f[\phi ]\left\| \partial _u\phi \times \partial _v\phi \right\| d(u,v)
$$

$$
\text{}
$$

$$
\int _s F\cdot \hat{n}dS\approx \sum _{j,k=1}^n F\left[x_{\text{jk}}\right]\hat{n}_{\text{jk}}\left|S_{\text{jk}}\right|
$$

$$
=\int _R F[\phi ]\frac{\partial _u\phi \times \partial _v\phi }{\left\| \partial _u\phi \times \partial _v\phi \right\|
}\left\| \partial _u\phi \times \partial _v\phi \right\| dudv
$$

$$
=\int _R F[\phi ]\left(\partial _u\phi \times \partial _v\phi \right)d(u,v)
$$

#### Surface Given by Implicit Function

$$
S = \left\{\left.x \in \mathbb{R}^3\right| G[x]= 0\right\}
$$

There is a $\phi $ such that :

$$
G\left[x_1,x_2,x_3\right]= 0\text{   }\Longleftrightarrow \text{   }\phi \left[x_1,x_2\right]= x_3

G\left[x_1,x_2, \phi \left[x_1,x_2\right]\right]= 0 

\partial G = \left(
\begin{array}{c}
 \partial _1G+\partial _3G\partial _1\phi  
 \partial _2G+\partial _3G\partial _2\phi  
\end{array}
\right)=\left(
\begin{array}{c}
 0 
 0 
\end{array}
\right)

\partial _1\phi  = -\frac{\partial _1G}{\partial _3G} =\partial _u\phi  

\partial _2\phi  = -\frac{\partial _2G}{\partial _3G}=\partial _v\phi 
$$

### Volume Integrals

#### Gauss: Volume to Surface

Let f be a gradient:  $f = \partial \cdot F$.

$$
(\partial \cdot F)\left[x_{\text{ijk}}\right]\left| V_{\text{ijk}}\right| \approx \int _{\partial V_{\text{ijk}}} F\cdot \hat{n}dS\text{      
                  }\left(\text{for} \text{small} V_{\text{ijk}},\text{local} \text{Gauss}\right)

\sum _{i,j,k=1}^n (\partial \cdot F)\left[x_{\text{ijk}}\right]\left| V_{\text{ijk}}\right| \approx \sum _{i,j,k=1}^n \int _{\partial V_{\text{ijk}}}
F\cdot \hat{n}dS\text{       }(\text{telescope} \text{sum})

\int _v (\partial \cdot F)dV =\int _{\partial V} F\cdot \hat{n}dS\text{        }

\text{                                 }
$$

#### Local Gauss Explained

Let C be a small cube with lower left corner $\left[x_1\right.$, $x_2$, $x_3$] and side lengths $\Delta _1, \Delta _2, \Delta _3$. The following
calculates the flow through $\partial $C along $x_1,$ orthogonal to $x_2, x_3$:

$$
\int _{\partial C} F_1\hat{n}_1dS\approx \left(F_1\left[x_1+\Delta _1, x_2, x_3\right]-F_1\left[x_1, x_2, x_3\right]\right)\Delta _2\Delta _3
$$

$$
=\frac{F_1\left[x_1+\Delta _1, x_2, x_3\right]-F_1\left[x_1, x_2, x_3\right]}{\Delta _1}\Delta _1\Delta _2\Delta _3
$$

$$
\approx \partial _1F_1| C|
$$

This works for the other two directions as well. Summing up gives:

$$
\int _{\partial C}\text{  }F_1\hat{n}_1+ F_2\hat{n}_2+ F_3\hat{n}_3dS=\left(\partial _1F_1+\partial _2F_2+\partial _3F_3\right)| C|
$$

$$
\int _{\partial C} F\cdot \hat{n}dS=(\partial \cdot F)\left[x_1, x_2,x_3\right]| C|
$$

#### Green{'s Formula}

Immediate consequence from Gauss: Apply Gauss to $f \partial g$ and $g\partial f$.

$$
f,g :\mathbb{R}^n\text{-$>$\mathbb{R}

\partial \cdot (f\partial g) =f \partial ^2g+\partial f\partial g

\int _v f \partial ^2g+\partial f\partial gdV =\int _{\partial V} f\partial g\cdot \hat{n}dS =\int _{\partial V} f\frac{\partial g}{\partial \hat{n}}dS

\int _v g \partial ^2f+\partial g\partial fdV =\int _{\partial V} g\partial f\cdot \hat{n}dS =\int _{\partial V} g\frac{\partial f}{\partial \hat{n}}dS

\int _v f \partial ^2g-g \partial ^2fdV =\int _{\partial V} f\frac{\partial g}{\partial \hat{n}}- g\frac{\partial f}{\partial \hat{n}}dS\text{  
                   }(\text{Green}'s \text{Formula})

\text{                                         }
$$

#### Integration by Parts

$$
F:\mathbb{R}^n\text{-$>$\mathbb{R}^n

g:\mathbb{R}^n\text{-$>$\mathbb{R}

\int _{\partial V} F g\cdot \hat{n}dS =0\text{                                   }(\text{Assumption}:F g \text{vanishes} \text{outside} \text{of}
\partial V)

\partial \cdot (F g) =(\partial \cdot F)g+F\cdot \partial g\text{            }(\text{straightforward})

\int _v \partial \cdot (F g)dV =\int _v((\partial \cdot F)g+F\cdot \partial g )dV=0\text{     }

\int _v(\partial \cdot F)gdV=-\int _vF\cdot \partial g dV\text{            }(\text{integration} \text{by} \text{parts})

\text{                                         }
$$

#### Continuity Equation

$$
\rho :\mathbb{R}^{1+3}\text{-$>$\mathbb{R}\text{          }(\text{charge} \text{density} \text{or} \text{density} \text{of} \text{any} \text{other}
\text{stuff})

v:\mathbb{R}^{1+3}\text{-$>$\mathbb{R}^3\text{         }(\text{velocity})

j = \rho  v\text{                  }(\text{current} \text{density})

J = \left(
\begin{array}{c}
 \rho  
 j 
\end{array}
\right)\in \mathbb{R}^{1+3}
$$

$$
P[t] =\int _V \rho dV\text{           }(\text{total} \text{charge} \text{in} V \text{at} \text{time} t)
$$

lhs = change of $P$, rhs = flow into $V$ = -flow from $V$

$$
\dot{P}=\int _V \dot{\rho }dV =-\int _{\partial V}\rho  v\cdot \hat{n}dS\text{                                                       }

\text{                      }=-\int _V\partial \cdot (\rho  v) dV\text{                               }(\text{Gauss}; \text{true} \text{for} \text{any}
\text{volume} V)

\dot{\rho } = -\partial \cdot (\rho  v)=-\partial \cdot j

\dot{\rho } +\partial \cdot j=0\text{                                                                 }(\text{continuity} \text{equation})

\partial \cdot J=0\text{                                            }

\text{                                         }
$$

## Calculus of Variations

### Definition 4 (Functional Derivatives)

Let H be a Hilbert space  with an inner product of $\phi $, $\psi \in $H denoted as $\langle \phi |\psi \rangle $. Often $H=L^2(\Omega )$ for
some region $\Omega \subset \mathbb{R}^n$ and:

$$
\langle \phi |\psi \rangle =\int _{\Omega }\phi [x]\psi [x]dx
$$

Let $\phi $, h$\in $H, and $F:H\text{-$>$\mathbb{R$ be a functional defined on an open environment of $\phi $. The directional derivative of
$F$ with respect to $h$ is defined as:

$$
\text{$\delta $F}[\phi ][h]=\frac{d}{d\epsilon }F[\phi +\epsilon  h]|_{\epsilon =0}
$$

If $\text{$\delta $F}[\phi ][h]$ can be expressed as an inner product:

$$
\text{$\delta $F}[\phi ][h]=\langle g[\phi ]|h\rangle
$$

then we write

$$
\text{$\delta $F}[\phi ]=g[\phi ]
$$

or

$$
\text{$\delta $F}=g
$$

### Definition 5 (Dirac Function)

The Dirac function $\delta $:

$$
\delta [x]= \begin{cases}
 \infty (x=0) 
 0 (x\neq 0) 
\end{cases}
$$

$$
\left\langle \left.\delta _y\right|\phi \right\rangle =\int _{\Omega } \delta [y-x]\phi [x]dx=\phi [y]
$$

### Easy Examples

$$
F[\phi ]=\left\langle \left.\delta _y\right|\phi \right\rangle =\phi [y]

\text{$\delta $F}[\phi ][h]=\left\langle \left.\delta _y\right|h\right\rangle 

\text{$\quad $          }=\frac{d}{d\epsilon }\int _{\Omega }(\phi [x]+\epsilon  h[x])\delta _y[x]dx|_{\epsilon =0}=\int _{\Omega } h[x]\delta _y[x]dx=h[y]\text{
                             }
$$

$$
F[\phi ]=\langle g|\phi \rangle =\int _{\Omega }\phi [x]g[x]dx

\text{$\delta $F}[\phi ][h]=\langle g|h\rangle 

\text{$\quad $          }=\frac{d}{d\epsilon }\int _{\Omega }(\phi [x]+\epsilon  h[x])g[x]dx=\int _{\Omega } h[x]g[x]dx

\text{                              }
$$

$$
F[\phi ]=\int _{\Omega }\phi ^n[x]dx

\text{$\delta $F}[\phi ]=n \phi ^{n-1}

\text{$\delta $F}[\phi ][h]=\left\langle \left.n \phi ^{n-1}\right|h\right\rangle 

\text{                   }=\int _{\Omega } n \phi [x]^{n-1}h[x]dx\text{                           }

\text{                   }=\frac{d}{d\epsilon }\int _{\Omega }(\phi [x]+\epsilon  h[x])^ndx=\int _{\Omega } n(\phi [x]+\epsilon  h[x])^{n-1}h[x]dx|_{\epsilon
=0}\text{                            }
$$

$$
F[\phi ]=c\int _{\Omega }\phi ^{\frac{5}{3}}[x]dx

\text{$\delta $F}[\phi ]=c\frac{5}{3} \phi ^{\frac{2}{3}}
$$

### Product Rule

$$
A[\phi ]=F[\phi ]G[\phi ]

\text{$\delta $A}=\text{$\delta $F} G+F \text{$\delta $G}
$$

$$
\text{$\delta $A}[\phi ]=\frac{d}{d\epsilon }(F[\phi +\text{$\epsilon $h}]G[\phi +\text{$\epsilon $h}])|_{\epsilon =0}=\text{$\delta $F}[\phi ]G[\phi
]+F[\phi ]\text{$\delta $G}[\phi ]
$$

### Chain Rule

$$
A[\phi ]=g[F[\phi ]]

\text{$\delta $A}=\left(\frac{d}{dx}g\circ F\right) \text{$\delta $F}
$$

$$
\text{$\delta $A}[\phi ]=\frac{d}{d\epsilon }g[F[\phi +\text{$\epsilon $h}]]|_{\epsilon =0}
$$

$$
=\frac{d}{dx}g[F[\phi +\text{$\epsilon $h}]]\frac{d}{d\epsilon }F[\phi +\text{$\epsilon $h}]|_{\epsilon =0}
$$

$$
=\frac{d}{dx}g[F[\phi ]]\text{$\delta $F}[\phi ]
$$

### Theorem (Vector Integration by Parts)

Let $G:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$,$g:\mathbb{R}^n\text{-$>$ \mathbb{R$ be differentiable. Then:

$$
\int _{\partial \Omega }(G \cdot g)dS=\int _{\Omega }G\cdot \partial g dV +\int _{\Omega }(\partial \cdot G)gdV
$$

or, if G and g vanish outside of $\Omega $:

$$
\int _{\Omega }G\cdot \partial g dV =-\int _{\Omega }(\partial \cdot G)gdV
$$

Proof: Euler's theorem says:

$$
\int _{\partial \Omega }(G \cdot g)dS=\int _{\Omega }\partial \cdot (G \cdot g)dV
$$

The result follows from the product rule in its general form:

$$
\partial \cdot (G \cdot g)=G\cdot \partial g +(\partial \cdot G)g
$$

## Equations of Motion

### Euler-Lagrange 

This is about the Euler-Lagrange equations which describe how particles move in  a field. They include the particle's position $x$, its velocity
$\dot{x$, and the action given by the Lagrangian $L$. V1 applies to Newtonian physics where position $x$ and time $t$ are independent. V2,
V3 and V4 apply to relativistic physics where position and time are coupled by the Lorentz transformation. We present the equations first and give
the proofs later. The proofs require integration by parts (simple and generalized as shown) and some notational challenges.

#### Euler-Lagrange V 1

Let L: $\mathbb{R}^n$$\times $$\mathbb{R}^n$$\to $$\mathbb{R$ be differentiable on a region $\Omega \subset $$\mathbb{R}^{n\times n$ with
$L[x,y]=0$ for large arguments. Here is the idea: The function $x:\mathbb{R}\text{-$>$\mathbb{R}^n$ describes the itinerary of one or many particles,
$\dot{x}:\mathbb{R}\text{-$>$\mathbb{R}^n$ their velocity. The function L is called the Lagrangian. $L\left[x,\dot{x}\right]$is interpreted
as the action that occurs when a particle moves with velocity $\dot{x$ at position $x$. The physical quantities of force and momentum are defined
in terms of $L$ as:

$$
F=\partial _xL\text{          }(\text{force})

P=\partial _{\dot{x}}L \text{      }(\text{momentum})
$$

The action is given by :

$$
A[x]=\int _a^bL\left[x[t],\dot{x}[t]\right]dt\text{   }
$$

and the task is to find an itinerary $x$ that minimizes the action $A[x]$. The Euler-Lagrange equation in its simplest form is:

$$
\partial _xL=\partial _t\partial _{\dot{x}}L
$$

or {``}force = time derivative of momentum{''}: 

$$
F=\dot{P}
$$

We know that every local minimum of A is a stationary point (a solution of Euler-Lagrange), but the reverse is not true. 

#### Euler-Lagrange V 2

What used to be time $t$ and position $x$ are now combined into one variable, the time-space position, which is again called $x$ (sorry for
the confusion). So, we have $L:\mathbb{R}^n\times \mathbb{R}\times \mathbb{R}^n\to \mathbb{R$ differentiable on a region $\Omega $ with $L[x,
y, z] = 0$ for large arguments. The Lagrangian now includes the function $\phi :\mathbb{R}^n\to \mathbb{R$ of $x$, and $L[x,\phi [x],\partial
\phi [x]]$ is the action that occurs when a particle is at  time-space position x. In this variant V2, $\phi $ is a scalar; in V3 it will be a
vector. V2 is an intermediate result with little practical relevance. Force and momentum are defined as:

$$
F=\partial _{\phi }L\text{                                               }(\text{force})

P=\partial _{\partial \phi }L  =\left(
\begin{array}{c}
 \partial _{\partial _1\phi } 
 . 
 \partial _{\partial _n\phi } 
\end{array}
\right)L\text{  }\text{     }(\text{momentum})
$$

Note that $F\in$$\mathbb{R$$,P\in$$\mathbb{R}^n$. The Euler - Lagrange functional is defined as :

$$
A[\phi ]=\int _{\Omega }L[x,\phi [x],\partial \phi [x]]dx
$$

and the task is to find a function $\phi$ that minimizes the action $A[\phi ]$. The Euler-Lagrange equation becomes:

$$
\partial _{\phi }L=\partial \cdot \partial _{\partial \phi }L
$$

or {``}force = time divergence of momentum{''}: 

$$
F=\partial \cdot P
$$

As before, every Euler-Lagrange solution is only a candidate for a minimum.

#### Euler-Lagrange V 3

We keep the setting of V2, with the only difference that $\phi $ is now a vector-valued function of $m$ dimensions. So we have  $L:\mathbb{R}^n\times
\mathbb{R}\times \mathbb{R}^{n\times m}\to \mathbb{R$ differentiable on a region $\Omega $ with $L[x, y, z] = 0$ on $\partial \Omega $, and what
used to be $\partial \phi$ (gradient) becomes $\text{D$\phi $$ (Jacobian): the Lagrangian is now $L[x,\phi [x],\text{D$\phi $[x]]$. V3 is
ubiquitous in relativistic physics. Force and momentum are defined as:

$$
F=\partial _{\phi }L\text{  }=\left(
\begin{array}{c}
 \partial _{\phi _1} 
 . 
 \partial _{\phi _m} 
\end{array}
\right)\text{  }L\text{                                                }(\text{force})

P=\partial _{\text{D$\phi $L \text{  }=\left(
\begin{array}{ccc}
 . & . & . 
 . & \partial _{\partial _j\phi _i} & . 
 . & . & . 
\end{array}
\right)_{j=1,\text{..}ni=1,\text{..}m}\text{  }L\text{       }(\text{momentum})
$$

Note that $F\in$$\mathbb{R}^m$, $P\in$$\mathbb{R}^{n\times m$. The action is given by:

$$
A[\phi ]=\int _{\Omega }L[x,\phi [x],\text{D$\phi $[x]]dx
$$

and the task is to find a function $\phi$ that minimizes the action $A[\phi ]$. Euler-Lagrange becomes m equations, one for each component of
$\phi $

$$
\partial _{\phi _i}L=\partial \cdot \partial _{\partial \phi _i}L
$$

which can be combined into one, stretching the meaning of our notation:

$$
\partial _{\phi }L=\partial \cdot \partial _{\text{D$\phi $L
$$

or, again: {``}force = time divergence of momentum{''}: 

$$
F=\partial \cdot P
$$

#### Euler-Lagrange V 4

We keep the setting of V3, with the only difference that L now depends not only on $\text{D$\phi $ =\partial \unicode{f3da}\phi$, but also on
higher derivatives $\partial ^{\unicode{f3da}k$$\unicode{f3da}\phi $. So we have  $L:\mathbb{R}^n\times \mathbb{R}\times \mathbb{R}^{n\times
m\times \text{..}\times m}\to \mathbb{R$ differentiable on a region $\Omega $ with $L\left[x, y, 
\begin{array}{cc}
 z_1,. & .,z_q 
\end{array}
\right] = 0$ on $\partial \Omega $,  V4 is mainly a notational challenge and of little physical interest. The action is given by:

$$
A[\phi ]=\int _{\Omega }L\left[x,\phi [x],\text{D$\phi $[x], D^2\phi [x],\text{..},D^q\phi [x]\right]dx
$$

and the Euler-Lagrange equation becomes

$$
\partial _{\phi }L=\partial \cdot \partial _{\text{D$\phi $L -(\partial \cdot )^2\partial _{\text{D$\phi $L+(\partial \cdot )^3\partial _{\text{D$\phi
$L-\text{...}

=\sum _{k=1}^q (-1)^{k-1}\partial ^k\cdot \partial _{\text{D$\phi $L
$$

#### Proofs

$$
\pmb{\text{V1}}: A[x]=\int _a^bL\left[x[t],\dot{x}[t]\right]dt\text{               }
$$

$$
\text{$\delta $A}[x][h]=\frac{d}{d\epsilon }\int_a^b L\left[x+\epsilon  h,\dot{x}+\epsilon  \dot{h}\right] \, dt|_{\epsilon =0}

=\int _a^b\partial _xL\left[x+\epsilon  h,\dot{x}+\epsilon  \dot{h}\right]h+\partial _{\dot{x}}L\left[x+\epsilon  h,\dot{x}+\epsilon  \dot{h}\right]\dot{h}dt|_{\epsilon
=0}
$$

$$
=\int _a^b\partial _xL\left[x+\epsilon  h,\dot{x}+\epsilon  \dot{h}\right]h-\partial _t\left(\partial _{\dot{x}}L\left[x+\epsilon  h,\dot{x}+\epsilon
 \dot{h}\right]\right)hdt|_{\epsilon =0}
$$

$$
=\int _a^b\left(\partial _xL\left[x,\dot{x}\right]-\partial _t\left(\partial _{\dot{x}}L\left[x,\dot{x}\right]\right)\right)hdt
$$

$$
=\left\langle \left.\partial _xL-\partial _t\partial _{\dot{x}}L\right|h\right\rangle
$$

$$
\pmb{\text{V2}}: A[\phi ]=\int _{\Omega }L[x,\phi [x],\partial \phi [x]]dx
$$

We integrate the action $A[\phi ]$ by parts, using that $L$vanishes on $\partial \Omega$:

$$
\frac{d}{d\epsilon }\int _{\Omega }L[x,\phi +\text{$\epsilon $h},\partial \phi +\epsilon \partial h]dV|_{\epsilon =0}
$$

$$
=\int _{\Omega }\left(\left(\partial _{\phi }\right)\mathsf{T}L h+\left(\partial _{\partial \phi }L \right)\mathsf{T}\partial h\right)dV

=\int _{\Omega }\left(\partial _{\phi }L-\left(\partial \cdot \partial _{\partial \phi }L\right)hdV\text{    }(\text{integration} \text{by} \text{parts})\right.
$$

$$
=\left\langle \left.\partial _{\phi }L-\left(\partial \cdot \partial _{\partial \phi }L\right)\right|h\right\rangle
$$

$$
\pmb{\text{V3}}: A[\phi ]=\int _{\Omega }L[x,\phi [x],\text{D$\phi $[x]]dx
$$

We proceed as in V2, noting that:

$$
\left(\partial _{\phi }L\right)\mathsf{T}h=\sum _{i=1}^m \partial _{\phi _i}L h_i
$$

$$
\left(\partial _{\text{D$\phi $L\right)\mathsf{T}\cdot \text{Dh} =\sum _{i=1}^m \partial _{\partial \phi _i}L\cdot \partial h_i
$$

We apply the one-dimensional version (V 2) to $\phi _i$ for $i=1,\text{..},m$ (note that $h:\mathbb{R}^n\to \mathbb{R}^m$) and get:

$$
\frac{d}{d\epsilon }\int _{\Omega }L[x,\phi +\text{$\epsilon $h},\text{D$\phi $+\text{$\epsilon $Dh}]dV|_{\epsilon =0}
$$

$$
=\sum _{i=1}^m \int _{\Omega }\left(\partial _{\phi _i}L\cdot h_i+\partial _{\partial \phi _i}L\cdot \partial h_i\right)dV\text{              
       }(\text{integration} \text{by} \text{parts})
$$

$$
=\sum _{i=1}^m \int _{\Omega }\left(\partial _{\phi _i}L\cdot h_i-\left(\partial \cdot \partial _{\partial \phi _i}L\right)h_i\right)dV\text{ 
}
$$

$$
=\sum _{i=1}^m \left\langle \partial _{\phi _i}L-\partial \cdot \left(\partial _{\partial \phi _i}L \right)|h_i\right\rangle
$$

$$
=\left\langle \left.\partial _{\phi }L-\partial \cdot \left(\partial _{\text{D$\phi $L \right)\right|h\right\rangle
$$

$$
\pmb{\text{V4}}: A[\phi ]=\int _{\Omega }L\left[x,\phi [x],\text{D$\phi $[x],D^2\phi [x],\text{..}, D^q\phi [x]\right]dx
$$

$$
\partial _{D^2\phi }L=\left(
\begin{array}{cccc}
 \partial _{\partial _1\text{D$\phi $ & . & . & \partial _{\partial _n\text{D$\phi $ 
\end{array}
\right)L
$$

$$
D^2h=\left(
\begin{array}{cccc}
 \partial _1D & . & . & \partial _1D 
\end{array}
\right)h
$$

We prove only the case $q=2$ and get for $A$:

$$
\frac{d}{d\epsilon }A[\phi +\text{$\epsilon $h}]|_{\epsilon =0}=\partial _{\phi }L h+\partial _{\text{D$\phi $L \cdot \text{Dh}+\partial _{D^2\phi
}L \cdot D^2h
$$

The first two terms are known from V3. It is the last (third) term we have to compute. We assume initially $\phi $ and $h$ to be scalars as in
V2.

$$
\partial _{\partial ^2\phi }L=\left(
\begin{array}{cccc}
 \partial _{\partial _1\partial \phi } & . & . & \partial _{\partial _n\partial \phi } 
\end{array}
\right)L
$$

$$
\left(\partial _{\partial ^2\phi }L\right)\mathsf{T}\cdot \partial ^2h=\sum _{k=1}^n {}_{\Omega }\partial _{\partial _k\partial \phi }L\cdot \partial
_k\partial h=\sum _{k=1}^n {}_{\Omega }\partial _{\partial _k\partial \phi }L\cdot \partial \partial _kh
$$

Integrating over $\Omega $ and integrating by parts twice gives:

$$
\sum _{k=1}^n {}_{\Omega }\int _{\Omega }\partial _{\partial _k\partial \phi }L\cdot \partial \partial _khdV =-\sum _{k=1}^n {}_{\Omega }\int _{\Omega
}\partial \cdot \left(\partial _{\partial _k\partial \phi }L\right)\cdot \partial _khdV\text{                         }(\text{vector} \text{integration}
\text{by} \text{parts})
$$

$$
=\sum _{k=1}^n {}_{\Omega }\int _{\Omega }\partial _k\left(\partial \cdot \left(\partial _{\partial _k\partial \phi }L\right)\right)\cdot hdV\text{
                    }(\text{scalar} \text{integration} \text{by} \text{parts})
$$

$$
=\int _{\Omega }\partial \cdot \left(\partial \cdot \left(\partial _{\partial ^2\phi }L\right)\right)\cdot hdV
$$

$$
=\int _{\Omega }(\partial \cdot )^2\left(\partial _{\partial ^2\phi }L\right)\cdot hdV\text{                                 }
$$

So, for scalar valued $\phi$ we have arrived at

$$
\int _{\Omega }\left(\partial _{\partial ^2\phi }L\right)\mathsf{T}\cdot \partial ^2hdV=\int _{\Omega }(\partial \cdot )^2\left(\partial _{\partial
^2\phi }L\right)\cdot hdV
$$

which implies

$$
\int _{\Omega }\left(\partial _{D^2\phi }L\right)\mathsf{T}\cdot \partial ^2hdV=\int _{\Omega }(\partial \cdot )^2\left(\partial _{D^2\phi }L\right)\cdot
hdV
$$

for valued-valued $\phi$ exactly as it did for V3. The general case requires integration by parts q times. 

## Hamilton Equation

## Classical Mechanics

## Classical Electrodynamics

## Relativistic Mechanics

## Relativistic Electrodynamics (Maxwell Equations)

## Quantum Mechanics (Schr{\" odinger Equations)}

