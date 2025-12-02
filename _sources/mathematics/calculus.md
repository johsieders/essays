# First Steps in Calculus




> under construction



## Paradoxes

### Achilles and the Tortoise (Zeno)

Imagine the tortoise and Achilles starting a race with the tortiose 10 metres in the lead, 
and Achilles running ten times as fast as the tortoise.  
By the time Achilles has covered 10 meters, the tortoise is 1 metre in the lead.  
By the time Achilles has covered 11 meters, the tortoise is 0.1 metres in the lead.  
By the time Achilles has covered 11.1 meters, the tortoise is 0.01 metres in the lead.  
And so on. Will Achilles ever overtake the tortoise?

Of course, he will after 11.111... metres because

```{math}
\sum_{k=0}^\infty \alpha^k = \frac{1}{1-\alpha}
```
which gives, with $\alpha = 1/10$:

```{math}
10 + \sum_{k=0}^\infty \frac{1}{10^k} = 10 + \frac{10}{9} = 11.111\ldots
```

What seemed paradoxical to Zeno is that the sum of an infinite number of terms could be finite.
However, all he did was a mental divison of a finite distance into infinitely 
many parts, the sum of which is obviously the distance given.
Today infinite sums are well understood; there is nothing paradoxical about them.

### The Standing Arrow (Zeno): 
Imagine an arrow flying along a straight line. At any given moment, the arrow occupies a specific position in space.
How can it ever move? The answer is given by the theory of integrals we are going to study in detail. 
Here is a short sketch: 
Let $v(t)$ be the speed of the arrow at time $t$. 
We divide a given time span $[a, b]$ into tiny, but finitely many 
subintervals ${[t_k, t_{k+1}]}$.
Then, the distance $d$ traveled in the time interval $[a, b]$ is approximated to any accuracy by the so-called Riemann sum

```{math}
d \approx \sum_{k=0}^n v(t_k) (t_{k+1} - t_k)
```
The first paradox was that a sum with an infinite number of terms could be finite.
This paradox is that the sum of a large number of arbitrarily small terms does not vanish.
It lies at the very heart of integration theory that such a sum can be assigned a meaningful value.

### What the Tortoise Said to Achilles (Lewis Carroll)

This paradox sounds Greek, but it is in fact due to Lewis Carroll, the author of Alice in Wonderland. 
It questions what mathematicians really do.
Imagine the tortoise explaining a mathematical argument to Achilles.
This is what it says, in the words of L. Carroll:

(A) Things that are equal to the same are equal to each other.   
(B) The two sides of this Triangle are things that are equal to the same.   
(C) If A and B are true, Z must be true.   
(Z) The two sides of this Triangle are equal to each other.

"You should call it D, not Z," said Achilles. "It comes next to the
other three. If you accept A and B and C, you must accept Z."
"And why must I?" "Because it follows logically from them. If A and B and C are true,
Z must be true. You don't dispute that, I imagine?"

"If A and B and C are true, Z must be true," the Tortoise thoughtfully
repeated. "That's another Hypothetical, isn't it? And, if I failed to see
its truth, I might accept A and B and C, and *still* not accept Z, mightn't I?"
"You might," the candid hero admitted, "though such obtuseness
would certainly be phenomenal. Still, the event is *possible*. So I might
ask you to grant one more Hypothetical!" "Very good. I'm quite willing to grant it, 
as soon as you've written it down. We will call it 

(D) If A and B and C are true, Z must be true.  

"Have you entered that in your notebook?" "I *have*!" Achilles joyfully exclaimed, 
as he ran the pencil into its sheath. "And at last we've got to the end of this ideal racecourse! Now
that you accept A and B and C and D, *of course* you accept Z."
"Do I?" said the Tortoise innocently. "Let's make that quite clear.
I accept A and B and C and D. Suppose I *still* refused to accept Z?"
"Then Logic would take you by the throat and *force* you to do it!"
Achilles triumphantly replied. "Logic would tell you, You can't help
yourself. Now that you've accepted A and B and C and D, you must accept Z!" 
So you've no choice, you see."
"Whatever *Logic* is good enough to tell me is worth *writing down*," said
the Tortoise. "So enter it in your book, please. We will call it

(E) If A and B and C and D are true, Z must be true."

"Until I've granted *that*, of course I needn't grant Z. So it's quite
a necessary step, you see?" "I see," said Achilles; and there was a touch of sadness in his tone.

So much from Lewis Carroll. With a touch of sadness, 
I must admit that this paradox puts all mathematical reasoning at risk.
How can we be sure that a proof is correct? What rules do we apply, and who granted us the right to apply them?
Is there a formal, indisputable way of proving theorems, or is mathematics subject to some kind of majority decision?
Here, formal logic – the Gödel-Tarski stuff – comes to our rescue, but that is a different story.

### Littlewood's Principles

Every measurable set is nearly a finite union of intervals.

Every measurable function is nearly continuous.

Every convergent sequence of measurable functions is nearly uniformly convergent.


## Naturals, Integers, Rationals

### Naturals

Where do natural numbers come from? Who invented them? Did they preexist in some kind of Platonian heaven?
I don't know, and, honestly, I don't care too much. What seems clear to me is that there 
must have been first humans, probably at different times and different locations, to grasp the concept of a number. 
They realized that five fingers, five pebbles, and five trees share the property of fiveness, and so a new, powerful concept was born.
It took many millennia to formalize it. 
Today, the Peano axioms perfectly describe the set $\mathbb{N}$ of natural numbers for all mathematical purposes.

````{prf:definition} Peano Axioms
:label: def-peano-axioms

1. $\mathbb{N}$ is **not empty**: $0 \in \mathbb{N}$

2. The relation $=$ is an **equivalence relation** on $\mathbb{N}$.

3. Every natural number $n$ has exactly one **successor** $S(n)$, and every natural number $n$ except $0$ has exactly one **predecessor** $P(n)$.
The function $S$ 

```{math}
S:  
\left\{
    \begin{array}{lr}
        \mathbb{N} \to \mathbb{N} - \{0\} \\
        n \mapsto S(n)
    \end{array}
\right .
```
&ensp; is a bijection, and $P = S^{-1}$ is its inverse. We normally write, of course, $n + 1$ and $n - 1$ to indicate successor and predecessor.

4. **Induction**: If $\phi$ is a unary predicate such that
$\phi(0)$ is true, and for every $n \in \mathbb{N}$, $\phi(n)$ being true implies that $\phi(S(n))$ is true,
then $\phi(n)$ is true for every $n \in \mathbb{N}$.
````
So, in virtue of the Peano axioms we can start at $0$ and, 
applying the successor function, construct as many natural numbers as we like. This opens the door to infinity.


````{prf:definition} Infinity
:label: def-infinity
A set $A$ is infinite if there is an a proper subset $B$ of $A$ and an injection $\phi: A \to B$.
````
The set $\mathbb{N}$ is infinite because the successor function $S$ is exactly such an injection, with $B = \mathbb{N} - \{0\}$.
Another injection would be $\phi(n) = 10^n$, with $B = \{1, 10, 100, \ldots\}$. $B$ is a set with huge gaps, and yet, 
it's still infinite: you never run out of natural numbers.

The Peano axioms not only allow the definition of all basic arithmetical operations. 
They form the foundation of number theory.

### Integers

The set $\mathbb{N}$ is a **semigroup with respect to addition** and a **semigroup with respect to multiplication**.
But the equation $a + x = b$ is solvable in $\mathbb{N}$ only if $a \le b$. $\mathbb{N}$ lacks the negative numbers.

We introduce the set $\mathbb{Z}$ of integers as the **smallest ring containing $\mathbb{N}$**. 
While this definition is arguably concise and elegant, the question remains whether such a ring exists at all. 
The answer is yes, it does, and it can be easily constructed.
We introduce a new element $-1$ as the unique solution of $1 + x = 0$ and define:

```{math}
(-1) (-1) &= 1

-a &= (-1) a \text{ for } a \in \mathbb{N}

-\!\mathbb{N} &= \{-a \mid a \in \mathbb{N} \}

\mathbb{Z} &= -\!\mathbb{N} \cup \mathbb{N} 
```
Starting from $(-1) (-1) = 1$, the basic arithmetic operations are easily constructed. 
As an example, we explain how $a - b$ can be given a meaning if $a < b$:

```{math}
a - b = a + (-1)b = (-1)((-1)a + b) = (-1)(b - a) = - (b-a)
```
Continuing in this way, the definition of addition, subtraction and multiplication on $\mathbb{Z}$ is a straightforward exercise.
With these operations in place, the set $\mathbb{Z}$ is a ring.
As any ring containing $\mathbb{N}$ must also contain the negative numbers $-\!\mathbb{N}$, 
the set $\mathbb{Z}$ is indeed the **smallest ring containing $\mathbb{N}$**.  


### Rationals
The set $\mathbb{Z}$ is a ring but 
not a field because the equation $ax = 1$ is solvable in $\mathbb{Z}$ only for $a = 1$. $\mathbb{Z}$ lacks the fractions.

We introduce the set $\mathbb{Q}$ of rationals as the **smallest field containing $\mathbb{Z}$**. 
Again, the question remains whether such a field exists at all. 
The answer is yes, it does, and it can be easily constructed.
We introduce, for $a \ne 0$, the inverse $a^{-1}$, or synonymously $1/a$, as the unique solution of $ax = 1$ and define:

```{math}
&a a^{-1} = 1 \text{ for } a \in \mathbb{Z}-\{0\}

&\mathbb{Q} = \{ab^{-1} \mid a \in \mathbb{Z}, b \in \mathbb{Z}-\{0\}\}
```
Starting from $a a^{-1} = 1$, we derive, as an example, the multiplication rule:

```{math}
&a a^{-1} = b b^{-1} = 1 \\
&\Rightarrow a a^{-1} b b^{-1} = (ab) (a^{-1} b^{-1}) = 1 \\
&\Rightarrow (ab)^{-1} = a^{-1} b^{-1} \\
```

and infer the cancellation law:

```{math}
a b^{-1} &= (n n^{-1}) (ab^{-1}) \\
&= (na) (n^{-1} b^{-1}) \\
&= (n a) (nb)^{-1}
```

Continuing in this way, the definition of addition, subtraction, multiplication, and division on $\mathbb{Q}$ is a straightforward exercise.
With these operations in place, the set $\mathbb{Q}$ is a field.
As any field containing $\mathbb{Z}$ must also contain the rationals, 
the set $\mathbb{Q}$ is indeed the **smallest field containing $\mathbb{Z}$**.  


## Convergence, Completeness, and the Continuum

What worked fine for integers and rationals proves to be more tricky for reals.
The set $\mathbb{Q}$ is a field with many holes: the equation $x^2 = a$ is solvable in $\mathbb{Q}$ only for square numbers, but not for, say, $a=2$.
$\mathbb{Q}$ famously does not contain $\sqrt 2, \pi, e$, and many other numbers.
It is tempting to introduce the set $\mathbb{R}$ of real numbers as the **smallest set containing $\mathbb{Q}$ with no holes**.
While this definition captures the essence of the continuum, it lamentably lacks rigour. 
The rest of this section is about curing this defect. The key concept is the Cauchy sequence, a formalization of the idea of a hole.
The following definitions are, for now, restricted to rationals (even the epsilons are rational!) because that's all we have.
But the definitions remain valid, of course, in $\mathbb{R}$ and in any metric space.


````{prf:definition} Convergence of Sequences
:label: def-convergence

**(a)**
We call a sequence $\{x_n\}$ **convergent to $x$**, written as

```{math}
\lim_{n \to \infty} x_n = x
```
iff, for every $\epsilon > 0$, there is a $n_0 \in \mathbb{N}$ such that, for all $n \ge n_0$, we have

```{math}
\lvert x_n - x \rvert < \epsilon
```

**(b)**
We call a sequence $\{x_n\}$ a **Cauchy sequence**
iff, for every $\epsilon > 0$, there is a $n_0 \in \mathbb{N}$ such that, for all $n, m \ge n_0$, we have

```{math}
\lvert x_n - x_m \rvert < \epsilon
```

**(c)**
We call two Cauchy sequences $\{x_n\}, \{y_n\}$ **equivalent**
iff, for every $\epsilon > 0$, there is a $n_0 \in \mathbb{N}$ such that, for all $n \ge n_0$, we have

```{math}
\lvert x_n - y_n \rvert < \epsilon
```
This is written as:
```{math}
\{x_n\} \sim \{y_n\}
```

**(d)**
We call a set $A$ complete, iff every Cauchy sequence converges.
````


````{prf:theorem} Sequences
:label: thr-convergent-sequences

**a)** Sum, difference, product, and quotient of convergent sequences are convergent and
converge to the sum, difference, product, and quotient of their limits. For the denominator $\{y_n\}$ of a quotient we require that 
$\lim_{n \to \infty} y_n \ne 0$.

**b)** Sum, difference, product, and quotient of Cauchy sequences are Cauchy sequences.
For the denominator  $\{y_n\}$ of a quotient we require an $\epsilon > 0$ and an $n_0 \in \mathbb{N}$ such that 
$|y_n| > \epsilon$ for all $n > n_0$.
````
````{prf:proof} 

We only prove that the quotient of two Cauchy sequences $\{x_n\}$, $\{y_n\}$ is again a Cauchy sequence.

As $\{|y_n|\}$ is positive and bounded, we can choose $\epsilon_0, n_0, M$ such that $\epsilon_0 \le |y_n| \le M$ for all $n > n_0$.
Then:

```{math}
\left | \frac{x_n}{y_n} - \frac{x_m}{y_m} \right | = \left | \frac{x_n y_m - x_m y_n}{y_m y_n} \right | 
\le \frac{1}{\epsilon_0^2} \left | x_n y_m - x_m y_n \right | \le \frac{M}{\epsilon_0^2} \left | x_n - x_m \right |
```
This proves the assertion.
````

With these definitions, we can repeat the approach that worked for integers and rationals.
We introduce the set $\mathbb{R}$ of reals as the **smallest complete field containing $\mathbb{Q}$**. 
As before, the question remains whether such a set exists at all. 
The answer is yes, it does, and goes back to Cantor. He defined

```{math}

&\mathbb{S} = \text{ set of all Cauchy sequences in } \mathbb{Q}

&\mathbb{R} = \mathbb{S}/\sim
```

This reads as follows: $\mathbb{R}$ is the set of the equivalence classes of all Cauchy sequences, or, more informally:
It is the set of whatever number can be approximated by rationals. Example: 
The sequence $\{x_n\}$ defined by 

```{math}
x_0 &= 2 \\
x_{n+1} &= x_n - \frac{2-x_n^2}{2x_n}
```
is a Cauchy sequence in $\mathbb{Q}$ and converges to $\sqrt 2$ in $\mathbb{R}$.
Cantor's construction identifies the sequence $\{x_n\}$ (and all sequences $\{y_n\}$ with $\{y_n\} \sim \{x_n\}$)
with its limit $\sqrt 2$. The notation 

```{math}
\{x_n\} = \sqrt 2
```
is a shorthand representation of this fact.

All basic arithmetic are extended to $\mathbb{R}$ in a natural way. Example:
For $x = \{x_n\}$, $y = \{y_n\}$ we define:

```{math}
x + y = \{x_n\} + \{y_n\}
```
Thanks to {prf:ref}`thr-convergent-sequences` we know the meaning of $\{x_n\} + \{y_n\}$.
Therefore, the set $\mathbb{R}$ is a field. 

$\mathbb{R}$ not only inherits the basic arithmetics, but also the topology:
We must define the distance and convergence of reals in terms of the distance and convergence of Cauchy sequences of rationals,
an undertaking that involves a considerable number of epsilons.

````{prf:definition} Convergence of Reals
:label: def-convergence-reals

Let $r, s$ be real numbers and $\{r_n\}_n$ a sequence of reals numbers.
Here is how they are represented by their defining Cauchy series of rationals:

```{math}
r &= \{y_k\}_k

s &= \{z_k\}_k

r_n &= \{x_{n_k}\}_k

\{r_n\}_n &= \{\{x_{n_k}\}\}_n
```

Each $r_n$ corresponds to (or: is represented by, can be identified with) a Cauchy sequence $\{x_{n_k}\}_k$, 
and the sequence $\{r_n\}_n$ is itself a sequence of Cauchy sequences.
This can be represented as a matrix, with a row for each $r_n$:

```{math}
r_1 & = \{x_{1_k}\} = \{x_{1_1}, x_{1_2}, \ldots, x_{1_k}, \ldots \} 

r_2 & = \{x_{2_k}\} = \{x_{2_1}, x_{2_2}, \ldots, x_{2_k}, \ldots \} 

&\vdots

r_n & = \{x_{n_k}\} = \{x_{n_1}, x_{n_2}, \ldots, x_{n_k}, \ldots \}

&\vdots
```

**a) Distance of reals**  
We define what it means for a real number to be close to zero or to another real number:

```{math}
\left | r \right | < \epsilon &\Leftrightarrow \exists k_0(\epsilon): \forall k > k_0(\epsilon): \left | y_k \right | < \epsilon

\left | r - s \right | < \epsilon &\Leftrightarrow \exists k_0(\epsilon): \forall k > k_0(\epsilon): \left | y_k - z_k \right | < \epsilon
```

Note that the equivalence of rational Cauchy sequences is same as the equality of the corresponding reals:
```{math}
r = s \Leftrightarrow \{y_k\}_k \sim \{z_k\}_k
```


**b) Convergence of real sequences**    
We define what it means for a sequence of real numbers to converge to zero or to another real number:

```{math}
\lim_{n \to \infty} r_n = 0 &\Leftrightarrow \forall \epsilon > 0: \exists n_0(\epsilon): \left | r_n \right | < \epsilon

\lim_{n \to \infty} r_n = 0 &\Leftrightarrow \forall \epsilon > 0: \exists n_0(\epsilon): \left | r_n - r \right | < \epsilon
```
which is the same as:

```{math}
\lim_{n \to \infty} r_n = 0 &\Leftrightarrow \forall \epsilon > 0: \exists n_0(\epsilon): \forall n > n_0(\epsilon): \exists k_0(\epsilon, n): \forall k > k_0(\epsilon, n): \left | x_{n_k} \right | < \epsilon

\lim_{n \to \infty} r_n = r &\Leftrightarrow \forall \epsilon > 0: \exists n_0(\epsilon): \forall n > n_0(\epsilon): \exists k_0(\epsilon, n): \forall k > k_0(\epsilon, n): \left | x_{n_k} - y_k \right | < \epsilon
```


**c) Cauchy convergence of real sequences**  
We define what it means for a sequence of real numbers to be a Cauchy sequence: The sequence $\{r_n\}_n = \{\{x_{n_k}\}\}_n$
is a Cauchy sequence iff:

```{math}
\forall \epsilon > 0: \exists n_0(\epsilon): \forall m, n > n_0(\epsilon): \left | r_n - r_m \right | < \epsilon
```
which is the same as:

```{math}
\forall \epsilon > 0: \exists n_0(\epsilon): \forall m, n > n_0(\epsilon): \exists k_0(\epsilon, m, n): \forall k > k_0(\epsilon, m, n): \left | x_{n_k} - x_{m_k} \right | < \epsilon
```

````

We take as an example the sequences

```{math}
x_{n_0} &= 2 + \frac{1}{n} 

x_{n_{k+1}} &= x_{n_k} - \frac{2 + \frac{1}{n} -x_{n_k}^2}{(2 + \frac{1}{n})x_{n_k}}
```

For each $n \in \mathbb{N}$, $\{x_{n_k}\}_k$ is a Cauchy sequence in $\mathbb{Q}$ that converges in $\mathbb{R}$ to $\sqrt{2 + \frac{1}{n}}$ in $\mathbb{R}$.


````{prf:theorem} Completeness of $\mathbb{R}$
:label: thr-R-completeness

Every Cauchy sequence $\{r_n\}$ in $\mathbb{R}$ converges.
So, $\mathbb{R}$ is complete.

````

````{prf:proof} 

Let $\{r_n\}$ be a Cauchy sequence in $\mathbb{R}$.
Every number $r_n$ in that sequence is represented by a Cauchy sequence $\{x_{n_k}\}$ of rationals:

```{math}
r_n = \{x_{n_k}\}_k
```
Each $r_n$ being a Cauchy sequence, we get:
 
```{math}
\forall n \in \mathbb{N}, \epsilon > 0: \exists k_0(n, \epsilon): \forall k, j > k_0(n, \epsilon) : \left | x_{n_k} - x_{n_j} \right | < \epsilon
```
The sequence  $\{r_n\}_n = \{\{x_{n_k}\}\}_n$ being a Cauchy sequence itself, we get: 
 
```{math}
\forall \epsilon > 0: \exists n_0(\epsilon): \forall m, n > n_0(\epsilon): \exists k_1(\epsilon, m, n): \forall k > k_1(\epsilon, m, n): \left | x_{n_k} - x_{m_k} \right | < \epsilon
```
We conclude that the diagonal sequence  $\{x_{n_n}\}$ is also Cauchy sequence. 
To this end, we choose $\epsilon >0$, $n, m > n_0(\epsilon)$, and $k > k_1(\epsilon, m, n)$ and get the inequality

```{math}
\left | x_{n_n} - x_{m_m} \right | \le \left | x_{n_n} - x_{n_k} \right | + \left | x_{n_k} - x_{m_k} \right | + \left | x_{m_k} - x_{m_m} \right | < 3 \epsilon
```

So, the sequence $\{x_{n_n}\}$ represents a real number $r$:

```{math}
r = \{x_{n_n}\}
```
It remains to show that

```{math}
\lim_{n \to \infty}r_n = r
```
This is true because in  

```{math}
\forall \epsilon > 0: \exists n_0(\epsilon): \forall m, n > n_0(\epsilon): \exists k_1(\epsilon, m, n): \forall k > k_1(\epsilon, m, n): \left | x_{n_k} - x_{m_k} \right | < \epsilon
```
we can choose $m$ as we like. Setting $m = k$ we get (compare {prf:ref}`def-convergence-reals`):

```{math}
\forall \epsilon > 0: \exists n_0(\epsilon): \forall n > n_0(\epsilon): \exists k_1(\epsilon, n): \forall k > k_1(\epsilon, n): \left | x_{n_k} - x_{k_k} \right | < \epsilon
```

which is what we want.
````

As any complete field containing $\mathbb{Q}$ necessarily contains the set $\mathbb{R}$, 
it is indeed the **smallest complete field containing $\mathbb{Q}$**. 


## Compactness

````{prf:definition} Accumulation Points, Closed Sets, Closure
:label: def-closure

todo

````

````{prf:definition} Compactness
:label: def-compactness

A set $A \subset \mathbb{R}$ is called **compact**, 
iff each bounded sequence of elements of A has a convergent subsequence.
````


````{prf:Lemma} Compact Sets 
:label: lem-compactness-completeness

**a)** Compact sets are complete.
**b)** Closed subsets of compact sets are compact.
````

````{prf:proof}

a) Let $A \subset \mathbb{R}$ be compact and $\{x_n\}$ a Cauchy-sequence of elements of $A$. 
Then, the set $\{x_n \mid n \in \mathbb{N} \}$ is bounded and has a subsequence that converges to some $x \in A$.
Therefore $\{x_n\}$, being a Cauchy-sequence, converges itself to $x$.

b) todo 
````

````{prf:theorem} Bolzano-Weierstrass
:label: thr-bolzano-weierstrass

**a)** Every bounded and monotonous sequence of reals is convergent. 

**b)** Each closed interval $[a, b] \subset \mathbb{R}$ is compact.
````

````{prf:proof} 

Todo

````

````{prf:definition} Sup Norm
:label: def-sup-norm

Let $f: [a, b] \to \mathbb{R}$ be a bounded function.

The **sup norm** (or **uniform norm**) of $f$ is defined as:

```{math}
\left \lVert f \right \rVert_{\infty} = \sup \{\lvert f(x) \rvert \mid x \in [a, b]\}
```

This is indeed a norm because:

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

**(b)** We say that $\lim_{n \to \infty} f_n = f$ **uniformly** if 

```{math}
\lim_{n \to \infty} {\left \lVert f_n - f \right \rVert_{\infty}} = 0
```
````

## Continuous Functions

````{prf:definition} Continuity
:label: def-continuity

Let $f: [a, b] \to \mathbb{R}$ be a function.

**(a)** $f$ is **continuous at $x \in [a, b]$** if, for any $\epsilon > 0$, 
there exists a $\delta > 0$ such that $\lvert f(x + h) - f(x) \rvert < \epsilon$ whenever $\lvert h \rvert < \delta$.

**(b)** $f$ is **continuous on $[a, b]$** if $f$ is continuous at each $x \in [a, b]$.

**(c)** $f$ is **uniformly continuous on $[a, b]$** if, for any $\epsilon > 0$, 
there exists a $\delta > 0$ such that $\lvert f(x + h) - f(x) \rvert < \epsilon$ for all $x \in [a, b]$ 
whenever $\lvert h \rvert < \delta$.
````

````{prf:theorem} Continuous Functions on Compact Sets
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
The sequence $\{x_n\}$ has a subsequence that converges to some $x \in [a, b]$, and we have $f(x) = M$ because $f$ is continuous at $x$.

**(d)** 
We prove the assertion by contradiction. Assume $f$ to be not uniformly continuous. Take any $\epsilon > 0$. 
Then there exist two sequences $\{x_n\}, \{y_n\}$ such that

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

Let $f: [a, b] \to \mathbb{R}$ be a continuous function, and $\mu \in \mathbb{R}$ such that  

```{math}
\min  \{f(x) \mid x \in [a,b]\} \le \mu  \le \max  \{f(x) \mid x \in [a,b]\}
```

Then there exists a $\xi \in [a, b]$ such that $f(\xi) = \mu$.
````

````{prf:proof} 

The proof proceeds by halving intervals.
We build two sequences $\{a_n\},\{b_n\}$ such that $\{a_n\} is

```{math}
f(a_n) \le \mu
f(b_n) \ge \mu
```
 
 
 sequence $\{x_n\}$ that converges to some $x \in [a, b]$ such that $f(x) = \mu$.
Let $x_0 = a, x_1 = b, x_2 = (x_0 + x_1)/2$. The general rule for $x_n$ is:

```{math}
x_n = 
\left\{
    \begin{array}{lr}
        (x_{n-2} + x_{n-1})/2 & \text{ if } f(x_{n-1}) < \mu \\
        x_{n-1} & \text{ if } f(x_{n-1}) = \mu \\
        (x_{n-3} + x_{n-1})/2 & \text{ if } f(x_{n-1}) > \mu
    \end{array}
\right .
```

We see that:

```{math}
\left | x_n - x_{n-1} \rvert \le \lvert x_{n-1} - x_{n-2} \right | / 2 
```

so, by induction:

```{math}
\lvert x_n - x_{n-1} \rvert \le (b - a) / 2^{n-1} 
```

The sequence $\{x_n\}$ is a Cauchy sequence. Hence it converges to some $x \in [a, b]$, and, being continuous,
$\{f(x_n)\}$ converges to $f(x).

````

## Riemann-Integrable Functions


````{prf:definition} Riemann Integrals
:label: def-riemann-integrals

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
\left | \int_a^b f(x) \, dx - R(f, X, \xi) \right | < \epsilon
```
In other words, Riemann sums can approximate Riemann integrals to arbitrary precision. We often write

```{math}
\int_a^b f(x) \, dx \approx \sum_{k=0}^{n-1} f(\xi_k)(x_{k+1} - x_{k})
```
as a short version of the exact definition, which lets us use finite sums instead of integrals.

**(d) Riemann Primitives**. Let $f \in \mathcal{R}([a,b])$. The function $F$ defined by

```{math}
F(x) = \int_a^x f(y) \, dy 
```
is called the Riemann-primitive (or primitive) of $f$,
on the understanding that

```{math}
F(a) = \int_a^a f(x) \, dx = 0
```

The notation 

```{math}
F = \int f(y) \, dy
```
is used if the lower bound $a$ is unimportant or not specified. Two primitives of an integrable function $f$ differ by a constant only.
````

````{prf:remark} Monotony, Additivity, Boundedness 
:label: rem-monotony-additivity-boundedness

We state three obvious but important properties of Riemann integrals:

**(a) Monotony**

```{math}
f \le g  \Rightarrow  \int_a^b f(x) \, dx \le \int _a^b g(x) \, dx
```

holds for any two functions $f,g \in \mathcal{R}([a,b])$.

**(b) Additivity**

```{math}
\int_a^b f(x) \, dx + \int_b^c f(x) \, dx = \int_a^c f(x) \, dx
```

holds for any $f \in\mathcal{R}([a,c])$ and any $b \in [a, c]$.

**(c) Boundedness**

R-integrable functions are bounded on closed intervals
(because Riemann sums are).

````

Monotony leads us to an important theorem.

````{prf:theorem} Mean Value Theorem
:label: thr-mean-value

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

````{prf:theorem} Properties of Riemann Integrals
:label: thr-riemann-integrals

**(a)** The R-integrable functions over $[a, b]$ form a **vector space**, written as $\mathcal{R}([a, b])$.

**(b)** The mapping

```{math}
\int_a^b :f \mapsto \int_a^b f(y) \, dy
```
is called the **integration functional**. It is a linear mapping from $\mathcal{R}([a, b])$ to $\mathbb{R}$.

**(c)** Let $f \in \mathcal{R}([a, b])$. Then the following inequality holds:

```{math}
\left | \int_a^b f(y) \, dy \right | \le \int_a^b \left | f(y) \right | \, dy 
```

**(d)** The primitive of an R-integrable function is continuous. The mapping

```{math}
\int :f \mapsto \int_a^x f(y) \, dy
```
is called the **integration operator**. It is a linear mapping from $\mathcal{R}([a, b])$ to $C^0([a, b])$.

**(e)** The **uniform limit** of R-integrable functions is R-integrable,
or, equivalently: $\mathcal{R}([a, b])$ is closed under the sup norm.
We can swap limit and integral:

```{math}
\lim_{n \to \infty} \int_a^b f_n(x) \, dx = \int _a^b\lim_{n \to \infty} f_n(x) \, dx
```
````

````{prf:proof}

The assertions (a) and (b) are obvious. 
The proofs of (c) and (e) use the triangular inequality, and (d) follows from the fact that R-integrable functions are bounded.

**(c)** 
The idea is to approximate the integrals over $f$ and $|f|$ by a single partition. 
We apply the triangular inequality to the Riemann sums and, keeping track of the $\epsilon$, we transfer the result to the integrals.
Let $X$ be a partition of $[a, b]$, $\{\xi_k\}$ a set of intermnediate points, and $\epsilon > 0$ such that: 

```{math}
\left | \int_a^b f(y) \, dy - \sum_{k=0}^n f(\xi_k) (x_{k+1} - x_k) \right | < \epsilon
```
and
```{math}
\left | \int_a^b |f(y)| \, dy - \sum_{k=0}^n |f(\xi_k)| (x_{k+1} - x_k) \right | < \epsilon
```
This gives us:

```{math}
& \left | \int_a^b f(y) \, dy \right | \\
& \le \left | \sum_{k=0}^n f(\xi_k) (x_{k+1} - x_k) \right | + \epsilon \\
& \le \sum_{k=0}^n \left | f(\xi_k) \right | (x_{k+1} - x_k)  + \epsilon \\
& \le \int_a^b \left | f(y) \right | \, dy  + 2 \epsilon 
```
This is the assertion.

**(d)**
Let $f: [a, b] \to \mathbb{R}$ be integrable,  and $F$ a primitive of $f$.
Then, $f$ is bounded by some $M \in \mathbb{R}$, and we have, for $x \in [a, b]$ and arbitrarily small $h$:

```{math}
\left | F(x+h) -  F(x) \right | = \left | \int_x^{x+h} f(y) \, dy \right | \le  \int_x^{x+h} \left | f(y) \right | \, dy \le h M
```
which proves the continuity of $F$ at $x$


**(e)**

Let $\{f_n\}$ be a sequence of functions on $[a, b]$ that converges uniformly to $f$. Let $\epsilon >0$ and $n_0$ be such that, for $n \ge n_0$:

```{math}
\left \lVert f_n - f \right \rVert_{\infty} < \epsilon 
```

Let 

```{math}
A_n = \int_a^b f_n(y) \, dy 
```
We have, for large $n, m$:

```{math}
\left | A_n - A_m \right | \le \int_a^b \left | f_n(y) - f_m(y) \right |  \, dy \le (b - a) \epsilon
```

So, the sequence $\{A_n\}$ is a Cauchy sequence, converges to some value $A$, and:

```{math}
\left | A_n - A \right | \le \epsilon
```
for some large, fixed $n$.
As $f_n$ is R-integrable we can choose a partition $X$ of $[a, b]$ such that, 
for any set of intermediate points $\{\xi_k\}$, we have:

```{math}
\left | A_n - \sum_{k=0}^{n-1} f_n(\xi_k)(x_{k+1}-x_k) \right | < \epsilon
```

Then

```{math}
&\left | A - \sum_{k=0}^{n-1} f(\xi_k)(x_{k+1}-x_k) \right | \\
& \le \left | A - A_n \right | + \left | A_n - \sum_{k=0}^{n-1} f(\xi_k)(x_{k+1}-x_k) \right | \\
& \le \left | A - A_n \right | + \left | A_n - \sum_{k=0}^{n-1} f_n(\xi_k)(x_{k+1}-x_k) \right |  + \sum_{k=0}^{n-1} |f_n(\xi_k) - f(\xi_k)| (x_{k+1}-x_k) \\
& < \epsilon + (b-a) \epsilon + (b-a) \epsilon
```

This proves that $f$ is R-integrable and:

```{math}
\lim_{n \to \infty} \int_a^b f_n(y) \, dy = A = \int_a^b f(y) \, dy = \int_a^b \lim_{n \to \infty} f_n(y) \, dy 
```
````

````{prf:theorem} Riemann-Integrable Functions
:label: thr-riemann-integrable-functions

We consider functions on a closed interval.

**(a)** Step functions are R-integrable

**(b)** Let $f: [a, b] \to \mathbb{R}$ be a function such that, for any $\epsilon > 0$, 
there are R-integrable functions $\phi, \psi$ with

```{math}
\phi \le f \le \psi
```

and

```{math}
\int_a^b (\psi(x) - \phi(x)) \, dx < \epsilon.
```

Then $f$ is R-integrable

**(c)** Monotonous functions are R-integrable

**(d)** Continuous functions are R-integrable
````

````{prf:proof} 

**(a)**
Let $\phi$ be a step function on $[a, b]$ with $\phi(x) = y_k \text{ for } x \in [x_k, x_{k+1})$. Then, obviously:

```{math}
\int_a^b \phi(x) \, dx = \sum_{k=0}^{n-1} y_k
``` 

**(b)**

todo

**(c)**
Let $f$ be monotonously non-decreasing on $[a, b]$. Then $f$ can squeezed between two step functions, $\phi, \psi$,
which are integrable as we know from (a).
Let $n \in \mathbb{N}$ fixed and $x_k = a + \frac{k}{n}(b-a)$. We set:

```{math}
& \phi(x) = f(x_k) \text{ for } x \in [x_k, x_{k+1}) \\
& \psi(x) = f(x_{k+1}) \text{ for } x \in [x_k, x_{k+1})
``` 
Then, clearly:

```{math}
\phi \le f \le \psi
```

and

```{math}
& \int_a^b (\psi(x) - \phi(x)) \, dx \\
& = \sum_{k=0}^{n-1} (f(x_{k+1}) - f(x_{k})) (x_{k+1} - x_k) \\
& = \frac{1}{n}(b-a) \sum_{k=0}^{n-1} (f(x_{k+1}) - f(x_{k})) \\
& = \frac{1}{n}(b-a)(f(b) - f(a))
```
which can be made arbitrarily small. The assertion follows from (b).

**(d)**
Let $f$ be continuous on $[a, b]$. Then $f$ is uniformly continuous on $[a, b]$ by {prf:ref}`thr-continuity-on-compact-sets` 
and is the uniform limit of step functions.

````



A famous non-integrable function is the *Dirichlet function*, which is $1$ for rational numbers and $0$ otherwise.


````{prf:theorem} Lebesgue Criterion
:label: thr-lebesgue-criterion

Bounded functions are R-integrable iff their set of discontinuities has measure zero.

````

````{prf:proof} 

todo


````



## Differentiable Functions


````{prf:definition} Derivatives
:label: def-derivatives

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
If $f$ is continuous in $x \in [a, b]$, then $F$ is differentiable at $x$ and it holds that

```{math}
F'(x) = f(x)
```

**(c)**
If $f$ is continuous on $[a, b]$, then $F$ is differentiable on $[a, b]$, and it holds that

```{math}
F' = f
```

**(d)**
The linear operators $\int$ and $\partial$ are inverse to each other.

```{math}

\int : 
\left\{
    \begin{array}{lr}
        C^0([a, b] \to C^1([a, b] \\
        f \mapsto F
    \end{array}
\right\}

\\

\partial : 
\left\{
    \begin{array}{lr}
        C^1([a, b] \to C^0([a, b] \\
        F \mapsto f
    \end{array}
\right\}

```

```{math}

\left( \int \partial \right) F = F

\left( \partial \int \right) f = f

````

````{prf:proof}

todo

````


````{prf:theorem} Integration Rules
:label: thr-integration-rules

Let $f, g \in C^1([a,b])$


**(a)** Integration by Parts
Let $f, g \in C^1([a,b])$. Then

```{math}
\int^b_a f(x) \, g'(x) \, dx = f \, g \vert^b_a - \int^b_a f'(x) g(x) \, dx
```

**(b)** Substitution Rule
Let $f \in C^1([a,b])$ and $g \in C^1([g^{-1}(a), g^{-1}(b))$. Then

```{math}
\int^b_a f(y) \, dy = \int^{g^{-1}(b)}_{g^{-1}(a)} f(g(x))\,g'(x) \, dx
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

Let $f \in  C^{n+1}(A)$. Then:

$$
f(u)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{1}{n!}\int _x^u (u-t)^n f^{(n+1)}(t)dt
$$
````


````{prf:theorem} Taylor V2
:label: thr-taylor-v2
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

### Trying MyST


```{figure} https://github.com/rowanc1/pics/blob/main/mountains.png?raw=true
:label: my-fig
:align: center

My **bold** mountain 🏔🚠.
```

This is a reference to [My Mountain](#my-fig)

This is a reference to [Bolzano-Weierstrass](#thr-bolzano-weierstrass)

This is a reference to ["{name}"](#thr-bolzano-weierstrass)

This is a reference to {prf:ref}`Bolzano-Weierstrass <thr-bolzano-weierstrass>`

This is a reference to {prf:ref}`"{name}" <thr-bolzano-weierstrass>`

This is a reference to @thr-bolzano-weierstrass

---
numbering:
  box:
    enabled: true
---

:::{figure} westfield2.png
:label: my-box
:kind: box

This figure will be numbered as "Box 1"
:::

:::{math}
:enumerated: false
Ax = b
:::

```{math}
:enumerated: true
Ax = b
```

```{math}
:typst: root(3, x)
\sqrt[3]{x}
```

```{math}
:label: my_label
By=c
```

This is a reference to {prf:ref}`my_label`

This is a reference to {prf:ref}`My Label <my_label>`

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



[//]: # ()
[//]: # (Each sequence being a Cauchy sequence, we have, looking at {prf:ref}`equ-cauchy-cauchy` by row: )

[//]: # (```{math})

[//]: # (\forall n, \epsilon > 0: \exists n_0&#40;n, \epsilon&#41;: \forall k, j > n_0 : \left | x_{n_k} - x_{n_j} \right | < \epsilon)

[//]: # (```)

[//]: # ()
[//]: # (The sequence  $\{\{x_k\}_n\}$ being a Cauchy sequence, we have, for a large enough $k$, looking at {prf:ref}`equ-cauchy-cauchy` by column: )

[//]: # (```{math})

[//]: # (\forall \epsilon > 0: \exists n_1&#40;\epsilon&#41;: \forall m, n > n_1:  \left | x_{n_k} - x_{m_k} \right | < \epsilon)

[//]: # (```)

[//]: # ()
[//]: # (We conclude that the diagonal sequence  $\{x_{n_n}\}$ is Cauchy sequence, thus element of $\mathbb{R}$ because the inequality)

[//]: # ()
[//]: # (```{math})

[//]: # (\left | x_{n_n} - x_{m_m} \right | \le \left | x_{n_n} - x_{n_k} \right | + \left | x_{n_k} - x_{m_k} \right | + \left | x_{m_k} - x_{m_m} \right | < 3 \epsilon)

[//]: # (```)

[//]: # ()
[//]: # (holds for large enough $k, m, n$.)



<div style="margin-bottom: 100px;"></div>
