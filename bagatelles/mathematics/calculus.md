# First Steps in Calculus

*Johannes Siedersleben, January 2026*

## Introduction

"All men are mortal. Socrates is a man, so Socrates is mortal." 
Here, we are **applying** a true statement ("all men are mortal") to a particular object ("Socrates"), 
and arriving at the conclusion "Socrates is mortal", another true statement.
Are you impressed? Probably not. Let's try something better.

"A function is differentiable if the {prf:ref}`derivative <def-derivatives>` exists."
**Applying** this definition (a true statement) to the product of two differentiable functions 
produces the {prf:ref}`product rule  <thr-differentiation-rules>` in two lines of straightforward calculations, proving
that the product is indeed differentiable (another true statement). **Integrating the product rule** gives
the {prf:ref}`integration-by-parts rule <thr-integration-rules>`.
{prf:ref}`Taylor's theorem <thr-taylor>` is proven by **applying** integration by parts as many times as you like
or are allowed to, and this is how the power series in Taylor's formula originates.
What does it mean to "integrate the product rule"? This is another way of saying "**apply** the {prf:ref}`main theorem of calculus <thr-main-theorem-calculus>`. 
To prove the latter, you **apply** the {prf:ref}`mean value theorem of integration <thr-mean-value-integration>`
and that of {prf:ref}`differentiation <thr-mean-value-differentiation>`, 
and you prove these by **applying** the {prf:ref}`intermediate value theorem <thr-intermediate-value>` 
which, in turn, is proven by **applying** the {prf:ref}`theorem on nested intervals <thr-nested-intervals>`,
which you prove by **applying** the {prf:ref}`theorem of Bolzano-Weierstrass <thr-bolzano-weierstrass>`. 
And this relies on the fact that $\mathbb{R}$ is complete: there are no holes in $\mathbb{R}$, every Cauchy sequence converges.

In the companion paper {ref}`From Naturals to Reals <naturals-to-reals>`, we present $\mathbb{R}$ as the smallest complete field containing the rationals $\mathbb{Q}$.
This paper presents a straight path with no gaps from the starting point ($\mathbb{R}$ is complete) to two pivotal results:

1. The {prf:ref}`mean value theorem of integration <thr-mean-value-integration>`, which states that differentiation and integration are inverse operations.
2. {prf:ref}`Taylor's theorem <thr-taylor>`.

These results will, in turn, be the starting point of future papers. 

I was led by these rules:

1. No detours, no blind alleys, no embellishments. Every definition, every theorem serves a purpose.
2. No proof when it's obvious. Example: Proving the linearity of differentiation or integration is a useful exercise, but it is boring and unilluminating. I left it out.
3. No proof when it's not part of the story. Example: Proving the {prf:ref}`Lebesgue criterion <rem-lebesgue-criterion>` is hard work and not essential for what follows.
   I left the proof out, but the criterion is too interesting to be passed over.
4. Full proofs otherwise. The chain of reasoning is complete from the start to the end. This was the point of my opening example.

We restrict ourselves to finite intervals $[a, b]$ for no other reason than to keep the paper short.
The backbone of our story is formed by the vector spaces $\mathcal{R}([a, b])$ of Riemann-integrable functions, 
and the spaces $C^n([a, b])$ of $n$ times continuously differentiable functions.
The integral operator **$\int$** shifts functions to the right from $\mathcal{R}([a, b])$ to $C^{0}([a, b])$ and further on to $C^{n}([a, b])$, 
and the differential operator **$\partial$** shifts them to the left from $C^n([a, b])$ to $C^{n-1}([a, b])$, see [The Backbone](#diagram-1.png).

Note: I prefer the symbol $\partial$ for the differential operator over the more frequent $D$. 

```{figure} calculus-diagram-1.png
:align: center

The Backbone
```

```{figure} calculus-diagram-2.png
:align: center

The Roadmap
```

Here is the roadmap: After warming up with {ref}`Zeno's paradoxes <zeno-paradoxes>`, we study the {ref}`topology <topology-of-r>` of $\mathbb{R}$ and
{ref}`compact sets <compact-sets>` 
including the {prf:ref}`Bolzano-Weierstrass theorem <thr-bolzano-weierstrass>`, 
which is indispensable whenever sequences are supposed to converge. 

We then turn to {ref}`continuous functions <continuous-functions>`. On compact sets, they are uniformly continuous and 
form a vector space closed under the sup-norm. A key result is the {prf:ref}`intermediate value theorem <thr-intermediate-value>`.

The next two chapters are independent and can be read in any order.

{ref}`Riemann integrals <riemann-integrable-functions>` can be introduced 
by either {prf:ref}`Riemann sums <def-riemann-integrals-sums>` or {prf:ref}`step functions <def-step-functions>`.
We show the equivalence of these two approaches. 
They are equally important; later on, we will use whichever is more appropriate.
Riemann-integrable functions also form a vector space closed under the sup-norm. 
A key result is the {prf:ref}`mean value theorem of integration <thr-mean-value-integration>`, which depends on the intermediate value theorem.
 
In the chapter on {ref}`differentiable functions <differentiable-functions>`, 
we prove the well-known {prf:ref}`differentiation rules <thr-differentiation-rules>`.
A key result is the {prf:ref}`mean value theorem of differentiation <thr-mean-value-differentiation>`, 
which also depends on the intermediate value theorem.

Integration and differentiation are then combined in the {prf:ref}`mean value theorem of integration <thr-mean-value-integration>`. 
Its proof is a simple application of the mean value theorems of integration and differentiation. 
The {prf:ref}`integration rules <thr-integration-rules>` then follow effortlessly from the differentiation rules and the main theorem.
We see that, for the limit of differentiable functions to be differentiable, the **derivatives** must be uniformly convergent;
the vector spaces $C^{n}([a, b])$ are **not** closed under the sup-norm.

The apogee of this short paper is {prf:ref}`Taylor's theorem <thr-taylor>`, which is proven by a simple application of integration by parts.
 
This material has been published many times, see {cite}`courant1955differential`, {cite}`rudin1976principles`, {cite}`heuser2009analysis1`, 
{cite}`forster2016analysis1`, to name but a few prominent examples.


(zeno-paradoxes)=
## Zeno's Paradoxes

Calculus is all about infinitesimally small numbers, a subject the Greeks didn’t understand. 
Zeno’s paradoxes aren’t paradoxes anymore; today, they are easily explained.

### Achilles and the Tortoise

Imagine the tortoise and Achilles starting a race with the tortiose $10$ metres in the lead, 
and Achilles running ten times as fast as the tortoise.  
By the time Achilles has covered $10$ meters, the tortoise is $1$ metre in the lead.  
By the time Achilles has covered $11$ meters, the tortoise is $0.1$ metres in the lead.  
By the time Achilles has covered $11.1$ meters, the tortoise is $0.01$ metres in the lead.  
And so on. Will Achilles ever overtake the tortoise?

Of course, he will after $11.111\ldots$ metres because

```{math}
\sum_{k=0}^\infty \alpha^k = \frac{1}{1-\alpha}
```
which gives, with $\alpha = 1/10$:

```{math}
10 + \sum_{k=0}^\infty \frac{1}{10^k} = 10 + \frac{10}{9} = 11.111\ldots
```
Without Zeno, the computation would have been easier: Let $x(t) = 10t$ be Achilles' position at time $t$, and $y(t) = 10 + t$ that of the tortoise.
The equation $x(t) = y(t)$ has the solution $t = 10/9 = 1.111 \ldots$.

What seemed paradoxical to Zeno is that the sum of an infinite number of terms could be finite.
However, all he did was a mental divison of a finite distance into infinitely 
many parts, the sum of which is obviously the distance given.
Today infinite sums are well understood; there is nothing paradoxical about them.

### The Standing Arrow
Imagine an arrow flying along a straight line. At any given moment, the arrow occupies a specific position in space.
How can it ever move? The answer is given by the theory of integrals we are going to study in detail. 
Here is a sketch: 
Let $v(t)$ be the speed of the arrow at time $t$. 
We divide a given time span $[a, b]$ into tiny, but finitely many 
subintervals ${[t_k, t_{k+1}]}$.
Then, the distance $d$ traveled in the time interval $[a, b]$ is approximated to any accuracy by the so-called Riemann sum

```{math}
d \approx \sum_{k=0}^n v(t_k) (t_{k+1} - t_k)
```
While the first paradox was that a sum with an infinite number of terms could be finite,
this paradox is that the sum of a large number of arbitrarily small terms does not vanish. 
Assigning meaningful values to such sums is what integration theory is all about.

(topology-of-r)=
## Topology of $\mathbb{R}$

````{prf:definition} Topology of $\mathbb{R}$
:label: def-topology-R
Let $A \subseteq \mathbb{R}$ and $a \in A$.

**(a) Inner Points, Interior, Open Sets**

We call $a$ an **inner point** of $A$, iff

```{math}
\exists \epsilon > 0: U_{\epsilon}(a) \subseteq A
```
The **interior** of $A$, denoted be $A°$, is the set of all interior points of $A$.
We clearly have $A° \subseteq A$.
The set $A$ is **open** iff $A° = A$.

**(b) Limit Points, Closure, Closed Sets**

We call $a$ an **limit point** of $A$, iff

```{math}
\forall \epsilon > 0: U_{\epsilon}(a)- \{a\} \cap A \neq \emptyset
```
This can expressed as: $a$ is the limit of a sequence $\{a_n\}$ of points in $A$ with $a_n \neq a$.

The set of limit points of $A$ is denoted by $A'$.

The set $A$ is **closed** iff its complement $A^c$ is open.

The **closure** of $A$, denoted by $\bar{A}$, is the smallest closed set containing $A$

We clearly have $A \subseteq \bar{A}$.

````

````{prf:Lemma} Limit Points
:label: lem-open-closed
Let $A \subseteq \mathbb{R}$. Then:

```{math}
A' \subseteq \bar{A}
```
````

````{prf:proof}

Let $a \in A' - A$. Then, by definition:

```{math}
\forall \epsilon > 0: U_{\epsilon}(a) \cap A \neq \emptyset
```
Let $B \supseteq A$ be closed, so $B^c \subseteq A^c$ is open. Assume that $a \in B^c$. Then, by definition:

```{math}
\exists \epsilon > 0: U_{\epsilon}(a) \subseteq B^c \subseteq A^c
```
which implies the contradiction $U_{\epsilon}(a) \cap A = \emptyset$, 
therefore $a \in B$ for every closed superset of $A$, hence $a \in \bar{A}$.
````


````{prf:theorem} Nested Intervals
:label: thr-nested-intervals

Let $\{x_n\}$ be a non-decreasing, $\{y_n\}$ a non-increasing real sequence satisfying: 

```{math}
:label: equ-nested-intervals-1

&\forall n \in \mathbb{N}: x_n \le y_n \\
\\
&\lim_{n \to \infty} (y_n - x_n) = 0
```
Then $\{x_n\}$ and $\{y_n\}$ converge to the same point:

```{math}
\lim_{n \to \infty} x_n = \lim_{n \to \infty} y_n
```
This means that the sequence of intervals $\{[x_n, y_n]\}$ contracts to one point.
````

````{prf:proof}
We show that $\{x_n\}$ is a Cauchy sequence. For $m > n$, we have:

```{math}
x_n \le x_m \le y_m \le y_n
```
Subtracting $x_n$ gives:

```{math}
0 \le x_m - x_n \le y_n - x_n
```
which is what we want because of {eq}`equ-nested-intervals-1`.
The sequence $\{y_n\}$ is a Cauchy sequence by the same argument, 
and the limits of $\{x_n\}$ and $\{y_n\}$ coincide, again because of {eq}`equ-nested-intervals-1`.
````

(compact-sets)=
## Compact Sets

````{prf:definition} Compact Sets
:label: def-compact

A set $A \subset \mathbb{R}$ is called **compact**
iff each bounded sequence of elements of A has a convergent subsequence.
````


````{prf:Lemma} Completeness, Compactness 
:label: lem-compactness-completeness

**a)** Compact sets are complete.

**b)** Closed subsets of complete sets are complete.

**c)** Closed subsets of compact sets are compact.
````

````{prf:proof}

**a)** Let $A \subseteq \mathbb{R}$ be compact and $\{x_n\}$ a Cauchy-sequence of elements of $A$. 
Then, the set $\{x_n \mid n \in \mathbb{N} \}$ is bounded and has a subsequence that converges to some $x \in A$.
Therefore $\{x_n\}$, being a Cauchy-sequence, converges itself to $x$.

**b)** Let $A \subseteq \mathbb{R}$ be complete, $B \subseteq A$ be closed, and $\{x_n\}$ a Cauchy-sequence of elements of $B$.
Then $\{x_n\}$ converges because $A$ is complete, and it converges to some $x \in B$, because $B$ is closed.

**c)** Let $A \subseteq \mathbb{R}$ be compact, $B \subseteq A$ be closed, and $\{x_n\}$ a sequence of elements of $B$.
Then $\{x_n\}$ has a convergent subsequence because $A$ is compact, 
and this subsequence converges to some $x \in B$, because $B$ is closed.
````

````{prf:theorem} Supremum, Infimum
:label: thr-supremum-infimum

Let $A \subset \mathbb{R}$ bounded above. Then there is a least upper bound of $A$, called supremum of $A$, or $\sup A$.  
Let $A \subset \mathbb{R}$ bounded below. Then there is a greatest lower bound of $A$, called infimum of $A$, or $\inf A$. 
````
````{prf:proof} 
We prove the assertion for the supremum. Let $b_0$ be an upper bound of $A$ and $a_0 \in A$ any element.
We define nested intervals $\{[a_n, b_n]\}$ as follows:

```{math}
\\
&a_{n+1} = 
\left\{
    \begin{array}{lr}
        a_n & \text{ if } (a_n + b_n)/2 \notin A \\
        (a_n + b_n)/2 & \text{ if } (a_n + b_n)/2 \in A 
    \end{array}
\right .  \\
\\

&b_{n+1} = 
\left\{
    \begin{array}{lr}
        (a_n + b_n)/2 & \text{ if } (a_n + b_n)/2 \notin A \\
        b_n & \text{ if } (a_n + b_n)/2 \in A
    \end{array}
\right .
```

The sequence $\{[a_n, b_n]\}$ fulfills the prereqisites of {prf:ref}`thr-nested-intervals`. It therefore contracts
to some point $b$ which is an upper bound of $A$ because all $b_n$ are. And no upper bound of $A$ can be smaller than $b$
because, for any $\epsilon > 0$, there are $a_n \in A$ with $a_n > b - \epsilon$.
````

````{prf:theorem} Bolzano-Weierstrass
:label: thr-bolzano-weierstrass

**a)** Every bounded and monotonous sequence of reals is convergent. 

**b)** Each closed interval $[a, b] \subset \mathbb{R}$ is compact.
````

````{prf:proof}
**a)** Let $\{x_n\}$ be a non-decreasing bounded sequence with $s = \sup \{x_n \mid n \in \mathbb{N} \}$. 
This supremum exists thanks to {prf:ref}`thr-supremum-infimum`. We show that $\{x_n\}$ is a Cauchy-sequence.
By the definition:

```{math}
\forall \epsilon > 0 : \exists n(\epsilon) : s - x_{n(\epsilon)} < \epsilon
```
hence, by monotony:
```{math}
\forall \epsilon > 0 : \exists n(\epsilon) :\forall n \ge n(\epsilon)  : s - x_{n} < \epsilon
```
The triangular inequality gives us, for $m,n > n(\epsilon)$

```{math}
 \left |x_{m} - x_{n} \right | \le \left |x_{m} - s \right | + \left |s - x_{n} \right | < 2\epsilon
```
hence:
```{math}
\forall \epsilon > 0 : \exists n(\epsilon) :\forall n, m \ge n(\epsilon)  : \left |x_{m} - x_{n} \right | < 2\epsilon
```

So, $\{x_n\}$ is a Cauchy sequence and converges to $s$ by construction.

**b)** Let $[a, b] \subset \mathbb{R}$ be a closed interval and $\{x_n\}$ a sequence in $[a, b]$. We are going to show that
$\{x_n\}$ contains a monotounous subsequence that is bounded because everything happens in $[a, b]$.  

We call $m$ a *peak*, if $x_n < x_m$ for all $n > m$. If there are infinitely many peaks $\{m_k\}$ then $\{x_{m_k}\}$ is decreasing, 
and we are done. If not, there is a last peak $m^*$, and an index $n_1 > m^*$ that is not a peak. 
$n_1$ being not a peak, there must be an index $n_2 > n_1$ with $x_{n_2} > x_{n_1}$. And so on. 
We end up with an increasing sequence $\{x_{n_k}\}$, which proves the theorem.
````

(continuous-functions)=
## Continuous Functions

````{prf:definition} Sup Norm
:label: def-sup-norm

Let $f: [a, b] \to \mathbb{R}$ be a bounded function.

The **sup norm** (or **uniform norm**) of $f$ is defined as:

```{math}
\left \lVert f \right \rVert_{\infty} = \sup \{\lvert f(x) \rvert \mid x \in [a, b]\}
```
````

````{prf:remark} Sup Norm
:label: rem-sup-norm

The sup norm indeed a norm because:

(i) $f = 0  \Leftrightarrow \left \lVert f \right \rVert_{\infty} = 0$

(ii) $\left \lVert \alpha f \right \rVert_{\infty} = \lvert\alpha\rvert \left \lVert  f \right \rVert_{\infty}$

(iii) $\left \lVert f + g \right \rVert_{\infty} \le \left \lVert f \right \rVert_{\infty} + \left \lVert g \right \rVert_{\infty}$

The proofs are trivial.
````

````{prf:definition} Convergence of Functions
:label: def-convergence-functions

Let $f_n: [a, b] \to \mathbb{R}$ $(n \in \mathbb{N})$ be a sequence of functions, and $f: [a, b] \to \mathbb{R}$ another function.

**(a)** We say that $\lim_{n \to \infty} f_n = f$ **pointwise** if, for all $x \in [a, b]$, we have 

```{math}
\lim_{n \to \infty} \left | f_n(x) - f(x) \right | = 0
```

**(b)** We say that $\lim_{n \to \infty} f_n = f$ **uniformly** iff 

```{math}
\lim_{n \to \infty} {\left \lVert f_n - f \right \rVert_{\infty}} = 0
```
````

````{prf:definition} Continuity
:label: def-continuity

Let $f: [a, b] \to \mathbb{R}$ be a function.

**(a)** $f$ is **continuous at $x \in [a, b]$** iff

```{math}
\forall \epsilon > 0 : \exists \delta > 0 : \forall h \in [-\delta, \delta ]: \left | f(x + h) - f(x) \right | < \epsilon 
```

**(b)** $f$ is **continuous on $[a, b]$** iff $f$ is continuous at each $x \in [a, b]$.

**(c)** $f$ is **uniformly continuous on $[a, b]$** iff

```{math}
\forall \epsilon > 0 : \exists \delta > 0 : \forall x \in [a, b], h \in [-\delta, \delta]: \left | f(x + h) - f(x) \right | < \epsilon 
```
For $f$ to be uniformly continuous we require that one $\delta$ do the job for the whole interval $[a, b]$.
````

````{prf:theorem} Continuous Functions on Intervals
:label: thr-continuity-on-compact-sets

Let $f: [a, b] \to \mathbb{R}$ be continuous. Then:

**(a)** The continuous functions on $[a, b]$ form a **vector space**, written as $C^0([a, b])$

**(b)** The uniform limit of continuous functions is continuous, or: $C^0([a, b])$ is closed under the sup-Norm.

**(c)** Continuous function assume their maximum and minimum on $[a, b]$.

**(d)** Continuous functions are uniformly continuous on $[a, b]$.
````

````{prf:proof}
Assertion (a) is obvious. We prove (b) with the triangular inequality. 
For (c) and (d) we need [Bolzano-Weierstrass](#thr-bolzano-weierstrass).

**(b)** 
Let $\{f_n\}$ be a sequence of functions on $[a, b]$ that converges uniformly to $f$.
Let $\epsilon >0$, $x \in [a, b]$, $n \in \mathbb{N}$ such that $\lVert f_n - f \rVert_{\infty} < \epsilon$ and $\delta > 0$ 
such that $ \lvert f_n(x+h) - f_n(x) \rvert < \epsilon$ whenever $\lvert h \rvert < \delta$. Then:

```{math}
& \lvert f(x+h) - f(x) \rvert \\
& \le \lvert f(x+h) - f_n(x+h) \rvert + \lvert f_n(x+h) - f_n(x) \rvert + \lvert f_n(x) - f(x) \rvert \\
& < 3 \epsilon
```

**(c)**
We prove the assertion for the maximum. Let $M = \sup\{f(x) \mid x \in [a, b] \}$. Then, for each $n \in \mathbb{N}$, 
there is a $x_n \in [a, b]$ such that $M - f(x_n) < 1/n$.
The sequence $\{x_n\}$ has a subsequence that converges to some $x \in [a, b]$
because $[a, b]$ is compact, and we have $f(x) = M$ because $f$ is continuous at $x$.

**(d)** 
We prove the assertion by contradiction. Assume $f$ to be not uniformly continuous. 
Then, for any $\epsilon > 0$, there exist two sequences $\{x_n\}, \{y_n\}$ such that

```{math}
\lvert x_n - y_n \rvert < \frac{1}{n}
```
and

```{math}
\lvert f(x_n) - f(y_n) \rvert > \epsilon
```
But $\{x_n\}$ has a subsequence $\{x_{n_k}\}$ that converges to some $x \in [a, b]$,
and $\{y_{n_k}\}$ necessarily converges to the same $x$, So, $f$ is not continuous in $x$, which is a contradiction.
````

````{prf:theorem} Intermediate Value Theorem
:label: thr-intermediate-value

**(a)** Let $f: [a, b] \to \mathbb{R}$ be a continuous function with $f(a) < 0$ and $f(b) > 0$.
Then there exists a $\xi \in [a, b]$ such that $f(\xi) = 0$.

**(b)** Let $f: [a, b] \to \mathbb{R}$ be a continuous function and $\mu$ such that
```{math}
\min\{f(x) \mid x \in [a, b]\} \le \mu \le \max\{f(x) \mid x \in [a, b]\}
```
Then there exists a $\xi \in [a, b]$ such that $f(\xi) = \mu$.
````
````{prf:proof}
 
**(a)** We define nested intervals $\{[a_n, b_n]\}$ as follows: 

```{math}
&a_0 = a \\
&b_0 = b \\
\\
&a_{n+1} = 
\left\{
    \begin{array}{lr}
        a_n & \text{ if } f((a_n + b_n)/2) \ge 0 \\
        (a_n + b_n)/2 & \text{ if } f((a_n + b_n)/2) < 0
    \end{array}
\right .  \\
\\

&b_{n+1} = 
\left\{
    \begin{array}{lr}
        (a_n + b_n)/2 & \text{ if } f((a_n + b_n)/2) \ge 0 \\
        b_n & \text{ if } f((a_n + b_n)/2) < 0
    \end{array}
\right .
```

Th sequence $\{[a_n, b_n]\}$ fulfills the prerequisites of {prf:ref}`thr-nested-intervals`.
It therefore contracts to some point $\xi \in [a, b]$. We observe that, for all $n$:

```{math}
f(a_n) < 0 \le f(b_n)
```

This implies, because $f$ is continuous:

```{math}
f(\xi) = 0
```

**(b)** follows from (a): Choose $a_0, b_0 \in [a, b]$ such that $f(a_0) = \min\{f(x) \mid x \in [a, b]\}$
and $f(b_0) = \max\{f(x) \mid x \in [a, b]\}$. Assume w.l.o.g. that $a_0 < b_0$ and replace $f$ with $f - \mu$.
````

(riemann-integrable-functions)=
## Riemann-Integrable Functions

There are (at least) two equivalent ways of introducing Riemann integrals: One is based on Riemann sums (or intermediate sums), 
the other on step functions (or lower and upper sums). While these approaches look very similar, 
their equivalence, shown in {prf:ref}`thr-riemann-integrals`, is not obvious.
Step functions are useful when we prove the integrability of certain functions, 
and Riemann sums are needed for the main theorem of calculus and, later on, for the famous integral theorems of Gauss and Stokes.

````{prf:definition} Riemann Integrals by Riemann Sums
:label: def-riemann-integrals-sums

We consider a closed interval $[a, b] \subset \mathbb{R}$ and a function $f: [a, b] \to \mathbb{R}$.

**(a)**
A **partition** of $[a, b]$ is a strictly increasing sequence $X = \left\{x_0, x_1, \dots, x_n\right\}$ with $a = x_0$,  $b = x_n$.
Its **granularity** is $\mu(X) = \max \left\{\lvert x_k - x_{k-1} \rvert \mid k=1, \dots, n\right\}$.
A sequence $\xi = \left\{\xi_0, \xi_1, \dots, \xi_{n-1}\right\}$ with $\xi_k \in [x_{k-1}, x_k)$ is called a **set of intermediate points**  of $X$.

**(b)**
The **Riemann sum** of $f, X, \xi$ is defined as: 

```{math}
R(f, X, \xi) = \sum_{k=0}^{n-1} f(\xi_k)(x_{k+1} - x_{k})
```

**(c)**
We say that $f$ is **Riemann-integrable**, or **R-integrable** for short, 
iff there is a $A \in \mathbb{R}$ such that:

```{math}
\forall \epsilon > 0: \exists \delta > 0: \left | A - R(f, X, \xi) \right | < \epsilon
```
for all partitions $X$ with $\mu(X) < \delta$ and any set $\xi$ of intermediate points of $X$.

In this case, we define:

```{math}
\int_a^b f(x) \, dx = A
```
In other words, Riemann sums approximate Riemann integrals to arbitrary precision. We often write:

```{math}
\int_a^b f(x) \, dx \approx \sum_{k=0}^{n-1} f(\xi_k)(x_{k+1} - x_{k})
```
as a short version of the exact definition. This should be read as follows: 
"For sufficiently fine-grained partitions $X$, the difference between the left and right sides becomes arbitrarily small 
for any set $\xi$ of intermediate points." 

Whenever we prove theorems on Riemann integrals, 
we are allowed to replace the integrals with Riemann sums of sufficiently small granularity. 
````

````{prf:definition} Riemann Integrals by Step Functions
:label: def-step-functions

We consider a closed interval $[a, b] \subset \mathbb{R}$ and a partition $X$ of $[a, b]$.

**(a)**
A function $\phi: [a, b] \to \mathbb{R}$ is called a **step function** iff it is constant on each interval $[x_k, x_{k+1})$
of some partition $X = \left\{x_0, x_1, \dots, x_n\right\}$ of $[a, b]$. This partition is called $X_{\phi}$, the associated partition of $\phi$.

**(b)**
The Riemann sum $R(\phi, X_{\phi}, \xi)$ of a step function $\phi$ does not depend on $\xi$, and we can define:

```{math}
R(\phi) = R(\phi, X_{\phi}, x)= \sum_{k=0}^{n-1} \phi(x_k)(x_{k+1} - x_k)
```

**(c)**
We say that $f$ is **S-integrable**, iff 

```{math}
:label: equ-riemann-integrals-1
\sup_{\phi \le f} R(\phi) = \inf_{\psi \ge f} R(\psi)
```
where $\phi$ and $\psi$ range over all step functions on $[a, b]$. 
````

````{prf:theorem} Equivalence of R- and S-Integrals
:label: thr-riemann-integrals

We consider a closed interval $[a, b] \subset \mathbb{R}$ and a function $f: [a, b] \to \mathbb{R}$.

Theorem: $f$ is R-integrable iff it is S-integrable. In this case, we have:

```{math}
:label: equ-riemann-integrals-2
\int_a^b f(x) \, dx = \sup_{\phi \le f} R(\phi) = \inf_{\psi \ge f} R(\psi)
```
where $\phi$ and $\psi$ range over all step functions on $[a, b]$.
 
This equivalence allows us to forget the term "S-integrability".
````

````{prf:proof} 
**Part One:** We show that {eq}`equ-riemann-integrals-1` and {eq}`equ-riemann-integrals-2` hold if $f$ is R-integrable.

Take any $\epsilon > 0$. Since $f$ is integrable, there is a partition $X$ such that: 

```{math}
:label: equ-riemann-integrals-3
\left | \int_a^b f(x) \, dx  - R(f, X, \xi) \right | < \epsilon
```
for any set $\xi$ of intermediate points of $X$. We are done if we can produce step functions $\phi$ and $\psi$ such that: 

```{math}
:label: equ-riemann-integrals-3a
R(\phi) - \epsilon \le \int_a^b f(x) \, dx \le R(\psi) + \epsilon 
```
Here they are:

```{math}
&u_k = \inf \{f(x) \mid x \in [x_{k}, x_{k+1})\} \\
&v_k = \sup \{f(x) \mid x \in [x_{k}, x_{k+1})\} \\
\\
&\phi(x) = u_k \text{ if } x \in [x_{k}, x_{k+1}) \\
&\psi(x) = v_k \text{ if } x \in [x_{k}, x_{k+1}) \\
```
The suprema and infima exist because $f$ is bounded. We conclude:

```{math}
\phi  \le f \le \psi 
```
from which it follows that:

```{math}
:label: equ-riemann-integrals-3b
R(\phi)  \le R(f, X, \xi) \le R(\psi) 
```
for any partition $X$ and and any set $\xi$ of intermediate points of $X$.
Combining {eq}`equ-riemann-integrals-3b` with {eq}`equ-riemann-integrals-3`, we get:

```{math}
R(\phi) - \epsilon  \le \int_a^b f(x) \, dx \le R(\psi) + \epsilon
```
for any $\epsilon > 0$ and this is {eq}`equ-riemann-integrals-3a`, the inequality we are after.

**Part Two:** We show that $f$ is R-integrable if {eq}`equ-riemann-integrals-1` holds.

Take any $\epsilon > 0$ and choose step functions $\phi, \psi$ on $[a, b]$ that squeeze $f$ from below and above:

```{math}
&\phi \le f \le \psi \\
&R(\psi) - R(\phi ) \le \epsilon
```
We assume w.l.o.g. that $\phi$ and $\psi$ share the same partition $T = \{t_0, t_1, \ldots, t_m \}$. 
We are done if we can produce a $\delta > 0$ such that:

```{math}
:label: equ-riemann-integrals-4
R(\phi) - \epsilon \le R(f, X, \xi) \le R(\psi) + \epsilon
```
for any partition $X$ with $\mu(X) < \delta$ and any set $\xi$ of intermediate points of $X$.

The key idea is to split $[a, b]$ into a "good" set $U$ and a "bad" set $V$ and to make $V$ arbitrarily small.

We are given $\epsilon$ and $T$. We choose a partition $X$ with small $\delta = \mu(X)$. 
Each X-interval $[x_k, x_{k+1})$ either fits into one of the T-intervals:

```{math}
[x_k, x_{k+1}) \subseteq [t_j, t_{j+1})
```
or it straddles one of the $t_j$:

```{math}
x_k \le  t_j \le x_{k+1}
```
The latter case occurs at most $m$ times because there are exactly $m$ points in $T$. 

We define a step function $\rho$ by:
 
```{math}
\rho(x) = f(\xi_k) \text{ for } x \in [x_k, x_{k+1})
```
Note that:

```{math}
:label: equ-riemann-integrals-4a
R(\rho) = R(f, X, \xi)
```

Let $U$ be the union of all the intervals in $X$ that fit into one of the intervals in $T$, and $V$ the complement of $U$.

```{math}
&K = \{k < n \mid \exists j < m: [x_k, x_{k+1}) \subseteq [t_j, t_{j+1}) \} \\
&L = \{k < n \mid k \notin K \} \\
&U = \bigcup_{k \in K} [x_k, x_{k+1}) \\
&V = \bigcup_{k \in L} [x_k, x_{k+1}) 
```

We have for $x \in [x_k, x_{k+1}) \subseteq [t_j, t_{j+1})$:
 
```{math}
\phi(x) = \phi(\xi_k) \le f(\xi_k) = \rho(x) \le \psi(\xi_k) = \psi(x)
```

Therefore, we have on $U$:

```{math}
:label: equ-riemann-integrals-5a
\phi(x) \le \rho(x) \le  \psi(x)
```

Summing over {eq}`equ-riemann-integrals-5a` gives:
```{math}
:label: equ-riemann-integrals-7
\sum_{k \in K} \phi(x_k)(x_{k+1} - x_k) \le \sum_{k \in K} \rho(x_k)(x_{k+1} - x_k) \le \sum_{k \in K} \psi(x_k)(x_{k+1} - x_k) 
```

The length of $V$ is bounded by $m\delta$ because $V$ contains at most $m$ intervals, and the length of each interval is less or equal $\delta$.
And, since $f$ is bounded, there is an $M \in \mathbb{R}$ such that we have on $V$:

```{math}
:label: equ-riemann-integrals-6
\phi(x) - M \le \rho(x) \le \psi(x) + M
```

Summing over {eq}`equ-riemann-integrals-6` gives:

```{math}
:label: equ-riemann-integrals-8
&\sum_{k \in L} \phi(x_k)(x_{k+1} - x_k) - Mm\delta \\
&\le \sum_{k \in L} \rho(x_k)(x_{k+1} - x_k) \\
&\le \sum_{k \in L} \psi(x_k)(x_{k+1} - x_k) + Mm\delta
```

The inequalities {eq}`equ-riemann-integrals-7` and {eq}`equ-riemann-integrals-8` are combined to:

```{math}
R(\phi) - Mm\delta \le R(\rho) \le R(\psi) + Mm\delta
```
Remembering {eq}`equ-riemann-integrals-4a` and setting $\delta = \epsilon/Mm$,
we arrive at {eq}`equ-riemann-integrals-4`, the desired result:

```{math}
R(\phi) - \epsilon \le R(f, X, \xi) \le R(\psi) + \epsilon 
```
````

A famous non-integrable function is the *Dirichlet function*, which is $1$ for rational numbers and $0$ otherwise.
It is not integrable because on every interval you'll find Riemann sums equal to $0$, and others equal to $1$.

````{prf:definition} Riemann Primitives
:label: thr-riemann-primitives

Let $f \in \mathcal{R}([a,b])$. The function $F$ defined by

```{math}
F(x) = \int_a^x f(y) \, dy 
```
is called the **Riemann-primitive** (or primitive) of $f$,
on the understanding that

```{math}
F(a) = \int_a^a f(x) \, dx = 0
```

The notation 

```{math}
F = \int f(y) \, dy
```
is used if the lower bound $a$ is unimportant or not specified. 
Two primitives of an integrable function $f$ differ only by a constant (see {prf:ref}`additivity <thr-properties-riemann>`).
````


````{prf:theorem} Properties of Riemann Integrals
:label: thr-properties-riemann

We state some obvious but important properties of Riemann integrals.

**(a) Boundedness**

R-integrable functions are bounded on closed intervals
(because Riemann sums are).

**(b) Monotony**

```{math}
f \le g  \Rightarrow  \int_a^b f(x) \, dx \le \int _a^b g(x) \, dx
```
holds for any two functions $f,g \in \mathcal{R}([a,b])$.

**(c) Triangular Inequality**

If $f$ is integrable, then so is $|f|$, and it holds that:

```{math}
\left | \int_a^b f(y) \, dy \right | \le \int_a^b \left | f(y) \right | \, dy 
```

**(d) Additivity**

Let $f$ be integrable, and $c \in [a, b]$. Then it holds that:

```{math}
\int_a^b f(x) \, dx = \int_a^c f(x) \, dx + \int_c^b f(x) \, dx
```

**(e) Linearity**

If $f, g$ are integrable, then so is $f + \alpha g$ ($\alpha \in \mathbb{R}$), and it holds that:

```{math}
\int_a^b f(x) + \alpha g(x) \, dx = \int_a^b f(x) \, dx + \alpha \int_a^b g(x) \, dx
```

**(f)** The R-integrable functions over $[a, b]$ form a **vector space**, written as $\mathcal{R}([a, b])$.

**(g)** The primitive of an R-integrable function is continuous. The mapping

```{math}

\int : 
\left\{
    \begin{array}{lr}
        \mathcal{R}([a, b]) \to C^0([a, b]) \\
        f \mapsto \int_a^x f(y) \, dy
    \end{array}
\right .
```
is a linear operator, called the **integration operator**.

The mapping

```{math}
\int : 
\left\{
    \begin{array}{lr}
        \mathcal{R}([a, b]) \to \mathbb{R} \\
        f \mapsto \int_a^b f(y) \, dy
    \end{array}
\right .
```
is a linear mapping, called the **integration functional**.

````

````{prf:proof}
We only prove **(g)**.

Let $f: [a, b] \to \mathbb{R}$ be integrable,  and $F$ a primitive of $f$.
Then, $f$ is bounded by some $M \in \mathbb{R}$, and by the triangular inequality (c), we have for $x \in [a, b]$ and arbitrarily small $h$:

```{math}
\left | F(x+h) -  F(x) \right | = \left | \int_x^{x+h} f(y) \, dy \right | \le  \int_x^{x+h} \left | f(y) \right | \, dy \le h M
```
which proves the continuity of $F$ at $x$.
````

We now introduce some criteria of Riemann integrability. The proofs use step functions rather than Riemann sums.

````{prf:theorem} Riemann-Integrable Functions
:label: thr-riemann-integrable-functions

All functions are defined on a closed interval $[a, b]$.

**(a)** Step functions are R-integrable and, for any step function $\phi$ we have:

```{math}
R(\phi) = \int_a^b \phi(x) \, dx
```

**(b)** Monotonous functions are R-integrable.

**(c)** Continuous functions are R-integrable.

**(d)** Let $f$ be bounded and continuous except on a set $D$ with a finite number of limit points.
Then $f$ is R-integrable. 
````

````{prf:proof} 
**(a)** This follows from {prf:ref}`thr-riemann-integrals`. We clearly have:

```{math}
\sup_{\varphi \le \phi} R(\varphi) = R(\phi) = \inf_{\psi \ge \phi} R(\psi)
``` 

The proofs of **(b), (c), (d)** are very similar. 
$f$ can always be squeezed between two suitable step functions $\phi, \psi$.
Here they are:

Take any $\epsilon > 0$, let $X$ be a partition, and $\delta = \mu(X)$. 
We set for $k = 0, \ldots, n-1$:

```{math}
& \phi(x) = \inf \{f(x) \mid x \in [x_k, x_{k+1}) \} \\
& \psi(x) = \sup \{f(x) \mid x \in [x_k, x_{k+1}) \}
``` 
The suprema and infima exist because $f$ is bounded. For (a), (b), and (c), we have to show that: 

```{math}
R(\psi) - R(\phi) < \epsilon
```
if $\mu(X)$ is sufficiently small.


**(b)** Let $f$ be non-decreasing. We get:

```{math}
:label: equ-riemann-integrable-functions-1
&R(\psi) - R(\phi) = \sum_{k=0}^{n-1} (f(x_{k+1}) - f(x_{k})) (x_{k+1} - x_k) \\
&\le \delta \sum_{k=0}^{n-1} (f(x_{k+1}) - f(x_{k})) \\
&= \delta (f(b) - f(a)) < \epsilon
```
if $\delta < \epsilon /(f(b) - f(a))$.

**(c)** Let $f$ be continuous. Then it is uniformly continuous on $[a, b]$ and there is a $\delta > 0$ such that,
for all $k$, $\psi(x_k) - \phi(x_{k}) < \epsilon$ if $\mu(X) < \delta$. We get:

```{math}
:label: equ-riemann-integrable-functions-2
&R(\psi) - R(\phi) = \sum_{k=0}^{n-1} (\psi(x_{k}) - \phi(x_{k})) (x_{k+1} - x_k) \\
&< \epsilon \sum_{k=0}^{n-1} (x_{k+1} - x_k) \\
&= \epsilon (b - a)
```

In {eq}`equ-riemann-integrable-functions-1` and {eq}`equ-riemann-integrable-functions-2` we encounter **collapsing sums**, 
which are a recurrent pattern in the theory of integrals.

**(d)** Let $f$ be bounded, continuous and $D$ the set of points where $f$ is discontinous. 
We assume that $D$ has only one limit point $d^*$. If there is more than one, 
simply divide $[a, b]$ into as many subintervals with one limit point in each.

We split the interval $[a, b]$ into a "good" set $U$ and a "bad" set $V$, as we did
in the proof of {prf:ref}`thr-riemann-integrals`.  

```{math}
&K = \{k < n \mid D \cap [x_k, x_{k+1}) = \emptyset \} \\
&L = \{k < n \mid k \notin K \} \\
&U = \bigcup_{k \in K} [x_k, x_{k+1}) \\
&V = \bigcup_{k \in L} [x_k, x_{k+1})
```

Since $f$ is uniformly continuous on $U$, there is a $\delta > 0$ such that,
for all $k \in K$, $\psi(x_k) - \phi(x_{k}) < \epsilon$ if $\mu(X) < \delta$. We have on $U$:

```{math}
:label: equ-riemann-integrable-functions-3
\sum_{k\in K} (\psi(x_{k}) - \phi(x_{k})) (x_{k+1} - x_k) \le \epsilon (b-a)
```
Since $|d - d^*| < \delta$ for all but finitely many $d \in D$, 
all but finitely many elements of $D$ are assembled in just one interval $[x_k, x_{k+1})$, 
however small $\delta$ is. Therefore the number of elements of $L$, say $m$, is finite.
And $|f|$ is bounded by some real number $M$. We have on $V$:

```{math}
:label: equ-riemann-integrable-functions-4
\sum_{k\in L} (\psi(x_{k}) - \phi(x_{k})) (x_{k+1} - x_k) \le \delta m M
```
Adding {eq}`equ-riemann-integrable-functions-3` and {eq}`equ-riemann-integrable-functions-4` gives us:

```{math}
\sum_{k=0}^{n-1} (\psi(x_{k}) - \phi(x_{k})) (x_{k+1} - x_k) \le \epsilon (b-a) + \delta m M \\
```

or:

```{math}
R(\psi) - R(\phi) \le \epsilon (b-a) + \delta m M
```
Setting $\delta = \epsilon/mM$ gives us what we want.
````

````{prf:remark} Lebesgue Criterion
:label: rem-lebesgue-criterion

The story of {prf:ref}`thr-riemann-integrable-functions` doesn't end here. 
The ultimate result is the Lebesgue Criterion, the proof of which is too lengthy for this short introduction. To state it, we first need a definition:

A set $A \subset \mathbb{R}$ has **measure zero**, iff, for any $\epsilon > 0$ there is a covering $C$ of $A$ with $|C| < \epsilon$.

Here is the **Lebesgue Criterion**:

Bounded functions are R-integrable iff their set of discontinuities has measure zero.
````


````{prf:theorem} Uniform Limit of Riemann Integrable Functions
:label: thr-limit-riemann-integrable

The **uniform limit** of R-integrable functions is R-integrable,
or, equivalently: $\mathcal{R}([a, b])$ is closed under the sup norm.
We can swap limit and integral:

```{math}
:label: thr-limit-riemann-integrable-1
\lim_{n \to \infty} \int_a^b f_n(x) \, dx = \int _a^b\lim_{n \to \infty} f_n(x) \, dx
```
````

````{prf:proof}

Let $\{f_n\}$ be a sequence of R-integrable functions on $[a, b]$ that converges uniformly to $f$.
Let $\epsilon >0$ and $n_0$ be such that, for $n \ge n_0$:

```{math}
\left \lVert f_n - f \right \rVert_{\infty} < \epsilon 
```

which implies for any partition $X$ and any set $\xi$ of intermediate points:

```{math}
\left | R(f_n, X, \xi) - R(f, X, \xi) \right |  < \epsilon (b - a)
```

Let $\phi_n, \psi_n$ be step functions such that 

```{math}
&\phi_n \le f_n \le \psi_n \\
&R(\psi) - R(\phi) < \epsilon
```
which implies:

```{math}
R(\phi) - \epsilon (b-a) \le R(f, X, \xi) \le  R(\psi) + \epsilon (b-a)
```
whenever $X$ is as least as fine grained as $X_{\phi}$ and $X_{\psi}$. 
This proves that $f$ is integrable. Equation {eq}`thr-limit-riemann-integrable-1` follows from:

```{math}
\left | \int_a^b f_n(x) \, dx - \int_a^b f(x) \, dx \right | \le \int_a^b \left | f_n(x) - f(x) \right | \, dx \le (b - a) \left \lVert f_n - f \right \rVert_{\infty}
```
````

````{prf:theorem} Mean Value Theorem of Integration
:label: thr-mean-value-integration

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
From {prf:ref}`thr-intermediate-value` we know that there exists a $\xi \in [a, b]$ such that $f(\xi) = \mu$.
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

(differentiable-functions)=
## Differentiable Functions

````{prf:definition} Derivatives
:label: def-derivatives

We consider a closed interval $[a, b] \subset \mathbb{R}$ and a function $f:[a, b] \rightarrow \mathbb{R}$.

**(a)** We say that $f$ is **differentiable** at $x \in [a, b]$ if the limit

```{math}
:label: equ-derivatives-1

\lim_{h \to 0} \frac{1}{h}(f(x+h)-f(x)) = f'(x)
```
exists. $f'(x)$ is called the derivative of $f$ at $x$. We often use the notation:

```{math}
:label: equ-derivatives-0

\frac{df}{dx} =  f'(x)
```
The statement {eq}`equ-derivatives-1` is equivalent to

```{math}
:label: equ-derivatives-1a
f(x+h) = f(x) + f'(x) \, h + o(h)
```

which means that the term $f'(x) \, h$ is a linear approximation of $f$ at $x$.
The derivative is fully determined by equation {eq}`equ-derivatives-1a`. From
 
```{math}
:label: equ-derivatives-1b
f(x+h) = f(x) + y \, h + o(h)
```
for some value $y$ we can conclude that $y = f'(x)$.

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

**(a)** The continuously differentiable functions over $[a, b]$ form a **vector space**, written as $C^1 ([a, b])$.
Likewise, the $n$ times continuously differentiable functions over $[a, b]$ form a vector space, written as $C^n ([a, b])$.

**(b)** The mapping

```{math}
\partial : 
\left \{
    \begin{array}{lr}
        C^1 ([a, b]) \to C^0([a, b]) \\
        f \mapsto f'
    \end{array}
\right .
```

is a linear mapping, called the **differential operator**.

Likewise, the mapping

```{math}
\partial^2 : 
\left \{
    \begin{array}{lr}
        C^2 ([a, b]) \to C^0([a, b]) \\
        f \mapsto f''
    \end{array}
\right .
```

is again a linear mapping, called the **differential operator of second order**.
Higher order differential operators $\partial^n$ are analogously defined.
````

````{prf:proof} 
omitted
````

````{prf:theorem} Differentiation Rules
:label: thr-differentiation-rules

**(a) Chain Rule**

Let $f \in C^1([a,b])$ and $g \in C^1([\min(f), \max(f)])$. Then:

```{math}
&(f \circ g)'(x) = (f' \circ g)(x) \, g'(x) \\
\\
&(f \circ g)' = (f' \circ g) \, g'
```

**(b) Quotient Rule**

Let $f, g \in C^1([a,b])$, and $f'(x) \ne 0$ on $[a, b]$. Then:

```{math}
{f^{-1}}'(f(x)) = \frac{1}{f'(x)}
```
or, with $y = f(x)$:

```{math}
{f^{-1}}'(y) = \frac{1}{f'(f^{-1}(y)}
```

This is often abbreviated to

```{math}
{f^{-1}}' = \frac{1}{f'}
```
but you have to keep track of $x$ and $y$. Using the quotient notation, we can write:

```{math}
&\frac{df^{-1}}{dy}(f(x)) = \left ( \frac{df}{dx} \right )^{-1}(x) \\
\\
&\frac{df^{-1}}{dy}(y) = \left ( \frac{df}{dx} \right )^{-1}(f^{-1}(y)) 
```

**(c) Product Rule**

Let $f, g \in C^1([a,b])$. Then:

```{math}
f'g' = f'g + fg'
```
````

````{prf:proof} 

**(a)**
Let $f, g$ be as above. We prove the assertion using the little-o-notation.
We know that $g$ is differentiable at $x$, and $f$ at $g(x)$.

```{math}
(f \circ g)(x + h) &= f(g(x + h)) \\
\\
&= f(g(x) + g'(x)h + o(h)) \\
\\
&= f(g(x)) + f'(g(x))(g'(x)h + o(h)) + o(g'(x)h + o(h)) \\
\\
&= f(g(x)) + f'(g(x))g'(x)h + f'(g(x))o(h) + o(g'(x)h + o(h))
```

Observing that:
```{math}
f'(g(x))o(h) + o(g'(x)h + o(h)) = o(h) + o(h) + o(h) = o(h)
```
we get:
```{math}
(f \circ g)(x + h) = f(g(x)) + f'(g(x))g'(x)h + o(h)
```
which is what we want.


**(b)**
From

```{math}
(f^{-1} \circ f)'(x) = {f^{-1}}'(f(x))f'(x) = 1
```
we conclude:

```{math}
{f^{-1}}'(f(x)) = \frac{1}{f'(x)}
```

**(c)**
Same procedure: $f$ and $g$ are differentiable, so:

```{math}
f(x+h)g(x+h) &= (f(x) + f'(x)h + o(h))(g(x) + g'(x)h + o(h)) \\
\\
&= f(x)g(x) + (f'(x)g(x) + f(x)g'(x))h + o(h)
```
which is the desired result. 
````

````{prf:theorem} Mean Value Theorem of Differentiation
:label: thr-mean-value-differentiation

**(a) Minimum, Maximum**

Let $f: [a,b] \to \mathbb{R}$ be differentiable at $x \in (a,b)$.
If $f$ has a local minimum or maximum in $x$ then $f'(x) = 0$.

**(b) Rolle's Theorem**

Let $f: [a,b] \to \mathbb{R}$ be continous and differentiable on $(a,b)$.
If $f(a) = f(b)$  then there is a $\xi \in (a,b)$ with $f'(\xi) = 0$.

**(c) Mean Value Theorem of Differentiation**

Let $f: [a,b] \to \mathbb{R}$ be continous and differentiable on $(a,b)$
Then there is a $\xi \in (a,b)$ with:

```{math}
f'(\xi) = \frac{f(b) - f(a)}{b - a}
```
````

````{prf:proof} 

**(a)** Let $x$ be a local maximum. Then, for smalll $h$:

```{math}
f(x+h) - f(x) \le 0
```
This gives for $h>0$

```{math}
\frac{1}{h}(f(x+h) - f(x)) \le 0
```
and for $h<0$
```{math}
\frac{1}{h}(f(x+h) - f(x)) \ge 0
```
which implies:

```{math}
\lim_{h \to 0}\frac{1}{h}(f(x+h) - f(x)) = 0
```
**(b)**
$f$ is either constant or it assumes its minimum and its maximum at some $\xi \in (a, b)$.
We know from (a) that $f'(\xi) = 0$.

**(c)** We apply (b) to the function $g$ defined by

```{math}
g(x) = f(x) - \frac{f(b)- f(a)}{b - a}(x - a)
```
We have $g(a) = g(b) = f(a)$, and the derivative is:

```{math}
g'(x) = f'(x) - \frac{f(b)- f(a)}{b - a}
```
Through (b) we know that there is a $\xi \in (a, b)$ with $g'(x) = 0$. 
This is the assertion.
````

(main-theorem-of-calculus)=
## Main Theorem of Calculus

````{prf:theorem} Main Theorem of Calculus
:label: thr-main-theorem-calculus

Let $f \in \mathcal{R}([a,b])$ and $F$ be a **primitive** of $f$, defined by

```{math}
F(x) = \int_a^x f(y) \, dy, \quad F = \int f 
```
Then:

**(a)** If $f$ is continuous on $[a, b]$, then $F$ is differentiable on $[a, b]$, and it holds that

```{math}
F' = f, \quad \partial \int f = f
```

**(b)** If $f$ is differentiable on $[a, b]$, then

```{math}
\int_a^b f'(y) \, dy = f(b) - f(a), \quad \int \partial f = f
```

**(c)**
The linear operators $\int$ and $\partial$

```{math}
\int : 
\left\{
    \begin{array}{lr}
        C^0([a, b] \to C^1([a, b] \\
        f \mapsto F
    \end{array}
\right .
\\
\\
\partial : 
\left\{
    \begin{array}{lr}
        C^1([a, b] \to C^0([a, b] \\
        F \mapsto f
    \end{array}
\right .
```
are inverse to each other:

```{math}
\int \partial F = F, \quad \partial \int f = f
```
````

````{prf:proof}

**(a)** 
The proof relies on the [mean value theorem of integration](#thr-mean-value-integration).
We prove in fact a slightly stronger assertion:

If $f$ is continuous on a neighbourhood of $x \in [a, b]$, then $F'(x) = f(x)$.

Let $x$ be such a point. Then, for any $h > 0$ we have:
```{math}

\frac{1}{h}(F(x+h) - F(x)) = \int_x^{x+h} f(y) \, dy = \frac{1}{h} h f(\xi) = f(\xi)
```
for some $\xi \in [x,x+h]$, and $f(\xi) \to f(x)$ as $h \to 0$ since $f$ is continuous near $x$.

**(b)** The proof relies on the [mean value theorem of differentiation](#thr-mean-value-differentiation).

If $f$ is differentiable, then it is integrable.
Let $\{x_k\}$be a partition of $[a, b]$, and $\{\xi_k\}$ a set of intermediate points such that:

```{math}
f'(\xi_k) = \frac{f(x_{k+1}) - f(x_k)}{x_{k+1} - x_k}
```
and we get:

```{math}
:label: equ-main-theorem-calculus-1

\int_a^b f'(y) \, dy &\approx \sum_{k=0}^{n-1}f'(\xi_k)(x_{k+1} - x_k) \\
&= \sum_{k=0}^{n-1}\frac{f(x_{k+1} - f(x_k)}{x_{k+1} - x_k}(x_{k+1} - x_k) \\
&= \sum_{k=0}^{n-1}f(x_{k+1}) - f(x_k) \\
&= f(b) - f(a)
```
The final reasoning is standard: We choose partitions $\{x_k\}$ with arbitrarily small granularity. 
The approximation in {eq}`equ-main-theorem-calculus-1` is thus driven to equality.
The last equation in {eq}`equ-main-theorem-calculus-1` is again the **collapsing sum pattern**. 
````

````{prf:theorem} Integration Rules
:label: thr-integration-rules

Let $f, g \in C^1([a,b])$


**(a) Integration by Parts**

Let $f, g \in C^1([a,b])$. Then

(integration-by-parts)=
```{math}
:label: thr-integration-rules-1
\int^b_a f(x) \, g'(x) \, dx = f \, g \vert^b_a - \int^b_a f'(x) g(x) \, dx
```

**(b) Substitution Rule**

Let $f \in C^1([a,b])$ and $g \in C^1([g^{-1}(a), g^{-1}(b)])$ with $g' \neq 0$. Then

```{math}
:label: substitution-1
\int_a^b f(g(x))\,g'(x) \, dx = \int_{g(a)}^{g(b)} f(y) \, dy 
```
and equivalently with $u = g(a), v = g(b)$:

```{math}
:label: substitution-2
\int_u^v f(y) \, dy = \int^{g^{-1}(v)}_{g^{-1}(u)} f(g(x))\,g'(x) \, dx
```

````

````{prf:proof} 
**(a)** We know from {prf:ref}`thr-differentiation-rules` that:
```{math}
(fg)' = f'g + fg'
```

and with {prf:ref}`thr-main-theorem-calculus` we conclude:

```{math}
f \, g \vert^b_a = \int_a^b (fg)'(x) \, dx  = \int_a^b f'(x)g(x) \, dx  + \int_a^b f(x)g'(x) \, dx
```

**(b)** We know from {prf:ref}`thr-differentiation-rules` that:
```{math}
(f\circ g)'(x) = f'(g(x))g'(x)
```

and with {prf:ref}`thr-main-theorem-calculus` we conclude:

```{math}
&f \circ g \vert_a^b  = \int_{a}^{b} (f \circ g)'(x) \, dx = \int_a^b f'(g(x))g'(x) \, dx \\
                     &= f(g(a)) - f(g(b)) = \int_{g(a)}^{g(b)} f'(y) \, dy 
```

````

````{prf:remark} dx Calculus
:label: rem-dx-calculus

The substitution rules {eq}`substitution-1` and {eq}`substitution-2`  can be memorized as follows:

```{math}
:label: substitution-3
&y = g(x) \\
& \Rightarrow \frac{dy}{dx} = \frac{dg}{dx} = g'(x) \\
& \Rightarrow dy = g'(x) \, dy
```
You still have to keep track of the integration bounds.
````


````{prf:theorem} Legendre Substitution
:label: thr-legendre
Let $f \in C^1([0,x_0])$ with $f(0) = 0$ and $f' \neq 0$. Then the Legendre equation holds:

```{math}
:label: eq-legendre
\int_0^{x_0} f(x) \, dx + \int_0^{y_0} f^{-1}(y) \, dy = x_0 y_0
```
````


````{prf:proof} 

We apply equation {eq}`substitution-2` and integrate by parts:

```{math}
\int_0^{y_0} f^{-1}(y) \, dy
&=\int_0^{f^{-1}(y_0)} x f'(x) \, dx \\
&= x f(x) \vert_0^{x_0} - \int_0^{x_0} f(x) dx \\
&=x_0 y_0 - \int_0^{x_0} f(x) dx
```

````

````{prf:theorem} Limit of Differentiable Functions
:label: thr-limit-differentiable-functions

Let $\{f_n\}$ converge pointwise to some function $f$, with $f_n \in C^1([a,b])$.  
Let $\{f'_n\}$ converge uniformly to some function $g$. Then $f$ is differentiable, and $g = f'$, or:

```{math}
\lim_{n \to \infty} \partial f_n = \partial \lim_{n \to \infty} f_n
```

where the limit is uniform.
````


````{prf:proof} 

From the {prf:ref}`main theorem of calculus (a) <thr-main-theorem-calculus>` we get, since all $f'_n$ are continuous:

```{math}
f_n(x) = f_n(a) + \int_a^x f'_n(y) \, dy
```

From {prf:ref}`thr-limit-riemann-integrable` we get, since the convergence of $\{f'_n\}$ is uniform::

```{math}
f(x) = \lim_{n \to \infty} f_n(x) = \lim_{n \to \infty} \left ( f_n(a) + \int_a^x f'_n(y) \, dy \right )= f(a) + \int_a^x g(y) \, dy
```

Therefore, again by the {prf:ref}`main theorem of calculus (a) <thr-main-theorem-calculus>`, $f$ is differentiable and $f' = g$.
````
````{prf:remark} Counterexample
:label: rem-counterexample

The uniform limit of continuously differentiable functions is emphatically not always differentiable.
A simple example is:

```{math}
f_n(x) = \sqrt{x^2 + \frac{1}{n}}
```

The uniform limit is the absolute value function that features a corner at $0$.

```{math}
\lim_{n \to \infty} f_n(x) = |x|
```
````

(taylor-theorem)=
## Taylor's Theorem

Derivatives are about local changes: How does a function $f$ behave in a neighbourhood of some point $x$? The Taylor series allows us to express
$f(x+h)$ in terms of the higher derivatives of $f$ with arbitrary precision. It comes in three varieties that differ in the remainder term.

````{prf:theorem} Taylor's Theorem
:label: thr-taylor

Let $[a, b]$ be a finite interval $f \in  C^{n+1}([a, b])$, $x \in (a, b)$ and $h$ so small that $x+h \in [a, b]$. Then:

**(a)** 

```{math}
:label: thr-taylor-a
f(x+h)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(h)^k + \frac{1}{n!}\int _x^{x+h} (x+h-t)^n f^{(n+1)}(t) \, dt
```

**(b)** There exists a $\xi \in [x-h,x+h]$ such that:

```{math}
:label: thr-taylor-b
f(x+h)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}h^k + \frac{f^{(n+1)}(\xi)}{(n+1)!}h^{n+1}
```

**(c)**

```{math}
:label: thr-taylor-c
f(x+h)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}h^k + o(h^n)
```
````

````{prf:proof}

**(a)** The proof is by induction, using the main theorem of integration and integration by parts. We set $u = x+h$.

```{math}
f(u) - f(x) &= \int _x^u f'(t)dt  = - \int _x^u\frac{d(u-t)}{dt}f'(t)dt \\
& = -(u-t)f'(t) \lvert_x^u + \int _x^u(u-t)f''(t)dt \\
& = (u-x)f'(x) + \int _x^u(u-t)f''(t)dt = \text{ ... } \\
& =\sum _{k=1}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{1}{n!}\int _x^u (u-t)^n f^{(n+1)}(t)dt
```
We obtain equation {eq}`thr-taylor-a` by replacing $u$ with $h = u-x$.

**(b)** Using the {prf:ref}`mean value theorem of integration <thr-mean-value-integration>`, we find a $\xi \in [x-h, x+h]$ such that
```{math}
\frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}(t)dt = \frac{f^{(n+1)}(\xi)}{n!}\int_x^u (u-t)^n dt = \frac{f^{(n+1)}(\xi)}{(n+1)!}(u-x)^{n+1}
```
We obtain equation {eq}`thr-taylor-b` again by replacing $u$ with $h = u-x$.

**(c)**
This follows from (b), because:

```{math}
\frac{f^{(n+1)}(\xi)}{(n+1)!}h^{n+1} = o(h^n)
```
````

(little-o-big-O)=
## Little o, Big O

Little o means: $f$ tends to $0$ faster than $g$, or, equivalently, $f/g$ tends to $0$:

```{math}
&f = o(g) \Leftrightarrow \lim\frac{f(x)}{g(x)} = 0 \\ \\
&f = o(1) \Leftrightarrow \lim f(x) = 0 \\ \\
&f = o(x^n) \Leftrightarrow \lim \frac{f(x)}{x^n} = 0
```

Big O means: $f$ grows not faster than $g$, or, equivalently, $f/g$ is bounded above:

```{math}
&f = O(g) \Leftrightarrow \frac{f(x)}{g(x)} \le C \\ \\
&f = O(1) \Leftrightarrow f(x)\le C \\ \\
&f = O(x^n) \Leftrightarrow f(x)\le C x^n
```


## References

```{bibliography}
:filter: docname in docnames
```

<div style="margin-bottom: 100px;"></div>
