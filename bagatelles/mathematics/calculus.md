# First Steps in Calculus

[aus differentials.nb 14.04.2025, Taylor V1, V2, V3]: #  


> under construction
 
## Preliminaries


````{prf:theorem} Intermediate Value Theorem
:label: thr-intermediate-value
:nonumber:

Let $f: [a, b] \to \mathbb{R}$ be a continuous function, and $\mu \in \mathbb{R}$ such that  

$$
\quad \min  \{f(x)|x \in [a,b]\} \le \mu  \le \max  \{f(x)| x \in [a,b]\}
$$

Then there exists a $\xi \in [a, b]$ such that $f(\xi) = \mu$.
````

````{prf:proof} 

The proof proceeds by halving intervals.
````

````{prf:theorem} Mean Value Theorem
:label: thr-mean-value
:nonumber:

Let $f,\phi : [a, b] \to \mathbb{R}$ be continuous functions with $\phi \ge 0$.

Then there exists a $\xi \in [a, b]$ such that:

$$
\int _a^b f(x) \phi(x) \, dx = f(\xi) \int _a^b \phi(x) \, dx
$$

With $\phi = 1$ we get:

$$
\int_a^b f(x) \, dx= f(\xi) (b-a)
$$
````

````{prf:proof}
From {prf:ref}`thr-mean-value` we know that there exists a $\xi \in [a, b]$ such that $f(\xi) = \mu$.
And, $f$ being bounded on $[a,b]$, we have, for $x \in [a,b]$: 

$$
m \le f(x) \le M 
$$

The rest is straightforward: multiply by $\phi(x)$ and integrate:

$$
m \phi(x) \le f(x) \phi(x) \le M \phi(x)
$$
$$
m \int_a^b \phi(x) \, dx \le \int_a^b f(x) \phi(x) \, dx \le  M \int_a^b \phi(x) \, dx 
$$
$$
\int _a^b f(x) \phi(x) \, dx = \mu \int_a^b \phi(x) \, dx = f(\xi) \int_a^b \phi(x) \, dx   
$$

````

## Step Functions

Consider a closed interval $A = [a, b]\subset \mathbb{R}$. A **partition of A** is an 
increasing sequence $\left\{x_1, x_2, \dots, x_n\right\}$
with $a = x_1$,  $b = x_n$. Its granularity is $\max \left\{\left.x_k-x_{k-1}\right|k=1,\dots,n\right\}$. A **step function** is
constant on the intervals $\left[x_{k-1}, x_k\right]$. It is clear that the sum of two step functions is again a step function,
and the same is true for the product of a step function with a scalar. So the step functions on an interval form a vector 
space $\mathcal{S}[a, b]$. The integral of a step function $\phi$ on [a, b] is defined as 

$$
\int_a^b \phi (x) \, dx= \sum _{k=1}^n \phi _k
$$

with $\phi(x)= \phi _k$ on $\left[x_{k-1},x_k\right]$

The integration functional

$$
\int :\phi \mapsto \int_a^b \phi(x) \, dx
$$

is a linear mapping from $\mathcal{S}[a, b]$ to $\mathbb{R}$. It is also monotone:

$$
\phi \le \psi  \Rightarrow  \int_a^b \phi(x) \, dx \le \int _a^b\psi(x) \, dx
$$
for any two step functions  $\phi,\psi$.

## Integrable Functions

We extend the integration functional to a larger class of functions. The idea is that of a sandwich: 
A function $f$ defined on $[a,b]$ is squeezed between two step functions $\phi, \psi $ such that: 

$$
\phi \le f \le \psi 
$$

and:

$$
\int _a^b \psi(x) -\phi(x) \, dx \lt \epsilon
$$

If we can find such a step function for any $\epsilon > 0$ then we say that $f$ is **Riemann-integrable** or **R-integrable** for
short. This is equivalent to:

$$
\sup_{\phi \le f} \int_a^b \phi(x) \, dx = \inf_{\psi \ge f} \int_a^b \phi(x) \, dx
$$

and we can define:

$$
\int_a^b f(x) \, dx := \sup_{\phi \le f} \int _a^b \phi(x) \, dx  = \inf _{\psi \ge f} \int_a^b \phi (x) \, dx
$$

Equation (1) is a concise reformulation of equation (2), there is nothing to prove. 
An alternative definition of Riemann integrability is based on intermediate sums. 
This needs some terminology: we call $\left\{x_1, x_2, \dots , x_n\right\}$ 
a partition of $[a,b]$, $\min _{k =1,\dots ,n} \left\{x_k-x_{k-1}\right\}$ its granularity, 
and $\left\{\xi_1, \xi_2, \dots,\xi_n\right\}$ a set of intermediate points with $\left.\xi_k\in \left[x_{k-1},x_k\right.\right), (k=1,\dots,n)$. 
Here is the alternative definition: A function $f$ is R-integrable on $[a,b]$ iff, for any $\epsilon > 0$, 
we can find a $\delta > 0$, such that for any partition with granularity less than $\delta$ and any set $\xi$ of intermediate points, we have:

$$
\left|\int_a^b f(x) \, dx - \sum _{k=1}^n f\left[\xi _k\right]\right|<\epsilon
$$

This definition is needed for the proof of the main theorem. 

## Properties of Riemann Integrals

(R1) The set $\mathcal{R}[a, b]$ of R-integrable functions is a vector space. The integration functional

$$
\int :f \mapsto \int_a^b f(x) \, dx
$$

is a linear mapping from $\mathcal{R}[a, b]$ to $\mathbb{R}$. It is also monotone:

$$
f \le g \Rightarrow  \int_a^b f(x) \, dx \le \int _a^bg(x) \, dx
$$

holds for any two functions $f,g \in\mathcal{R}[a,b]$.

(R2) There are many R-integrable functions: step functions (by definition), 
continuous functions (also with finitely many discontinuities), 
monotone functions, the maximum, minimum, and product of R-integrable functions. 
A famous non-integrable function is the *Dirichlet function*, which is $1$ for rational numbers and $0$ otherwise.

(R3) $\mathcal{R}[a, b]$ is closed under the maximum norm, i.e. the uniform limit of R-integrable functions is R-integrable, 
and we can swap limit and integral:

$$
\underset{n \to \infty} \lim \int_a^b f_n(x) \, dx = \int _a^b\underset{n \to \infty} \lim f_n(x)
$$

assuming uniform convergence.

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

## Derivatives in One Dimension


````{prf:definition} First Derivative
:label: def-first-derivative
:nonumber:

Let $f:\mathbb{R}\rightarrow \mathbb{R}$

$$
f'(x) = \underset{h \to 0} \lim\frac{1}{h}(f(x+h)-f(x)) = \frac{d}{d \epsilon}f(x + \epsilon h)|_{\epsilon =0 }
$$

So:

$$
f(x+h) = f(x)+ f'(x)h + o(h)
$$

and the term $f'(x)h$ is a linear approximation of $f$ at $x$.
```` 


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
f(u)=\sum _{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k+o(|x-a|)^n
$$

which is the same as $(h = u-x)$:

$$
f(x+h)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}h^k + o(|h|^n) 
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

## Derivatives in Hilbert Spaces


````{prf:definition} Derivative in Hibert Spaces
:label: def-derivative-hilbert
:nonumber:

Let $F: U \rightarrow V$. The derivative $DF$ of $F$ at $x$ is 
A linear mapping $DF(x): U \rightarrow V$ is the derivative of $F$ in $x$, iff

$$
&DF(x) = lim_{h \to 0} \frac{1}{\| h\| }(F(x+h)-F(x))

&F(x+h) - F(x) = DF(x)(h) + o(h) = DF(x)\mathsf{T}h+o(\| h\|)
$$

If such a mapping exists, $F$ is called differentiable in $x$. 
We say that $F$ is locally approximated by $DF(x)$. 

````


````{prf:theorem} Uniqueness of the Derivative
:label: def-unique-derivative
:nonumber:
The derivative is unique. 

````
````{prf:proof} 
Assume that

$$
F(x+h)-F(x) = D(h) + o(h)

F(x+h)-F(x) = E(h) + o(h)
$$

Then:

$$
D(h) + o(h) = E(h) + o(h)
$$

which shows that $D= E$.
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



<div style="margin-bottom: 100px;"></div>
