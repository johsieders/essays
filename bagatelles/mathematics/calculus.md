# First Steps in Calculus

[aus differentials.nb 14.04.2025, Taylor V1, V2, V3]: #  


> under construction
 
## Bolzano-Weierstrass and Implications

````{prf:definition} Compactness
:label: def-compactness
:nonumber:

A set $A \subset \mathbb{R}$ is called **compact**, 
iff each infinite bounded sequence of elements of A has an infinite convergent subsequence.

````
````{prf:theorem} Bolzano-Weierstrass
:label: thr-bolzano-weierstrass
:nonumber:

Each closed interval $[a, b] \subset \mathbb{R}$ is compact.

````

````{prf:proof} 

Todo

````
````{prf:definition} Sup Norm
:label: def-sup-norm
:nonumber:

Let $f: [a, b] \to \mathbb{R}$ be a bounded function.

The **sup norm** (or **uniform norm**) of $f$ is defined as:

$$
\left \lVert f \right \rVert_{\infty} = \sup \{\lvert f(x) \rvert \mid x \in [a, b]\}
$$

This is indeed a norm because:

(i) $f = 0  \Leftrightarrow \left \lVert f \right \rVert_{\infty} = 0$

(ii) $\left \lVert \alpha f \right \rVert_{\infty} = \lvert\alpha\rvert \left \lVert  f \right \rVert_{\infty}$

(iii) $\left \lVert f + g \right \rVert_{\infty} \le \left \lVert f \right \rVert_{\infty} + \left \lVert g \right \rVert_{\infty}$
````

````{prf:definition} Convergence
:label: def-convergence
:nonumber:

Let $f_n: [a, b] \to \mathbb{R}$ $(n \in \mathbb{N})$ be a sequence of functions, and $f: [a, b] \to \mathbb{R}$ another function.

**(a)** We say that $\lim_{n \to \infty} f_n = f$ **pointwise** if, for all $x \in [a, b]$, we have 

$$
\lim_{n \to \infty} \lvert f_n(x) - f(x) \rvert = 0
$$

**(b)** We say that $\lim_{n \to \infty} f_n = f$ **uniformly** if 

$$
\lim_{n \to \infty} {\left \lVert f_n - f \right \rVert_{\infty}} = 0
$$

````


````{prf:definition} Continuity
:label: def-continuity
:nonumber:

Let $f: [a, b] \to \mathbb{R}$ be a function.

**(a)** $f$ is **continuous at $x \in [a, b]$** if, for any $\epsilon > 0$, there exists a $\delta > 0$ such that $\lvert f(x + h) - f(x) \rvert < \epsilon$ whenever $\lvert h \rvert < \delta$.

**(b)** $f$ is **continuous on $[a, b]$** if $f$ is continuous at each $x \in [a, b]$.

**(c)** $f$ is **uniformly continuous on $[a, b]$** if, for any $\epsilon > 0$, there exists a $\delta > 0$ such that $\lvert f(x + h) - f(x) \rvert < \epsilon$ for all $x \in [a, b]$ whenever $\lvert h \rvert < \delta$.

````


````{prf:theorem} Continuous Functions on Compact Sets
:label: thr-continuity-on-compact-sets
:nonumber:

Let $f: K \to \mathbb{R}$ be continuous, where $K \subset \mathbb{R}$ is compact. Then:

**(a)** The continuous functions on K form a **vector space**, written as $C^0(K)$

**(b)** If $f_n: K \to \mathbb{R}$ is a sequence of continuous functions and $f_n \to f$ uniformly on $K$, 
then $f$ is continuous on $K$.

**(c)** Continuous functions are uniformly continuous on $K$.

**(d)** Continuous function assume their maximum and minimum on $K$.
````

````{prf:proof} 

Todo

````


````{prf:theorem} Intermediate Value Theorem
:label: thr-intermediate-value
:nonumber:

Let $f: [a, b] \to \mathbb{R}$ be a continuous function, and $\mu \in \mathbb{R}$ such that  

$$
\min  \{f(x) \mid x \in [a,b]\} \le \mu  \le \max  \{f(x) \mid x \in [a,b]\}
$$

Then there exists a $\xi \in [a, b]$ such that $f(\xi) = \mu$.
````

````{prf:proof} 

The proof proceeds by halving intervals.
````

## Riemann Integrals


````{prf:definition} Riemann Integrals
:label: def-riemann-integrals
:nonumber:

We consider a closed interval $[a, b] \subset \mathbb{R}$ and a function $f: [a, b] \to \mathbb{R}$. 
 
**(a) Partitions**. A **partition of $[a, b]$** is a strictly increasing sequence $X = \left\{x_0, x_1, \dots, x_n\right\}$ with $a = x_0$,  $b = x_n$.
Its **granularity** is $\mu(X) = \max \left\{\lvert x_k - x_{k-1} \rvert \mid k=1, \dots, n\right\}$. 

**(b) Riemann Sums**. Let $X$ be a partition of $[a, b]$, and $\{\xi_k \in [x_k, x_{k-1}] \mid k = 1, \ldots, n\}$ 
be a set of intermediate points. A Riemann sum is defined as:

```{math}
R(f, X, \xi) = \sum_{k=0}^{n-1} f(\xi_k)(x_{k+1} - x_{k})
```
The granularity $\mu(R)$ of a Riemann sum $R$ is the granularity $\mu(X)$ of its partition.

**(c) Riemann Integrals**. We say that $f$ is **Riemann-integrable**, or **R-integrable** for short,
and call

```{math}
\int_a^b f(x) \, dx
```
the **Riemann integral** of $f$ over $[a, b]$ 
if, for any $\epsilon > 0$, there exists a $\delta > 0$ such that for any Riemann sum $R(f, X, \xi)$ with $\mu(R) < \delta$
it holds that

```{math}
\lvert \int_a^b f(x) \, dx - R(f, X, \xi) \rvert < \epsilon
```
In other words, Riemann sums can approximate Riemann integrals to arbitrary precision. This pattern is useful when proving the integral theorems.
We state two obvious but important properties of Riemann integrals:

**(a) Monotony**

```{math}
f \le g  \Rightarrow  \int_a^b f(x) \, dx \le \int _a^b g(x) \, dx
```

holds for any two functions $f,g \in \mathcal{R}([a,b])$.

**(b) Additivity**

```{math}
\int_a^b f(x) \, dx + \int_b^c f(x) \, dx = \int_a^c f(x) \, dx
```

holds for any $f \in\mathcal{R}([a,c])$ and any $b \in [a, c]$,
on the understanding that

```{math}
\int_a^a f(x) \, dx = 0

````

````{prf:theorem} Properties of Riemann Integrals
:label: thr-riemann-integrals
:nonumber:

**(a)** The R-integrable functions over $[a, b]$ form a **vector space**, written as $\mathcal{R}([a, b])$.

**(b)** The mapping

```{math}
\int :f \mapsto \int_a^b f(x) \, dx
```

is called the **integration functional**. It is a linear mapping from $\mathcal{R}([a, b])$ to $\mathbb{R}$.

**(c)** The **uniform limit** of R-integrable functions is R-integrable, 
and we can swap limit and integral:

```{math}
\lim_{n \to \infty} \int_a^b f_n(x) \, dx = \int _a^b\lim_{n \to \infty} f_n(x) \, dx
```

This can be expressed as: $\mathcal{R}([a, b])$ is closed under the sup norm.

````

````{prf:proof} 

todo

````

````{prf:theorem} Riemann-Integrable Functions
:label: thr-riemann-integrable-functions
:nonumber:

We consider functions on a closed interval.

**(a)** Monotonous functions are R-integrable

**(b)** Continuous functions are R-integrable

**(c) (Lebesgue Criterion)** Bounded functions are R-integrable 
 if their set of discontinuities has measure zero.

````

````{prf:proof} 

todo

````

A famous non-integrable function is the *Dirichlet function*, which is $1$ for rational numbers and $0$ otherwise.



````{prf:theorem} Mean Value Theorem
:label: thr-mean-value
:nonumber:

Let $f,\phi : [a, b] \to \mathbb{R}$ be continuous functions with $\phi \ge 0$.

Then there exists a $\xi \in [a, b]$ such that:

```{math}
\int _a^b f(x) \phi(x) \, dx = f(\xi) \int _a^b \phi(x) \, dx
```

With $\phi = 1$ we get:

```{math}
\int_a^b f(x) \, dx= f(\xi) (b-a)
```

````

````{prf:proof}
From {prf:ref}`thr-mean-value` we know that there exists a $\xi \in [a, b]$ such that $f(\xi) = \mu$.
And, $f$ being bounded on $[a,b]$, we have, for $x \in [a,b]$: 

```{math}
m \le f(x) \le M 
```

The rest is straightforward: multiply by $\phi(x)$ and integrate:

```{math}
& m \phi(x) \le f(x) \phi(x) \le M \phi(x)

& \Rightarrow  m \int_a^b \phi(x) \, dx \le \int_a^b f(x) \phi(x) \, dx \le  M \int_a^b \phi(x) \, dx 

& \Rightarrow  \int _a^b f(x) \phi(x) \, dx = \mu \int_a^b \phi(x) \, dx = f(\xi) \int_a^b \phi(x) \, dx   
```

````


## Derivatives


````{prf:definition} Derivatives
:label: def-derivatives
:nonumber:

We consider a closed interval $[a, b] \subset \mathbb{R}$ and a function $f:[a, b] \rightarrow \mathbb{R}$.

**(a)** We say that $f$ is **differentiable** in $x \in [a, b]$ if the limit

```{math}
\lim_{h \to 0} \frac{1}{h}(f(x+h)-f(x)) = f'(x)
```
exists. $f'(x)$ is called the derivative of $f$ at $x$. We note that


```{math}
f(x+h) = f(x) + f'(x) \, h + o(h)
```

which means that the term $f'(x) \, h$ is a linear approximation of $f$ at $x$.

**(c)** We say that $f$ is **continuously differentiable** at $x \in [a, b]$ if it is differentiable at $x$
and its derivative $f'$ is continuous at $x$.

**(b)** We say that $f$ is **differentiable** on $[a, b]$ if it is differentiable for all $x \in [a, b]$.
$f'$ is called the derivative of $f$ on $[a, b]$. 

**(c)** We say that $f$ is **continuously differentiable** on $[a, b]$ if it is differentiable on $[a, b]$
and its derivative is continuous on $[a, b]$.

**(d)** Higher order derivatives are analogously defined and denoted by $f', f'', f^{(3)}, \ldots,   f^{(n)}$.
A function is said to be $n$ times continuously differentiable if $f^{(n)}$ is continuous on $[a, b]$. 
```` 


````{prf:theorem} Properties of Derivatives
:label: thr-properties-derivatives
:nonumber:

**(a)** The continuously differentiable functions over $[a, b]$ form a **vector space**, written as $C^1 ([a, b])$.
Likewise, the $n$ times continuously differentiable functions over $[a, b]$ form a vector space, written as $C^n ([a, b])$.

**(b)** The mapping

```{math}
\partial :f \mapsto f'
```

is called the **differential operator**. It is a linear mapping from $C^1 ([a, b])$ to $C^0 ([a, b])$.

Likewise, the mapping

```{math}
\partial^2 :f \mapsto f''
```

is called the **differential operator of second order**. It is a linear mapping from $C^2 ([a, b])$ to $C^0 ([a, b])$.
Higher order differential operators $\partial^n$ are analogouosly defined.

**(c)** The **uniform limit** of differentiable functions is differentiable, 
and we can swap limit and differentiation:

```{math}
\lim_{n \to \infty} \partial f_n = \partial \lim_{n \to \infty} f_n
```
Likewise, we have:

```{math}
\lim_{n \to \infty} \partial^n f_n = \partial^n \lim_{n \to \infty} f_n
```

This can be expressed as: $C^n ([a, b])$ is closed under the sup norm.

````

````{prf:proof} 

todo

````


````{prf:theorem} Differentiation Rules
:label: thr-differentiation-rules
:nonumber:

Let $f, g \in C^1([a,b])$


**(a)** Product Rule
Let $f, g \in C^1([a,b])$. Then

```{math}
f'g' = f'g + fg'
```

**(b)** Chain Rule
Let $f \in C^1([a,b])$ and $g \in C^1([\min(f), \max(f)])$. Then

```{math}
(f \circ g)' = (f' \circ g) \, g'
```
````

````{prf:proof} 

todo

````

## Main Theorem of Calculus

````{prf:theorem} Main Theorem of Calculus
:label: thr-main-theorem-calculus
:nonumber:

Let $f \in \mathcal{R}([a,b])$ and $F$ be the **primitive** of $f$, defined by

```{math}
F(x) = \int_a^x f(y) \, dy 
```

Then:

**(a)**
```{math}
F(b) - F(a)  = \int_a^b f(y) \, dy 
```

**(b)**
If $f$ is continuous in $x \in [a, b]$, then $F$ is differentiable in $x$ and it holds that

```{math}
F'(x) = f(x)
```

````

````{prf:proof}

todo

````

## Taylor Theorem

Derivatives are about local changes: How does a function $f$ behave in a neighbourhood of some point $x$? The Taylor series allows us to express
$f(x+h)$ in terms of the higher derivatives of $f$ with arbitrary precision. It comes in three varieties that differ in the remainder term. In
what follows, $A$ is an open interval, and $x, u \in A$.

````{prf:theorem} Taylor V1
:label: thr-taylor-v1
:nonumber:

Let $f \in  C^{n+1}(A)$. Then:

$$
f(u)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{1}{n!}\int _x^u (u-t)^n f^{(n+1)}(t)dt
$$
````


````{prf:theorem} Taylor V2
:label: thr-taylor-v2
:nonumber:
Let $f \in  C^{n+1}(A)$. Then there exists a $\xi \in [x,u]$ such that:

$$
f(u)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{f^{(n+1)}(\xi)}{(n+1)!}(u-x)^{n+1}
$$

which is the same as $(h = u-x)$:

$$
f(x+h)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}h^k + \frac{f^{(n+1)}(\xi)}{(n+1)!}h^{n+1}
$$
````

````{prf:theorem} Taylor V3
:label: thr-taylor-v3
:nonumber:

Let $f \in  C^n(A)$. Then:

$$
f(u)=\sum _{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k+o(\lvert x-a\rvert^n)
$$

which is the same as $(h = u-x)$:

$$
f(x+h)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}h^k + o(\lvert h\rvert^n)
$$

````

````{prf:proof}

**V1:**

Proof by induction, using the main theorem of integration and integration by parts:

$$
f(u) - f(x) &= \int _x^u f'(t)dt  = - \int _x^u\frac{d(u-t)}{dt}f'(t)dt

& = (u-x)f'(x) + \int _x^u(u-t)f''(t)dt = \text{ ... }

& =\sum _{k=1}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{1}{n!}\int _x^u (u-t)^n f^{(n+1)}(t)dt
$$

**V2:** Using the mean value theorem, we find a $\xi \in [x, u]$ such that
 
$$

\frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}(t)dt = \frac{f^{(n+1)}(\xi)}{n!}\int_x^u (u-t)^n dt = \frac{f^{(n+1)}(\xi)}{(n+1)!}(u-x)^{n+1}

$$

**V3**

$$
f(u) &= \sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{f^{(n)}(\xi) - f^{(n)}(x)}{n!}(u-x)^n

&= \sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + o((u-x)^n)
$$

````



## Little o, Big O

Little o means: $f$ tends to $0$ faster than $g$, or, equivalently, $f/g$ tends to $0$:

$$
f=o(g) \Longleftrightarrow \lim\frac{f(x)}{g(x)} = 0  
$$

$$
f=o(1) \Longleftrightarrow \lim f(x) = 0 
$$

$$
f=o(x^n) \Longleftrightarrow \lim \frac{f(x)}{x^n} = 0
$$

Big O means: $f$ grows not faster than $g$:

$$
f = O(g) \Longleftrightarrow \frac{f(x)}{g(x)} \le C 
$$
$$
f = O(1) \Longleftrightarrow f(x)\le C 
$$

$$
f = O(x^n) \Longleftrightarrow f(x)\le C x^n
$$


## References

```{bibliography}
:filter: docname in docnames
```








## archive

````{prf:proof}
The properties (R1), (R2) and (R3) follow easily from (3), (R5) follows easily from (R4), and the proof of (R4) is the sting of this chapter. Let's
do it in this order.
(R1) We show that $f+g$ is integrable if $f$ and $g$ are. The proof follows a very simple pattern that often works: If $f$ and $g$ are integrable, 
then there are step functions $\phi$, $\psi$, $\rho$, and $\sigma$ such that $\phi \le f \le \psi$ and $\rho \le g \le \sigma$. So

$$
\phi  + \rho \le f+g \le \psi  + \sigma
$$

and

$$
\int _a^b \psi(x)-\phi(x) \, dx < \epsilon  \text{ and } \int _a^b \rho (x)-\sigma(x) \, dx < \epsilon
$$

Using the additivity of the integral for step functions, we get:

$$
\int _a^b(\psi (x)+\rho (x))-(\phi (x)+\sigma (x))dx < 2 \epsilon
$$

Inequalities (4) and (5) show that $f+g$ is integrable. 
The proof for the integrability of $\lambda f$ for $\lambda \in \mathbb{R}$ is analogous. 

(R2) We show that a function continuous on $[a, b]$ is integrable. 
Intervals in $\mathbb{R}$, rectangles in $\mathbb{R}^2$, cubes in $\mathbb{R}^3$ and $\mathbb{R}^k$. 
The measure (or volume) $m[C]$ of a cube $C$ with edge length $\left[x_1, x_2, \dots,x_k\right]$ is:

$$
m[C] := x_1 x_2 \cdots x_k
$$

The characteristic function $X_A$ of a set $A$ is $1$ on $A$ and $0$ everywhere else.
Step-functions take on finitely many values, are constant on cubes (of any size). 
Let $\psi$ be a step function defined on disjoint cubes $C_i$
with $\psi(x) = \psi_{i}$ on $C_{i}$, $(i=1,\dots, N)$. 
The integral of $\psi$ is defined as:

$$
\int _{\mathbb{R}^k}\psi(x) \, dx := \sum _{i=1}^N \psi_i m\left[C_i\right]
$$

For stepwise functions $\psi$ and $\phi$, and from(XX) $\alpha, \beta \in \mathbb{R}$ it is clear that:

$$
\int _{\mathbb{R}^k}\alpha \phi(x) + \beta \psi (x) \, dx = \alpha \int_{\mathbb{R}^k}\phi(x) \, dx + \beta \int_{\mathbb{R}^k}\psi(x) \, dx
$$

For some functions $f$ it turns out that: 

$$
\sup_{\psi \le f}\int_{\mathbb{R}^k} \psi(x) \, dx = \inf _{\psi \ge f}\int_{\mathbb{R}^k} \psi(x) \, dx
$$

If this is true, $f$ is said to be Riemann-integrable (or integrable for short), and we define

$$
\int _{\mathbb{R}^k}f(x) \, dx := \sup _{\psi \le f}\int _{\mathbb{R}^k}\psi (x)dx = \inf _{\psi \ge f} \int _{\mathbb{R}^k} \psi(x) \, dx
$$

All step functions are obviously integrable, and so are continuous functions with compact support (proof!). A famous non-integrable function is the
function $r$ defined on the interval $[0, 1]$ with $r(x) = 1$ if $x \in \mathbb{Q}$ and $0$ otherwise. 

Let $\left(\psi _n\right)_{n\in \mathbb{N}}$ be a sequence of step functions converging uniformly towards some function $f$:

$$
\underset{n\to \infty }\lim \psi _n = f
$$

Then $f$ is integrable and it holds that

$$
\underset{n\to \infty }\lim \int_{\mathbb{R}^k} \psi_n(x) \, dx = \int _{\mathbb{R}^k}f(x) \, dx
$$

This can be seen as follows:

to do!

Now, let $f$ and $g$ be integrable and $\alpha, \beta \in \mathbb{R}$. Then $\alpha f + \beta g$ is integrable,
and it holds that

$$
\int _{\mathbb{R}^n}\alpha f(x) + \beta g(x) \, dx = \alpha \int_{\mathbb{R}^n}f(x) \, dx + \beta \int_{\mathbb{R}^n}g(x) \, dx
$$

````


An alternative definition of Riemann integrability is based on intermediate sums. 
This needs some terminology: we call $\left\{x_1, x_2, \dots , x_n\right\}$ 
a partition of $[a,b]$, $\min _{k =1,\dots ,n} \left\{x_k-x_{k-1}\right\}$ its granularity, 
and $\left\{\xi_1, \xi_2, \dots,\xi_n\right\}$ a set of intermediate points with $\left.\xi_k\in \left[x_{k-1},x_k\right.\right), (k=1,\dots,n)$. 
Here is the alternative definition: A function $f$ is R-integrable on $[a,b]$ iff, for any $\epsilon > 0$, 
we can find a $\delta > 0$, such that for any partition with granularity less than $\delta$ and any set $\xi$ of intermediate points, we have:

$$
\left\lvert\int_a^b f(x) \, dx - \sum _{k=1}^n f\left[\xi _k\right]\right\rvert<\epsilon
$$


<div style="margin-bottom: 100px;"></div>
