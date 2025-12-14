# From Naturals to Reals

*Johannes Siedersleben, December 2025*



> under construction

## What the Tortoise Said to Achilles (Lewis Carroll)

This paradox sounds Greek, but it is in fact due to Lewis Carroll, the author of Alice in Wonderland. 
It questions what mathematicians really do.
Imagine the tortoise explaining a mathematical argument to Achilles.
This is what it says, in the words of Lewis Carroll:

```{admonition} What the Tortoise Said to Achilles
:class: tip

Listen:

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
Achilles triumphantly replied. "Logic would tell you, 'You can't help
yourself. Now that you've accepted A and B and C and D, you must accept Z!' 
So you've no choice, you see."
"Whatever *Logic* is good enough to tell me is worth *writing down*," said
the Tortoise. "So enter it in your book, please. We will call it

(E) If A and B and C and D are true, Z must be true."

"Until I've granted *that*, of course I needn't grant Z. So it's quite
a *necessary* step, you see?" "I see," said Achilles; and there was a touch of sadness in his tone.

Here the narrator, having pressing business at the Bank, was obliged to leave the happy
pair, and did not again pass the spot until some months afterwards. When he did so,
Achilles was still seated on the back of the much-enduring Tortoise and was writing
in his notebook, which appeared to be nearly full. The Tortoise was saying, "Have
you got that last step written down? Unless I've lost count, that makes a thousand
and one. There are several million more to come. And would you mind, as a
personal favour, considering what a lot of instructions this colloquy of ours will
provide for the Logicians of the Nineteenth Century—would you mind adopting a
pun that my cousin the Mock-Turtle will then make, and allowing yourself to be re-
named *Taught-Us*?"
"As you please!" replied the weary warrior, in the hollow tones of despair, as he
buried his face in his hands. "Provided that you, for your part, will adopt a pun the
Mock-Turtle never made, and allow yourself to be re-named *A Kill-Ease*!"
```

So much from Lewis Carroll. With a touch of sadness, 
I must admit that this paradox puts all mathematical reasoning at risk.
How can we be sure that a proof is correct? What rules do we apply, and who granted us the right to apply them?
Is there a formal, indisputable way of proving theorems, or is mathematics subject to some kind of majority decision?
Here, formal logic – the Gödel-Tarski stuff – comes to our rescue, but that is a different story.

## Introduction

This material has been published many times, see {cite}`heuser2009analysis1`, 
{cite}`forster2016analysis1`,{cite}`rudin1976principles`,{cite}`courant1955differential`, 
to name but a few prominent examples.

## Naturals

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

   is a bijection, and $P = S^{-1}$ is its inverse. We normally write, of course, $n + 1$ and $n - 1$ to indicate successor and predecessor.

4. **Induction**: If $\phi$ is a unary predicate such that
$\phi(0)$ is true, and for every $n \in \mathbb{N}$, $\phi(n)$ being true implies that $\phi(S(n))$ is true,
then $\phi(n)$ is true for every $n \in \mathbb{N}$.
````
The Peano axioms not only allow the definition of all basic arithmetical operations. 
They form the foundation of number theory.
In virtue of the Peano axioms we can start at $0$ and, 
applying the successor function, construct as many natural numbers as we like. This opens the door to infinity.
The following is a formal definition of infinity, with no handwaving, no dots, and no "and so on."


````{prf:definition} Infinity
:label: def-infinity
**a)** A set $A$ is **finite** iff there is an $n \in \mathbb{N}$ and an injection $\phi: A \to \{0, 1, \ldots, n\}$.

**b)** A set $A$ is **infinite** iff there is an a proper subset $B$ of $A$ and an injection $\phi: A \to B$.

**c)** A set $A$ is **countable** iff there is an injection $\phi: A \to \mathbb{N}$. 
This injection is often called an *enumeration*, a way of putting all elements of $A$ in a sequential order.
````
The set $\mathbb{N}$ is infinite because the successor function $S$ is exactly such an injection, with $B = \mathbb{N} - \{0\}$.
That's a formal version of Hilbert's Hotel, which can always accommodate an extra guest by moving everyone else up one room. 
Another injection would be $\phi(n) = 10^n$, with $B = \{1, 10, 100, \ldots\}$. $B$ is a set with huge gaps, and yet, 
it's still infinite: you never run out of natural numbers. 

The equivalence of **not finite** and **infinite** in the above terms is not obvious. 
To prove it, we need a weak form of the axiom of choice.


````{prf:definition} Axiom of Countable Chioce
:label: def-axiom-countable-choice
Every not finite set contains a countably infinite subset
````

````{prf:theorem} Countable and Uncountable Sets
:label: thr-countable-uncountable

**(a)** If $A$ is infinite iff  it is not finite.

**(b)** If $A$ is countably infinite iff there is an bijection $\phi: A \to \mathbb{N}$. 

**(c)** A countable union of countable sets is countable.

**(d)** A finite crossproduct of countable sets is countable

**(e)** Let $A$ be any set. It is never possible to define an injection from the power set $\mathcal{P}(A)$ to $A$.
Therefore, the power set of a countable set is always uncountable.
````
````{prf:proof}

**(a)**
Let $A$ be infinite and assume it to be finite. Let $\phi : A \to B$ as claimed above. 
But $\left |\phi(A) \right | = \left | A \right | > \left | B \right | = \left | \phi(A) \right |$.
So $A$ cannot be finite, it must be not finite.

Let $A$ be not finite, and $\{a_0, a_1, \ldots \}$ be a countably infinite subset as granted by {prf:ref}`def-axiom-countable-choice`.
We define $\phi$ as follows:

```{math}
\phi:
\left\{
   \begin{array}{l}
       A &\to A - \{a_0\} \\
       a_k &\mapsto a_{k+1} \text{ for } a_k \in \{a_0, a_1, \ldots \} \\
       x &\mapsto x \text{ for } x \notin \{a_0, a_1, \ldots \}
   \end{array}
\right .
```

This shows that $A$ is infinite.

**(b)** If there is a bijection $\phi : A \to \mathbb{N}$, then $A$ is countable and infinite, hence countably infinite.

Now, let $A$ be countably infinite and $\phi : A \to \mathbb{N}$ an injection. We define:

```{math}
&n_0 = \min \phi(A) \\
&a_0 = \phi^{-1}(n_0) \\
\\
&n_k = \min \phi(A - \{a_0, a_1, \ldots, a_{k-1} \}) \\
&a_k = \phi^{-1}(n_k) 
```
The function $\psi$ defined by:

```{math}
\psi(a_k) = k
```
is the desired bijection: it is defined for all $a_k$, it is an injection by construction, 
and it is a surjection because of $\psi(A) = \mathbb{N}$.


**(c, d)**

The shortest way to prove assertions (c) and (d) relies on two facts from elementary arithmetic:
 
1. Any natural number $a > 1$ can be uniquely decomposed 
  into a product of primes $a = \prod_{i=1}^n p_i^{\alpha_i}$ where $p_i$
  are prime numbers and $\alpha_i$ are naturals (see {prf:ref}`thr-fundamental`).
  
2. There are infinitely many primes $p_1, p_2, \ldots$ (see {prf:ref}`thr-infinite-primes`).

Let $\{A_i\}$ be a family of sets, countable for assertion (c), finite for (d), and let

```{math}
\phi_i : A_i \to \mathbb{N}
```
be the injection corresponding to $A_i$. 

Countable Union: The function

```{math}
\phi:
\left\{
   \begin{array}{lr}
       \cup_i A_i  \to \mathbb{N} \\
       a \mapsto p_i^{\phi_i(a)} \text{ if } a \in A_i
   \end{array}
\right .
```
   
is an injection: The set $A_i$ is mapped to the powers of $p_i$.

Finite Crossproduct: The function

```{math}
\phi:
\left\{
   \begin{array}{lr}
       \prod_{i=1}^n A_i  \to \mathbb{N} \\
       (a_1, a_2, \ldots, a_n) \mapsto \prod_{i=1}^n p_i^{\phi_i(a_i)}
   \end{array}
\right .
```
   
is an injection: Each $(a_1, a_2, \ldots, a_n)$ is mapped to the unique natural number whose decomposition
is $(\phi_1(a_1), \phi_2(a_2), \ldots, \phi_n(a_n))$.


**e)** 
Assume there is an injection
```{math}
\phi: \mathcal{P}(A) \to A
```
We investigate the set

```{math}
K = \{\phi(U) \mid  U \subseteq A, U \ne \emptyset, \phi(U) \notin U\}
```
If $K$ were empty, we had

```{math}
&\forall U \subseteq A, U \ne \emptyset: \phi(U) \in U \\
\Rightarrow &\forall a \in A: \phi(\{a\}) \in \{a\} \\
\Rightarrow &\forall a \in A: \phi(\{a\}) = a
```
But in this case, for any subset $U$ of $A$ with two or more elements, there would be no room left for $\phi(U)$, 
since $\phi$ is injective. Therefore, $K$ is not empty, and we can ask if $\phi(K)$ belongs to $K$:

```{math}
:label: equ-countable-uncountable-1
&\phi(K) \in K \Rightarrow \phi(K) \notin K \\
&\phi(K) \notin K \Rightarrow \phi(K) \in K
```
This contradiction proves that there can be no injection from a power set of a set to the set itself.
It is the formal variant of the barber who shaves all men who do not shave themselves.
Note that, with $K$ empty, contradiction [](#equ-countable-uncountable-1) would be meaningless: ex falso quodlibet.
````

## Integers

The set $\mathbb{N}$ is a **semigroup with respect to addition** and a **semigroup with respect to multiplication**.
However, $\mathbb{N}$ lacks the negative numbers: the equation $a + x = b$ is solvable in $\mathbb{N}$ only if $a \le b$. 

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
$\mathbb{Z}$ is countable, since it is the union of two countable sets.


## Rationals
The set $\mathbb{Z}$ is a ring but 
not a field. $\mathbb{Z}$ lacks the fractions: the equation $ax = 1$ is solvable in $\mathbb{Z}$ only for $a = 1$. 

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
$\mathbb{Q}$ is countable, since it is the cross-product of two countable sets.


## Reals

What worked fine for integers and rationals proves to be more tricky for reals.
The set $\mathbb{Q}$ is a field with many holes: the equation $x^2 = a$ is solvable in $\mathbb{Q}$ only for square numbers, but not for, say, $a=2$.
$\mathbb{Q}$ famously does not contain $\sqrt 2, \pi, e$, and many other numbers.
It is tempting to think of the set $\mathbb{R}$ of real numbers as the **smallest set containing $\mathbb{Q}$ with no holes**.
While this idea captures the essence of the continuum, it lamentably lacks rigour. 
The rest of this section is about curing this defect. The key concept is the Cauchy sequence, a formalization of the idea of a hole.
The following definitions are, for now, restricted to rationals (even the epsilons are rational!) because that's all we have.
But the definitions remain valid, of course, in $\mathbb{R}$ and in any metric space.


````{prf:definition} Convergence of Rational Sequences
:label: def-convergence

**(a)**
We call a sequence $\{x_n\}$ **convergent to $x$**, written as

```{math}
\lim_{n \to \infty} x_n = x
```
iff $\left | x_n - x \right |$ becomes arbitrariliy small:

```{math}
\forall \epsilon > 0 : \exists n_0(\epsilon) \in \mathbb{N} : \forall n > n_0(\epsilon) : \left | x_n - x \right |  < \epsilon
```

**(b)**
We call a sequence $\{x_n\}$ a **Cauchy sequence**
iff $\left | x_m - x_n \right |$ becomes arbitrariliy small:

```{math}
\forall \epsilon > 0 : \exists n_0(\epsilon) \in \mathbb{N} : \forall m, n > n_0(\epsilon) : \left | x_m - x_n \right |  < \epsilon
```

**(c)**
We call two Cauchy sequences $\{x_n\}, \{y_n\}$ **equivalent**
iff $\left | x_n - y_n \right |$ becomes arbitrariliy small:

```{math}
\forall \epsilon > 0 : \exists n_0(\epsilon) \in \mathbb{N} : \forall n > n_0(\epsilon) : \left | x_n - y_n \right |  < \epsilon
```
This is written as:
```{math}
\{x_n\} \sim \{y_n\}
```

**(d)**
We call a set $A$ complete iff every Cauchy sequence converges.
````


````{prf:theorem} Arithmetic on Sequences
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
It is the set of whatever number can be approximated by rationals. This gives us the following theorem for free:

````{prf:theorem} Rationals and Reals
:label: thr-rationals-reals
Every real number can be approximated by rationals to any degree of precision.
````

Example: 
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
Thanks to {prf:ref}`thr-convergent-sequences` we know the meaning of $\{x_n\} + \{y_n\}$ and of all other arithmetic operations.
Therefore, the set $\mathbb{R}$ is a field. 

$\mathbb{R}$ not only inherits the basic arithmetics but also the topology:
We must define the distance and convergence of reals in terms of the distance and convergence of Cauchy sequences of rationals,
an undertaking that involves a considerable number of epsilons.

````{prf:definition} Convergence of Real Sequences
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
:label: def-convergence-reals-1

\left | r \right | < \epsilon &\Leftrightarrow \exists k_0(\epsilon): \forall k > k_0(\epsilon): \left | y_k \right | < \epsilon \\
\left | r - s \right | < \epsilon &\Leftrightarrow \exists k_0(\epsilon): \forall k > k_0(\epsilon): \left | y_k - z_k \right | < \epsilon
```

Note that the equivalence of rational Cauchy sequences is the same as the equality of their corresponding reals:
```{math}
r = s \Leftrightarrow \{y_k\}_k \sim \{z_k\}_k
```

**b) Convergence of reals**    
We define what it means for a sequence of real numbers to converge to zero or to another real number:

```{math}
:label: def-convergence-reals-2
\lim_{n \to \infty} r_n = 0 &\Leftrightarrow \forall \epsilon > 0: \exists n_0(\epsilon): \forall n > n_0(\epsilon) \left | r_n \right | < \epsilon \\
\lim_{n \to \infty} r_n = r &\Leftrightarrow \forall \epsilon > 0: \exists n_0(\epsilon): \forall n > n_0(\epsilon) \left | r_n - r \right | < \epsilon
```

Expanding statement {eq}`def-convergence-reals-2` with {eq}`def-convergence-reals-1`, gives us the long version:

```{math}
\lim_{n \to \infty} r_n = 0 &\Leftrightarrow \forall \epsilon > 0: \exists n_0(\epsilon): \forall n > n_0(\epsilon): \exists k_0(\epsilon, n): \forall k > k_0(\epsilon, n): \left | x_{n_k} \right | < \epsilon

\lim_{n \to \infty} r_n = r &\Leftrightarrow \forall \epsilon > 0: \exists n_0(\epsilon): \forall n > n_0(\epsilon): \exists k_0(\epsilon, n): \forall k > k_0(\epsilon, n): \left | x_{n_k} - y_k \right | < \epsilon
```


**c) Cauchy convergence of reals**  
We define what it means for a sequence of real numbers to be a Cauchy sequence: The sequence $\{r_n\}_n = \{\{x_{n_k}\}\}_n$
is a Cauchy sequence iff:

```{math}
:label: def-convergence-reals-3
\forall \epsilon > 0: \exists n_0(\epsilon): \forall m, n > n_0(\epsilon): \left | r_n - r_m \right | < \epsilon
```
Expanding statement {eq}`def-convergence-reals-3` with {eq}`def-convergence-reals-1`, gives us the long version:

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


````{prf:theorem} $\mathbb{R}$ is Complete
:label: thr-R-completeness

Every Cauchy sequence $\{r_n\}$ in $\mathbb{R}$ converges.

````

````{prf:proof} 
Let $\{r_n\}$ be a Cauchy sequence in $\mathbb{R}$.
We proceed in two steps: (1) We show that the diagonal sequence $r$ is a Cauchy sequence. (2) We show that $\{r_n\}$ converges to $r$.

Every number $r_n$ in that sequence is represented by a Cauchy sequence $\{x_{n_k}\}$ of rationals:

```{math}
r_n = \{x_{n_k}\}_k
```
Each $r_n$ being a Cauchy sequence, we get:
 
```{math}
:label: thr-R-completeness-1

\forall n \in \mathbb{N}, \epsilon > 0: \exists k_0(n, \epsilon): \forall k, j > k_0(n, \epsilon) : \left | x_{n_k} - x_{n_j} \right | < \epsilon
```
The sequence  $\{r_n\}_n = \{\{x_{n_k}\}\}_n$ being a Cauchy sequence itself, we get: 
 
```{math}
:label: thr-R-completeness-2

\forall \epsilon > 0: \exists n_0(\epsilon): \forall m, n > n_0(\epsilon): \exists k_1(\epsilon, m, n): \forall k > k_1(\epsilon, m, n): \left | x_{n_k} - x_{m_k} \right | < \epsilon
```
We conclude that the diagonal sequence  $\{x_{n_n}\}$ is also Cauchy sequence. 
To this end, we choose $\epsilon >0$, $n, m > n_0(\epsilon)$, and $k > k_1(\epsilon, m, n)$ and, using inequality {eq}`thr-R-completeness-1` twice 
and {eq}`thr-R-completeness-2` once, get the inequality:

```{math}
\left | x_{n_n} - x_{m_m} \right | \le \left | x_{n_n} - x_{n_k} \right | + \left | x_{n_k} - x_{m_k} \right | + \left | x_{m_k} - x_{m_m} \right | < 3 \epsilon
```

So, the sequence $\{x_{n_n}\}$ is a Cauchy sequence and represents a real number $r$:

```{math}
r = \{x_{n_n}\}
```
It remains to show that

```{math}
\lim_{n \to \infty}r_n = r
```
We observe that in statement {eq}`thr-R-completeness-2` we can choose $m$ as we like. 
Setting $m = k$ we get (compare {prf:ref}`def-convergence-reals`):

```{math}
\forall \epsilon > 0: \exists n_0(\epsilon): \forall n > n_0(\epsilon): \exists k_1(\epsilon, n): \forall k > k_1(\epsilon, n): \left | x_{n_k} - x_{k_k} \right | < \epsilon
```

which is what we want.
````

This proof, however dry or abstract it might appear, is straightforward. 
Proofs are all about *applying* known results to obtain new ones. This is done twice:
We apply the triangular inequality to show that the diagonal sequence is a Cauchy sequence, 
and in statement {eq}`thr-R-completeness-2`, 
we replace the general $m$ with a specific choice — this is how "forall" is meant to be employed.


````{prf:theorem} $\mathbb{R}$ is uncountable
:label: thr-R-uncountable

**(a)**

Let $B \ge 2$ be a natural number, the *basis*.
Every rational number $x = p/q \in [0, 1)$ can be represented by a series

```{math}
\frac{p}{q} = \sum_{k=1}^\infty \frac{a_k}{B^k}
```
where $a_k \in \{0,1, \ldots, B-1\}$. For $B = 10$, these are the decimal fractions.

**(b)**
Every open interval of $\mathbb{R}$ is uncountable.
````

````{prf:proof} 
**(a)**
We are going to generalize the decimal expansion as it is taught at secondary schools.
Look at the sequences $\{a_k\}, \{r_k\}$ defined by:

```{math}
&a_1 = pB // q \\
&r_1 = pB \, \% \, q \\
\\
&a_{n+1} = r_n // q \\
&r_{n+1} = r_n \, \% \, q
```

The definition of `%` and `//` implies: 

```{math}
pB &= (pB // q)q + pB \, \% \, q \\
&=  qa_1 + r_1
```

```{math}
r_n B &= (r_nB // q)q + r_nB \, \% \, q \\
&=  qa_{n+1} + r_{n+1}
```

Dividing by $qB$ or $qB^{n+1}$ resp. gives:

```{math}
\frac{p}{q} = \frac{a_1}{B} + \frac{r_1}{qB} 
```
```{math}
\frac{r_n}{qB^n} = \frac{a_{n+1}}{B^{n+1}} + \frac{r_{n+1}}{qB^{n+1}}
``` 

from which follows for any $n$:

```{math}
:label: equ-R-uncountable-1

\frac{p}{q} = \sum_{k=1}^n \frac{a_k}{B^k} + \frac{r_{n}}{qB^n}
```

**(b)** The proof uses the famous diagonalization method. 
We prove in a first step that it is impossible to enumerate the rationals in $[0,1)$.
Assume that $\{x_n\}$ is such an enumeration and 

```{math}
x_n = \sum_{k=0}^\infty \frac{a_{n_k}}{2^k}
```
is the binary representation of $x_n$ as presented in part (a). Then 
  
```{math}
y = \sum_{k=0}^\infty \frac{1- a_{k_k}}{2^k}
```  
cannot be one of the $x_n$ because $y = x_{n^*}$ for some $n^*$ 
would imply:

```{math}
1 - a_{{n^*}_{n^*}} = a_{{n^*}_{n^*}}
``` 
But this is impossible, as $a_{{n^*}_{n^*}}$ is a natural number.

To prove that any open interval $(a, b)$ is uncountable we use the injection:

```{math}
\phi:
\left\{
   \begin{array}{lr}
       (0, 1) \to  (a, b) \\
       x \mapsto a + x(b-a)
   \end{array}
\right .
```
````

As any complete field containing $\mathbb{Q}$ necessarily contains the set $\mathbb{R}$, 
it is indeed the **smallest complete field containing $\mathbb{Q}$**. 
From now on, $\mathbb{R}$ will be our home. Whatever happens, happens in $\mathbb{R}$.


````{prf:remark} Continuum Hypothesis
:label: rem-continuum-hypothesis

Two sets are said to be **equinumerous**, or have the same **cardinality**, if there is a bijection between them. 
{prf:ref}`thr-countable-uncountable` (b) tells us that all countably infinite sets share the same cardinality, 
denoted as $\aleph_0$. {prf:ref}`thr-R-uncountable` tells us that $\mathbb{R}$ and $\mathcal{P}(\mathbb{N})$ have the same cardinality, 
denoted as  $\mathfrak{c}$. {prf:ref}`thr-countable-uncountable` (e) tells us that, for any set $A$, 
the cardinality of $\mathcal{P}(A)$ is always strictly higher than that of $A$. 
And if two sets have the same cardinality, then their power sets necessarily do too. 
This leads to an infinite sequence (i.e. a countable set) of 
cardinalities: $\{\aleph_0, \aleph_1, \ldots \}$ with $\aleph_{n+1} = 2^{\aleph_n}$. Are there any others?

The continuum hypothesis (abbreviated as **CH**) claims that there aren't. 
If this is true, there is no cardinality between countable infinity $\aleph_0$ 
and the continuum $\mathfrak{c} = \aleph_1 = 2^{\aleph_0}$.

CH is independent of the ZFC-Axioms: Both "ZFC + CH" and "ZFC + $\neg$ CH" are consistent, assuming ZFC is.
But this is a different story, to be told in another paper.
````


## References

```{bibliography}
:filter: docname in docnames
```

<div style="margin-bottom: 100px;"></div>
