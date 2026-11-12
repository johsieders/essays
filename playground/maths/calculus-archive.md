
### Littlewood's Principles

Every measurable set is nearly a finite union of intervals.

Every measurable function is nearly continuous.

Every convergent sequence of measurable functions is nearly uniformly convergent.


## archive

### Trying MyST


```{figure} https://github.com/rowanc1/pics/blob/main/mountains.png?raw=true
:label: my-fig
:align: center

My **bold** mountain 🏔🚠.
```

```{math}
&Ax = b

&Bx = c
```

This is a reference to [My Mountain](#my-fig)

This is a reference to [Bolzano-Weierstrass](#thr-bolzano-weierstrass)

This is a reference to ["{name}"](#thr-bolzano-weierstrass)

This is a reference to {prf:ref}`Bolzano-Weierstrass <thr-bolzano-weierstrass>`

This is a reference to {prf:ref}`{name} <thr-bolzano-weierstrass>`




:::{figure} westfield2.png
:label: my-box
:kind: box

This figure will be numbered as "Box 1"
:::

```{figure} westfield2.png
:label: my-box
:kind: box

This figure will be numbered as "Box 1"
```

:::{math}
:enumerated: false
Ax = b
:::

```{math}
&Ax = b

&Uv = w
```

```{math}
:label: 0_label
&Ax = b \\
&Uv = w
```


```{math}
:typst: root(3, x)
\sqrt[3]{x}
```

```{math}
:label: a_label
:kind: box
By=c
```

```{math}
:label: b_label
&Mx = 0 \\
&Nx = 1
```


This is a reference to {prf:ref}`a_label`

This is a reference to {prf:ref}`b_label`

This is a reference to {prf:ref}`My Label <a_label>`

This is another reference to [A_label](#a_label)

This is another reference to [B_label](#b_label)

(my-paragraph)=
This is just a paragraph!

(my-points)=
* Bullet
* points

Please see [this paragraph](#my-paragraph) and [these points](#my-points).

```{math}
\begin{equation}
Y(i,k) = 
\left\{
    \begin{array}{lr}
        ||R_{k}-R_{i}||^{2}, & \text{if } i \neq k\\
        ||\triangle_{i}||^{2}, & \text{if } i\leq k
    \end{array}
\right\} = yz
\end{equation}
```


```{math}
Y(i,k) = 
\left\{
    \begin{array}{lr}
        ||R_{k}-R_{i}||^{2}, & \text{if } i \neq k\\
        ||\triangle_{i}||^{2}, & \text{if } i\leq k
    \end{array}
\right\} = yz
```




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
