# From Naturals to Reals (CLAUDE)

*Johannes Siedersleben, December 2025*


## Introduction

Hamlet has been interpreted countless times, and yet, whenever you read or watch it, you are likely to get new impressions, 
new insights. Over and over again, its depth and beauty overwhelm you.

The same is true of the path from naturals to reals, which lies at the very heart of mathematics. 
It has been taught, presented, published countless times,
and yet, every time I go over it (I can only speak for myself), I find new insights,
and I am amazed by the clarity and elegance of this intellectual edifice. 

What lies ahead is a fast track from naturals to reals. Starting with the naturals, 
I introduce the integers as the smallest ring containing the naturals, 
the rationals as the smallest field containing the integers, 
and the reals as the smallest complete set containing the rationals.
So, the reals are there, available and ready to be used as a starting point for further expeditions, 
such as the calculus. Along the way, we encounter the concepts of countable and uncountable infinity, 
and we end with an outlook on the continuum hypothesis.

The naturals are a model of what can be counted, such as coins, fingers, or pebbles. 
If you cut a pie into, say, eight pieces, you have done some rational arithmetic. 
Naturals and rationals are an abstraction of some aspects of the world we encounter or perceive.
Negative numbers are a bit more complicated: A debt, a negative temperature, is an abstraction itself.
You can physically count the coins in your pocket but not the ones you owe your friend.
The reals, the continuum, are quite different. The continuum is an abstraction of straight lines in space or time.
However, quantum physics tells us that straight lines break down into discrete quanta when observed closely.
And yet, the continuum is one of the most important and most useful abstractions ever conceived.

Much of the material presented can be found in {cite}`heuser2009analysis1`, 
{cite}`forster2016analysis1`, {cite}`stillwell2010roads`,
to name but a few prominent examples.
Why did I write this paper? The starting point was the idea of a fast track from naturals to reals, with all 
difficulties included, but the boring parts sketched or omitted.
The result is, hopefully, a roadmap you see before your eyes, easy to remember, you can talk about to a friend
over a pint or two. It is, at best, a distilled version of what you find in the books cited. 

The first section, Lewis Carroll's paradox, is a reflection about what mathematical reasoning really is.
It is meant as a nudge to always take a step back and ask: What am I doing here? How do I know I am right?
Never stop asking!


## 1 Introduction **CLAUDE**

This paper constructs the real numbers ℝ starting from the natural numbers ℕ. 
Our goal is pedagogical clarity: we seek the most direct path to understanding the number system that underlies calculus and analysis.

The construction follows a natural progression, each step remedying a deficiency in the previous system:

- **Natural numbers ℕ = {0, 1, 2, 3, ...}**: Our starting point, suitable for counting and basic arithmetic
- **Integers ℤ = {..., -2, -1, 0, 1, 2, ...}**: Extending ℕ by adjoining additive inverses, enabling unrestricted subtraction
- **Rational numbers ℚ**: Extending ℤ by adjoining multiplicative inverses, enabling division (except by zero)  
- **Real numbers ℝ**: Completing ℚ by filling the "gaps" that prevent certain sequences from converging

Why do we need these successive extensions? Each arises from solving equations that have no solution in the previous system:
- The equation *x + 3 = 1* has no solution in ℕ, but *x = -2* solves it in ℤ
- The equation *2x = 1* has no solution in ℤ, but *x = 1/2* solves it in ℚ
- The "equation" *x² = 2* has no solution in ℚ, but *x = √2* solves it in ℝ

More subtly, certain Cauchy sequences in ℚ—sequences whose terms get arbitrarily close to each other—fail to converge to any rational number. Consider the sequence formed by truncating the decimal expansion of √2:

*1, 1.4, 1.41, 1.414, 1.4142, 1.41421, ...*

Each term is rational, and the sequence becomes arbitrarily stable (Cauchy), yet it converges to no rational number. The real numbers are constructed precisely to ensure that such sequences *do* converge.

This completeness property is essential for calculus. Without it, we cannot prove that:
- Continuous functions on closed intervals achieve their maximum values
- Monotone bounded sequences converge
- Power series have well-defined radii of convergence
- The intermediate value theorem holds

Our construction achieves completeness *by construction* rather than by axiom. We define ℝ as equivalence classes of Cauchy sequences of rational numbers, ensuring that every Cauchy sequence in ℝ automatically converges (Theorem 5.2). The supremum property—often taken as an axiom characterizing ℝ—emerges as a theorem (Theorem 5.3), a consequence of Cauchy completeness.

This approach emphasizes the constructive nature of the progression ℕ → ℤ → ℚ → ℝ, with each step following a similar pattern: we form equivalence classes of pairs (or sequences) from the previous system, defining operations that respect the equivalence relation. The result is the number system underlying modern analysis.

We assume basic familiarity with set theory, functions, and elementary logic, but do not assume prior knowledge of real analysis. The paper is written for mathematically inclined readers who want to understand how the continuum arises from discrete beginnings.



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

## Naturals **JS**

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
This injection is often called an **enumeration**, a way of arranging all elements of $A$ in a sequential order.
````
The set $\mathbb{N}$ is infinite because the successor function $S$ is exactly such an injection, with $B = \mathbb{N} - \{0\}$.
That's a formal version of Hilbert's Hotel, which can always accommodate an extra guest by moving everyone else up one room. 
Another injection would be $\phi(n) = 10^n$, with $B = \{1, 10, 100, \ldots\}$. $B$ is a set with huge gaps, and yet, 
it's still infinite: you never run out of natural numbers. 

The equivalence of **not finite** and **infinite** in {prf:ref}`def-infinity` is not obvious. 
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
The function $\phi$ defined by:

```{math}
\phi:
\left\{
   \begin{array}{l}
       A &\to &A - \{a_0\} \\
       a_k &\mapsto &a_{k+1} \text{ for } a_k \in \{a_0, a_1, \ldots \} \\
       x &\mapsto &x \text{ for } x \notin \{a_0, a_1, \ldots \}
   \end{array}
\right .
```

is the desired injection.

**(b)** If there is a bijection $\phi : A \to \mathbb{N}$, then $A$ is countable and infinite, hence countably infinite.

Now, let $A$ be countably infinite and $\phi : A \to \mathbb{N}$ an injection. We set:

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

**(c) Countable Union**: The function

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

**(d) Finite Crossproduct**: The function

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
If $K$ were empty, we would have

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

## 2 Natural Numbers **CLAUDE**

The natural numbers ℕ = {0, 1, 2, 3, ...} form our starting point. They arise naturally from counting and support the basic operations of addition and multiplication.

### 2.1 Axiomatic Characterization

The structure of ℕ can be characterized axiomatically through the Peano axioms:

1. 0 is a natural number
2. Every natural number *n* has a successor *S(n)*
3. 0 is not the successor of any natural number
4. If *S(n) = S(m)*, then *n = m* (successors are injective)
5. **Induction axiom**: If a set *A* contains 0, and whenever *A* contains *n* it also contains *S(n)*, then *A* contains all natural numbers

From these axioms, addition and multiplication can be defined recursively:
- *n + 0 = n* and *n + S(m) = S(n + m)*
- *n · 0 = 0* and *n · S(m) = n · m + n*

The Peano axioms characterize ℕ *uniquely* up to isomorphism: any two models satisfying these axioms are structurally identical.

### 2.2 Set-Theoretic Construction

While the Peano axioms characterize ℕ abstractly, we can also *construct* ℕ within set theory. Various constructions exist, the most common being von Neumann's approach:

- 0 := ∅ (the empty set)
- 1 := {0} = {∅}
- 2 := {0, 1} = {∅, {∅}}
- 3 := {0, 1, 2} = {∅, {∅}, {∅, {∅}}}
- In general: *S(n) := n ∪ {n}*

This construction realizes ℕ as ω, the first infinite ordinal in ZF set theory. The Peano axioms can then be verified as theorems about ω.

### 2.3 Our Approach

For our purposes—constructing the reals from the naturals—the set-theoretic details of *how* ℕ is built from ∅ obscure rather than illuminate the path forward. What matters is that ℕ exists as a mathematical structure satisfying the Peano axioms.

**We therefore take ℕ as given**, with its standard operations and ordering, and focus on how to extend it to ℤ, ℚ, and ultimately ℝ. Readers interested in the foundational construction of ℕ from pure set theory may consult standard texts on axiomatic set theory.

Our construction proceeds from here with ℕ as the base case, showing how successively richer number systems emerge through a consistent pattern of equivalence class constructions.


## 3 Integers **CLAUDE**

### 3.1 Motivation

The natural numbers have a fundamental limitation: subtraction is not always possible. We can compute *5 - 3 = 2* within ℕ, but *3 - 5* has no natural number solution. More generally, the equation *x + b = a* has a solution in ℕ if and only if *a ≥ b*.

This deficiency prevents ℕ from forming a *ring*—an algebraic structure where addition and multiplication behave nicely, and every element has an additive inverse. To remedy this, we construct the integers ℤ by formally adjoining negative numbers to ℕ, ensuring that every element has an additive inverse and subtraction is always possible.

### 3.2 Construction

Our strategy is to represent an integer as the "formal difference" of two natural numbers. The integer -2, for instance, can be thought of as 3 - 5, or equally well as 1 - 3, or 0 - 2. All these pairs represent the same integer because they have the same "signed distance."

**Definition 3.1**: Define an equivalence relation ~ on ℕ × ℕ by:
*(a, b) ~ (c, d)  ⟺  a + d = b + c*

**Intuition**: The pair *(a, b)* represents the formal difference *a - b*. Two pairs *(a, b)* and *(c, d)* represent the same integer when *a - b = c - d*, which (avoiding subtraction in ℕ) translates to *a + d = b + c*.

**Examples**:
- *(5, 3) ~ (7, 5) ~ (2, 0)* all represent the integer +2
- *(3, 5) ~ (1, 3) ~ (0, 2)* all represent the integer -2
- *(4, 4) ~ (7, 7) ~ (0, 0)* all represent the integer 0

**Lemma 3.1**: The relation ~ is an equivalence relation.

*Proof*: We verify the three required properties:

- **Reflexive**: *(a, b) ~ (a, b)* since *a + b = b + a* (commutativity in ℕ)

- **Symmetric**: If *(a, b) ~ (c, d)*, then *a + d = b + c*, hence *c + b = d + a* (commutativity), so *(c, d) ~ (a, b)*

- **Transitive**: Suppose *(a, b) ~ (c, d)* and *(c, d) ~ (e, f)*. Then:
  - *a + d = b + c*
  - *c + f = d + e*
  
  Adding these equations: *(a + d) + (c + f) = (b + c) + (d + e)*
  
  Simplifying: *a + d + c + f = b + c + d + e*
  
  Canceling *c + d* from both sides: *a + f = b + e*
  
  Therefore *(a, b) ~ (e, f)*. ∎

**Definition 3.2**: The set of integers is ℤ := (ℕ × ℕ) / ~, the set of equivalence classes under ~.

We denote the equivalence class of *(a, b)* by [*(a, b)*] or simply [(a, b)].

### 3.3 Arithmetic Operations

We define addition and multiplication on ℤ by operating on representatives:

**Definition 3.3**: 
- Addition: [(a, b)] + [(c, d)] := [(a + c, b + d)]
- Multiplication: [(a, b)] · [(c, d)] := [(ac + bd, ad + bc)]

**Well-definedness**: These operations must not depend on the choice of representatives. We verify this for addition (multiplication is similar):

Suppose [(a, b)] = [(a', b')] and [(c, d)] = [(c', d')]. Then *a + b' = a' + b* and *c + d' = c' + d*.

We need to show [(a + c, b + d)] = [(a' + c', b' + d')], i.e., that *(a + c) + (b' + d') = (a' + c') + (b + d)*.

Indeed:
*(a + c) + (b' + d') = (a + b') + (c + d') = (a' + b) + (c' + d) = (a' + c') + (b + d)*

using the assumed equivalences and commutativity of addition in ℕ. ∎

### 3.4 Embedding ℕ in ℤ

**Definition 3.4**: Define *φ: ℕ → ℤ* by *φ(n) := [(n, 0)]*.

**Lemma 3.2**: The map *φ* is an injective ring homomorphism, i.e.:
- *φ(m + n) = φ(m) + φ(n)*
- *φ(m · n) = φ(m) · φ(n)*
- *φ(0) = 0_ℤ* and *φ(1) = 1_ℤ*
- If *φ(m) = φ(n)*, then *m = n*

*Proof*: 
- Addition: *φ(m + n) = [(m + n, 0)] = [(m, 0)] + [(n, 0)] = φ(m) + φ(n)*
- Multiplication: *φ(m · n) = [(mn, 0)] = [(m·n + 0·0, m·0 + 0·n)] = [(m, 0)] · [(n, 0)] = φ(m) · φ(n)*
- Identities: *φ(0) = [(0, 0)] = 0_ℤ* and *φ(1) = [(1, 0)] = 1_ℤ*
- Injectivity: If *φ(m) = φ(n)*, then [(m, 0)] = [(n, 0)], so *m + 0 = n + 0*, hence *m = n*. ∎

This embedding allows us to view ℕ as a subset of ℤ, writing *n* instead of *φ(n)* = [(n, 0)]. Under this identification:
- Natural numbers become non-negative integers
- The integer [(a, b)] can be written as *a - b* (where - now denotes subtraction in ℤ)
- In particular, [(0, n)] = *0 - n = -n* represents the negative integers

### 3.5 Why Equivalence Classes?

This construction might seem unnecessarily abstract—why not simply define ℤ = {..., -2, -1, 0, 1, 2, ...} directly? 

The equivalence class approach reveals a fundamental principle: **we construct ℤ by formally adjoining solutions to equations we couldn't solve in ℕ**. Each equivalence class [(a, b)] represents the "formal solution" to *x + b = a*. 

This same principle will guide us from ℤ to ℚ (adjoining solutions to *bx = a*) and from ℚ to ℝ (adjoining limits of Cauchy sequences). The pattern—form pairs (or sequences), define equivalence, define operations on representatives—recurs throughout our construction.

### 3.6 ℤ as a Ring

**Theorem 3.1**: ℤ is a commutative ring with identity, and it is the *smallest* such ring containing ℕ (up to isomorphism).

*Proof sketch*: 
- **ℤ is a ring**: One verifies that addition and multiplication satisfy the ring axioms (associativity, distributivity, existence of additive identity 0 and inverses, etc.). These follow from the corresponding properties in ℕ and the definitions of operations on equivalence classes.

- **Additive inverses**: For any [(a, b)] ∈ ℤ, we have [(a, b)] + [(b, a)] = [(a + b, b + a)] = [(a + b, a + b)] = [(0, 0)] = 0. Thus -[(a, b)] = [(b, a)], confirming that every element has an additive inverse.

- **Minimality**: Suppose *R* is any ring containing ℕ (via some embedding). Since *R* is a ring, it must contain additive inverses of all natural numbers, hence must contain all integers (as differences of naturals). More precisely, any ring homomorphism *ψ: ℤ → R* extending the embedding of ℕ must satisfy:
  
  *ψ([(a, b)]) = ψ([(a, 0)] - [(b, 0)]) = ψ([(a, 0)]) - ψ([(b, 0)]) = a - b*
  
  where *a, b* on the right are viewed as elements of *R*. This formula uniquely determines *ψ*, proving minimality. ∎

**Remark**: The minimality property means ℤ is the "free" or "universal" solution to the problem "adjoin additive inverses to ℕ." Any other ring containing ℕ must contain a copy of ℤ.

### 3.7 Ordering on ℤ

**Definition 3.5**: Define an order on ℤ by: [(a, b)] ≤ [(c, d)] ⟺ a + d ≤ b + c (in ℕ).

This extends the natural ordering on ℕ and makes ℤ an ordered ring: the ordering is compatible with addition and multiplication by positive elements.

Under this ordering, [(a, b)] ≥ 0 if and only if *a ≥ b* in ℕ, which corresponds to our intuition that [(a, b)] represents *a - b* ≥ 0.


## Integers **JS**

The set $\mathbb{N}$ is a **semigroup with respect to addition** and a **semigroup with respect to multiplication**.
However, $\mathbb{N}$ lacks the negative numbers: the equation $a + x = b$ is solvable in $\mathbb{N}$ only if $a \le b$. 

We introduce the set $\mathbb{Z}$ of integers as the **smallest ring containing $\mathbb{N}$**. 
While this definition is concise, perhaps even elegant, the question remains whether such a ring exists at all. 
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
Continuing in this way, the definition of addition, subtraction, and multiplication on $\mathbb{Z}$ is a straightforward exercise.
With these operations in place, the set $\mathbb{Z}$ is a ring.
As any ring containing $\mathbb{N}$ must also contain the negative numbers $-\!\mathbb{N}$, 
the set $\mathbb{Z}$ is indeed the **smallest ring containing $\mathbb{N}$**. 
$\mathbb{Z}$ is countable, since it is the union of two countable sets.


## 4 Rational Numbers **CLAUDE**

### 4.1 Motivation

Just as ℕ lacks additive inverses, the integers ℤ lack multiplicative inverses. We can solve the equation *2x = 6* in ℤ (obtaining *x = 3*), but *2x = 1* has no integer solution. More generally, *bx = a* has a solution in ℤ if and only if *b* divides *a*.

To enable unrestricted division (except by zero), we construct the rational numbers ℚ by formally adjoining fractions—multiplicative inverses of non-zero integers. This extends ℤ to a *field*, where every non-zero element has a multiplicative inverse.

### 4.2 Construction

Our strategy mirrors the construction of ℤ: we represent a rational number as a "formal quotient" of two integers. The rational 1/2, for instance, can be thought of as the quotient of 1 and 2, or equally well as 2 and 4, or 3 and 6. All these pairs represent the same rational number because they represent the same "ratio."

However, we cannot simply define ℚ as the set of pairs (a, b) with *b ≠ 0*, because different pairs should represent the same rational number. We need an equivalence relation that captures when two pairs represent the same ratio:

**Definition 4.1**: Define an equivalence relation ~ on ℤ × ℤ* (where ℤ* = ℤ \ {0}) by:

*(a, b) ~ (c, d)  ⟺  ad = bc*

**Intuition**: The pair *(a, b)* represents the formal quotient *a/b*. Two pairs *(a, b)* and *(c, d)* represent the same rational when *a/b = c/d*, which translates to *ad = bc* (cross-multiplication).

**Examples**:
- *(1, 2) ~ (2, 4) ~ (3, 6) ~ (-1, -2)* all represent 1/2
- *(3, 4) ~ (6, 8) ~ (-3, -4)* all represent 3/4
- *(5, 1) ~ (10, 2) ~ (-5, -1)* all represent the integer 5
- *(0, 1) ~ (0, 5) ~ (0, -3)* all represent 0

**Lemma 4.1**: The relation ~ is an equivalence relation.

*Proof*: We verify the three properties:

- **Reflexive**: *(a, b) ~ (a, b)* since *ab = ba*

- **Symmetric**: If *(a, b) ~ (c, d)*, then *ad = bc*, hence *cb = da* (commutativity), so *(c, d) ~ (a, b)*

- **Transitive**: Suppose *(a, b) ~ (c, d)* and *(c, d) ~ (e, f)*. Then:
  - *ad = bc*
  - *cf = de*
  
  Multiplying the first equation by *f* and the second by *b*:
  - *adf = bcf*
  - *bcf = bde*
  
  Therefore *adf = bde*.
  
  Since *d ≠ 0* (as *(c, d) ∈ ℤ × ℤ**), we can cancel *d* from both sides: *af = be*.
  
  Hence *(a, b) ~ (e, f)*. ∎

**Definition 4.2**: The set of rational numbers is ℚ := (ℤ × ℤ*) / ~, the set of equivalence classes under ~.

We denote the equivalence class of *(a, b)* by [*(a, b)*] or [(a, b)], and often write *a/b* for this equivalence class once we've embedded ℚ as an extension of ℤ.

### 4.3 Arithmetic Operations

**Definition 4.3**: 
- **Addition**: [(a, b)] + [(c, d)] := [(ad + bc, bd)]
- **Multiplication**: [(a, b)] · [(c, d)] := [(ac, bd)]

**Intuition**: These definitions follow the familiar rules for adding and multiplying fractions:
- *a/b + c/d = (ad + bc)/(bd)*
- *(a/b) · (c/d) = (ac)/(bd)*

**Well-definedness**: We must verify that these operations don't depend on the choice of representatives. We check addition (multiplication is similar):

Suppose [(a, b)] = [(a', b')] and [(c, d)] = [(c', d')]. Then *ab' = a'b* and *cd' = c'd*.

We need to show [(ad + bc, bd)] = [(a'd' + b'c', b'd')], i.e., that *(ad + bc)(b'd') = bd(a'd' + b'c')*.

Expanding both sides:
- Left: *(ad + bc)(b'd') = adb'd' + bcb'd'*
- Right: *bd(a'd' + b'c') = bda'd' + bdb'c'*

Using *ab' = a'b*: *adb'd' = a'bdd' = a'bd'd*
Using *cd' = c'd*: *bcb'd' = bb'c'd = bdb'c'*

Therefore both sides equal *bda'd' + bdb'c'*, confirming well-definedness. ∎

### 4.4 Embedding ℤ in ℚ

**Definition 4.4**: Define *φ: ℤ → ℚ* by *φ(n) := [(n, 1)]*.

**Lemma 4.2**: The map *φ* is an injective ring homomorphism.

*Proof*: 
- Addition: *φ(m + n) = [(m + n, 1)] = [(m·1 + n·1, 1·1)] = [(m, 1)] + [(n, 1)] = φ(m) + φ(n)*
- Multiplication: *φ(m · n) = [(mn, 1)] = [(m·n, 1·1)] = [(m, 1)] · [(n, 1)] = φ(m) · φ(n)*
- Identities: *φ(0) = [(0, 1)] = 0_ℚ* and *φ(1) = [(1, 1)] = 1_ℚ*
- Injectivity: If *φ(m) = φ(n)*, then [(m, 1)] = [(n, 1)], so *m·1 = n·1*, hence *m = n*. ∎

This embedding allows us to view ℤ as a subset of ℚ, identifying the integer *n* with the rational *n/1*. Under this identification:
- The rational [(a, b)] can be written as *a/b* (using division in ℚ)
- Every rational is the quotient of two integers
- The familiar fraction notation becomes rigorous

### 4.5 ℚ as a Field

**Theorem 4.1**: ℚ is a field, and it is the *smallest* field containing ℤ (up to isomorphism).

*Proof sketch*: 
- **ℚ is a commutative ring**: The ring axioms follow from the definitions and the ring structure of ℤ (verified by routine calculations).

- **Multiplicative inverses**: For any non-zero [(a, b)] ∈ ℚ, we have *a ≠ 0* (since if *a = 0*, then [(a, b)] = [(0, b)] = 0_ℚ). Thus *(b, a) ∈ ℤ × ℤ**, and:
  
  [(a, b)] · [(b, a)] = [(ab, ba)] = [(ab, ab)] = [(1, 1)] = 1_ℚ
  
  Therefore the multiplicative inverse of [(a, b)] is [(b, a)], confirming that ℚ is a field.

- **Minimality**: Any field *F* containing ℤ must contain quotients *a/b* for all *a ∈ ℤ* and *b ∈ ℤ** (since fields have multiplicative inverses). Thus *F* contains all of ℚ. More precisely, any field homomorphism *ψ: ℚ → F* extending the embedding of ℤ must satisfy:
  
  *ψ([(a, b)]) = ψ(a) · ψ(b)⁻¹ = a · b⁻¹*
  
  where the right side is computed in *F*. This uniquely determines *ψ*. ∎

**Remark**: The minimality means ℚ is the "field of fractions" of ℤ—the universal solution to "adjoin multiplicative inverses to ℤ."

### 4.6 Ordering on ℚ

**Definition 4.5**: Define an order on ℚ by: 

[(a, b)] < [(c, d)] ⟺ (ad < bc in ℤ if *bd > 0*) or (ad > bc in ℤ if *bd < 0*)

Equivalently, after choosing representatives with positive denominators: [(a, b)] < [(c, d)] ⟺ ad < bc (with *b, d > 0*).

This ordering extends the ordering on ℤ and makes ℚ an *ordered field*: it is compatible with addition and multiplication by positive elements.

### 4.7 Density of ℚ

**Theorem 4.2** (Density): Between any two distinct rational numbers lies another rational number. In fact, infinitely many rationals lie between any two distinct rationals.

*Proof*: Let *p, q ∈ ℚ* with *p < q*. Then *(p + q)/2* is rational (since ℚ is closed under addition and division), and:

*p < (p + q)/2 < q*

(The inequalities follow from *p < q* by adding *p* to both sides, then dividing by 2.)

For infinitely many: the rationals *p + (q - p)/n* for *n = 2, 3, 4, ...* all lie strictly between *p* and *q*. ∎

**Remark on density**: This density property might suggest that ℚ "fills the number line"—that there are no gaps. This intuition is misleading, as we'll see when we construct ℝ. 

Consider the set *A = {r ∈ ℚ : r² < 2}*. This set is bounded above (e.g., by 2), and by density, *A* has rationals arbitrarily close to √2. Yet *A* has no *largest* element in ℚ—there is a "gap" at √2. The rationals are dense, but not *complete*: Cauchy sequences of rationals need not converge to rationals.

This incompleteness is precisely what motivates our construction of ℝ.

### 4.8 The Archimedean Property

**Theorem 4.3** (Archimedean Property): For any *q ∈ ℚ*, there exists *n ∈ ℕ* such that *n > q*.

*Proof*: Write *q = a/b* with *a, b ∈ ℤ* and *b > 0*. If *a ≤ 0*, then any *n ∈ ℕ* with *n ≥ 1* satisfies *n > q*. If *a > 0*, then *n = a + b* works, since:

*n = a + b > a = a/b · b ≥ a/b = q* ∎

**Remark**: This property states that ℚ has no "infinitely large" elements—no matter how large a rational number is, some natural number exceeds it. This will be important when we prove properties of ℝ in the next section.

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
(n a) (nb)^{-1} &= (na) (n^{-1} b^{-1}) \\
&= (n n^{-1}) (ab^{-1}) \\
&= a b^{-1}
```

Continuing in this way, the definition of addition, subtraction, multiplication, and division on $\mathbb{Q}$ is a straightforward exercise.
With these operations in place, the set $\mathbb{Q}$ is a field.
As any field containing $\mathbb{Z}$ must also contain the rationals, 
the set $\mathbb{Q}$ is indeed the **smallest field containing $\mathbb{Z}$**. 
$\mathbb{Q}$ is countable, since it is the cross-product of two countable sets.


## 5 Real Numbers **CLAUDE**

### 5.1 Motivation: The Incompleteness of ℚ

Despite its density, ℚ has fundamental "gaps"—points where sequences converge but have no rational limit. Consider the sequence obtained by truncating the decimal expansion of √2:

*x₁ = 1*
*x₂ = 1.4 = 14/10*
*x₃ = 1.41 = 141/100*
*x₄ = 1.414 = 1414/1000*
*x₅ = 1.4142 = 14142/10000*
*...*

Each term is rational. Moreover, the sequence becomes arbitrarily stable: for sufficiently large *n* and *m*, the terms *xₙ* and *xₘ* are arbitrarily close to each other. Such sequences are called *Cauchy sequences*.

Yet this Cauchy sequence converges to no rational number. If it did converge to some *r ∈ ℚ*, then *r² = 2* (since *xₙ²* approaches 2), contradicting Theorem 6.1 which shows √2 is irrational. The sequence "wants to converge" to √2, but this limit does not exist in ℚ—there is a gap in the rationals at √2.

This phenomenon is not isolated. Consider:
- The sequence *sₙ = 1 + 1/2 + 1/4 + ... + 1/2ⁿ* is Cauchy in ℚ but converges to 2, which happens to be rational
- The sequence *eₙ = (1 + 1/n)ⁿ* is Cauchy in ℚ but converges to *e*, which is irrational (transcendental, in fact)
- The decimal expansions of π, e, and most real numbers yield Cauchy sequences of rationals with no rational limit

**The problem**: ℚ is not *complete*—Cauchy sequences in ℚ need not converge to elements of ℚ.

**The solution**: Construct ℝ by formally adjoining limits to all Cauchy sequences. Just as we constructed ℚ by formally adjoining quotients (formal solutions to *bx = a*), we construct ℝ by formally adjoining limits (formal solutions to "where does this Cauchy sequence converge?").

This completeness is essential for calculus and analysis. Without it, we cannot prove:
- The **Intermediate Value Theorem**: continuous functions on [a, b] achieve all values between f(a) and f(b)
- The **Extreme Value Theorem**: continuous functions on [a, b] achieve maximum and minimum values
- **Convergence of series**: power series, Fourier series, and other infinite sums have well-defined limits
- **Existence of solutions**: many differential equations and optimization problems require limits of approximating sequences

Our construction will ensure that ℝ is complete *by construction* rather than by assumption.

### 5.2 Cauchy Sequences

**Definition 5.1**: A sequence *(xₙ)* of rational numbers is a *Cauchy sequence* if for every *ε > 0* (with *ε ∈ ℚ*), there exists *N ∈ ℕ* such that for all *n, m > N*:

*|xₙ - xₘ| < ε*

**Intuition**: A sequence is Cauchy if its terms eventually cluster arbitrarily closely together. The "eventual clustering" is what makes the sequence "want to converge"—it's trying to approach some limit, whether or not that limit exists in ℚ.

**Examples**:

1. **Constant sequence**: *xₙ = 5* for all *n*. This is Cauchy (trivially), since *|xₙ - xₘ| = 0 < ε* for all *n, m*.

2. **Geometric series**: *xₙ = 1 + 1/2 + 1/4 + ... + 1/2ⁿ = 2 - 1/2ⁿ*. For *n > m*:
   
   *|xₙ - xₘ| = |1/2ᵐ - 1/2ⁿ| = 1/2ᵐ(1 - 1/2ⁿ⁻ᵐ) < 1/2ᵐ*
   
   Given *ε > 0*, choose *N* such that *1/2ᴺ < ε*. Then for all *n, m > N*, we have *|xₙ - xₘ| < ε*.

3. **√2 approximation**: The sequence *x₁ = 1, x₂ = 1.4, x₃ = 1.41, ...* defined by decimal truncation is Cauchy. For *n > m*, we have *|xₙ - xₘ| < 10⁻ᵐ*, which can be made arbitrarily small.

4. **Non-example**: *xₙ = 1 + 1/2 + 1/3 + ... + 1/n* (harmonic series) is NOT Cauchy. For instance:
   
   *x₂ₙ - xₙ = 1/(n+1) + 1/(n+2) + ... + 1/(2n) ≥ n · 1/(2n) = 1/2*
   
   So the terms don't cluster together—the gaps remain bounded away from zero.

**Basic properties of Cauchy sequences**:

**Lemma 5.1**: Every Cauchy sequence in ℚ is bounded.

*Proof*: Let *(xₙ)* be Cauchy. Taking *ε = 1*, there exists *N* such that *|xₙ - xₘ| < 1* for all *n, m > N*.

In particular, *|xₙ - xₙ₊₁| < 1* for all *n > N*, so *|xₙ| < |xₙ₊₁| + 1* for all *n > N*.

Let *M = max{|x₁|, |x₂|, ..., |xₙ|, |xₙ₊₁| + 1}*. Then *|xₙ| ≤ M* for all *n*. ∎

**Notation**: Let *C(ℚ)* denote the set of all Cauchy sequences of rational numbers.

### 5.3 Equivalence of Cauchy Sequences

Our strategy is to define ℝ as equivalence classes of Cauchy sequences, just as we defined ℚ as equivalence classes of pairs of integers. But when should two Cauchy sequences be considered "equivalent"?

**Intuition**: Two Cauchy sequences should represent the same real number if they "converge to the same place"—that is, if their difference converges to zero.

**Definition 5.2**: Two Cauchy sequences *(xₙ)* and *(yₙ)* are *equivalent*, written *(xₙ) ~ (yₙ)*, if:

*lim_{n→∞} (xₙ - yₙ) = 0*

More precisely: for every *ε > 0*, there exists *N ∈ ℕ* such that for all *n > N*:

*|xₙ - yₙ| < ε*

**Examples**:

1. The sequences *(1, 1.4, 1.41, 1.414, ...)* and *(2, 1.5, 1.42, 1.415, ...)* are equivalent, since both represent √2 and their difference approaches 0.

2. The sequences *(1, 1, 1, 1, ...)* and *(1 + 1/2, 1 + 1/4, 1 + 1/8, ...)* are NOT equivalent, since the first approaches 1 while the second approaches 2.

3. The constant sequences *(3, 3, 3, ...)* and *(3.01, 3.001, 3.0001, ...)* are equivalent—both represent the real number 3.

**Lemma 5.2**: The relation ~ is an equivalence relation on *C(ℚ)*.

*Proof*:

- **Reflexive**: *(xₙ) ~ (xₙ)* since *|xₙ - xₙ| = 0 < ε* for all *n* and all *ε > 0*.

- **Symmetric**: If *(xₙ) ~ (yₙ)*, then for all *ε > 0*, there exists *N* such that *|xₙ - yₙ| < ε* for all *n > N*. But *|yₙ - xₙ| = |xₙ - yₙ| < ε*, so *(yₙ) ~ (xₙ)*.

- **Transitive**: Suppose *(xₙ) ~ (yₙ)* and *(yₙ) ~ (zₙ)*. Let *ε > 0*. Then:
  - There exists *N₁* such that *|xₙ - yₙ| < ε/2* for all *n > N₁*
  - There exists *N₂* such that *|yₙ - zₙ| < ε/2* for all *n > N₂*
  
  Let *N = max{N₁, N₂}*. For all *n > N*:
  
  *|xₙ - zₙ| = |(xₙ - yₙ) + (yₙ - zₙ)| ≤ |xₙ - yₙ| + |yₙ - zₙ| < ε/2 + ε/2 = ε*
  
  Therefore *(xₙ) ~ (zₙ)*. ∎

### 5.4 Definition of ℝ

**Definition 5.3**: The set of real numbers is:

*ℝ := C(ℚ) / ~*

the set of equivalence classes of Cauchy sequences of rational numbers under the equivalence relation ~.

We denote the equivalence class of a Cauchy sequence *(xₙ)* by [*(xₙ)*] or [xₙ].

**Fundamental principle**: Each real number IS an equivalence class of Cauchy sequences. The real number √2, for instance, is the equivalence class of all Cauchy sequences that "converge to √2", including:
- *(1, 1.4, 1.41, 1.414, ...)*
- *(1, 1.41, 1.414, 1.4142, ...)* (converging faster)
- *(2, 1.5, 1.42, 1.415, ...)* (approaching from above)
- And infinitely many others

All these sequences are equivalent because their differences approach 0.

### 5.5 Arithmetic Operations on ℝ

To define arithmetic on ℝ, we operate on representative sequences:

**Definition 5.4**:
- **Addition**: [xₙ] + [yₙ] := [xₙ + yₙ]
- **Multiplication**: [xₙ] · [yₙ] := [xₙ · yₙ]

**Intuition**: To add two real numbers, choose representative Cauchy sequences and add them term-by-term. The result is another Cauchy sequence, whose equivalence class is the sum.

**Well-definedness**: We must verify:
1. If *(xₙ)* and *(yₙ)* are Cauchy, then *(xₙ + yₙ)* and *(xₙ · yₙ)* are Cauchy
2. The operations don't depend on choice of representatives

**Lemma 5.3** (Sums and products of Cauchy sequences are Cauchy):

(a) If *(xₙ)* and *(yₙ)* are Cauchy, then *(xₙ + yₙ)* is Cauchy.

*Proof*: Let *ε > 0*. Since *(xₙ)* and *(yₙ)* are Cauchy:
- There exists *N₁* such that *|xₙ - xₘ| < ε/2* for all *n, m > N₁*
- There exists *N₂* such that *|yₙ - yₘ| < ε/2* for all *n, m > N₂*

Let *N = max{N₁, N₂}*. For all *n, m > N*:

*|(xₙ + yₙ) - (xₘ + yₘ)| = |(xₙ - xₘ) + (yₙ - yₘ)| ≤ |xₙ - xₘ| + |yₙ - yₘ| < ε/2 + ε/2 = ε* ∎

(b) If *(xₙ)* and *(yₙ)* are Cauchy, then *(xₙ · yₙ)* is Cauchy.

*Proof*: By Lemma 5.1, both sequences are bounded: *|xₙ| ≤ M* and *|yₙ| ≤ M* for all *n* and some *M > 0*.

Let *ε > 0*. Since *(xₙ)* and *(yₙ)* are Cauchy:
- There exists *N₁* such that *|xₙ - xₘ| < ε/(2M)* for all *n, m > N₁*
- There exists *N₂* such that *|yₙ - yₘ| < ε/(2M)* for all *n, m > N₂*

Let *N = max{N₁, N₂}*. For all *n, m > N*:

*|xₙyₙ - xₘyₘ| = |xₙyₙ - xₙyₘ + xₙyₘ - xₘyₘ|*
*= |xₙ(yₙ - yₘ) + yₘ(xₙ - xₘ)|*
*≤ |xₙ||yₙ - yₘ| + |yₘ||xₙ - xₘ|*
*≤ M · ε/(2M) + M · ε/(2M) = ε* ∎

**Lemma 5.4** (Independence of representatives): If *(xₙ) ~ (x'ₙ)* and *(yₙ) ~ (y'ₙ)*, then:
- *(xₙ + yₙ) ~ (x'ₙ + y'ₙ)*
- *(xₙ · yₙ) ~ (x'ₙ · y'ₙ)*

*Proof of addition*: We need to show *|(xₙ + yₙ) - (x'ₙ + y'ₙ)| → 0$.

Let *ε > 0*. Since *(xₙ) ~ (x'ₙ)* and *(yₙ) ~ (y'ₙ)*:
- There exists *N₁* such that *|xₙ - x'ₙ| < ε/2* for all *n > N₁*
- There exists *N₂* such that *|yₙ - y'ₙ| < ε/2* for all *n > N₂*

Let *N = max{N₁, N₂}*. For all *n > N*:

*|(xₙ + yₙ) - (x'ₙ + y'ₙ)| = |(xₙ - x'ₙ) + (yₙ - y'ₙ)| ≤ |xₙ - x'ₙ| + |yₙ - y'ₙ| < ε/2 + ε/2 = ε* ∎

*Proof of multiplication*: Similar, using boundedness. [Details omitted for brevity.] ∎

### 5.6 Embedding ℚ in ℝ

**Definition 5.5**: Define *φ: ℚ → ℝ* by *φ(r) := [(r, r, r, ...]*, the equivalence class of the constant sequence at *r*.

**Lemma 5.5**: The map *φ* is an injective field homomorphism.

*Proof*:
- **Addition**: The constant sequence at *r + s* equals the sum of constant sequences at *r* and *s* term-by-term.
- **Multiplication**: Similarly for products.
- **Injectivity**: If *φ(r) = φ(s)*, then the constant sequences at *r* and *s* are equivalent, so *|r - s| < ε* for all *ε > 0*, hence *r = s*. ∎

This embedding allows us to view ℚ as a subset of ℝ, identifying the rational *r* with the equivalence class of constant sequences [(r, r, r, ...)].

Under this identification:
- Rational numbers become specific real numbers (those representable by constant Cauchy sequences)
- Every real number can be approximated arbitrarily closely by rationals (by choosing any representative Cauchy sequence)
- The real number [xₙ] can be thought of as lim xₙ, the "limit" the sequence is trying to reach

### 5.7 Ordering on ℝ

**Definition 5.6**: Define an order on ℝ by: [xₙ] < [yₙ] if there exists *ε > 0* and *N ∈ ℕ* such that for all *n > N*:

*yₙ - xₙ > ε*

**Intuition**: [xₙ] < [yₙ] if the sequences are eventually separated by a positive gap—*(yₙ)* is eventually and persistently larger than *(xₙ)*.

This definition is independent of representatives and extends the ordering on ℚ. It makes ℝ an *ordered field*.

**Remark**: Some care is needed in verifying well-definedness and the trichotomy property (*exactly one* of [xₙ] < [yₙ], [xₙ] = [yₙ], or [xₙ] > [yₙ] holds). We omit the technical details.

### 5.8 ℝ is a Field

**Theorem 5.1**: ℝ is an ordered field containing ℚ as an ordered subfield.

*Proof sketch*: 
- The field axioms (associativity, commutativity, distributivity, identities, inverses) follow from the corresponding properties of ℚ and the definitions of operations on equivalence classes.
- The additive identity is *0_ℝ = [(0, 0, 0, ...)]*
- The multiplicative identity is *1_ℝ = [(1, 1, 1, ...)]*
- The additive inverse of [xₙ] is [−xₙ]
- For multiplicative inverses: if [xₙ] ≠ 0, then *(xₙ)* is eventually bounded away from 0 (there exist *ε > 0* and *N* such that *|xₙ| > ε* for all *n > N*). We can then define the inverse as [1/xₙ] (taking 1/xₙ only for *n > N* where it's defined, and extending arbitrarily for smaller *n*).
- The ordering properties follow from Definition 5.6. ∎

### 5.9 Completeness of ℝ

We now prove the fundamental property distinguishing ℝ from ℚ:

**Theorem 5.2** (Cauchy Completeness): Every Cauchy sequence in ℝ converges to an element of ℝ.

**This is the key result**: It shows that ℝ has no "gaps"—every sequence that should converge does converge, to an element of ℝ. This property comes *for free* from our construction—it's not an axiom we assume, but a theorem we prove.

*Proof*: Let *(rₙ)* be a Cauchy sequence in ℝ, where each *rₙ = [x^(n)_k]* for some Cauchy sequence *(x^(n)_k)_{k=1}^∞* of rationals.

**Step 1**: Construct a "diagonal" Cauchy sequence of rationals.

For each *n*, choose a rational *qₙ* from the equivalence class *rₙ* such that *qₙ* is "close" to the Cauchy sequence representing *rₙ*. More precisely:

Since *(rₙ)* is Cauchy in ℝ, for each *m* there exists *N_m* such that for all *n, n' > N_m*:

*|rₙ - rₙ'| < 1/m* (in ℝ)

This means the Cauchy sequences representing *rₙ* and *rₙ'* are close, so we can find rationals *qₙ* from each that are close to each other.

Formally: for each *n*, choose *k_n* large enough that:
- *|x^(n)_{k_n} - x^(n)_{k_{n+1}}| < 1/n* (within the *n*-th Cauchy sequence)
- The choice ensures the sequence *(qₙ) := (x^(n)_{k_n})* inherits the Cauchy property

Let *qₙ := x^(n)_{k_n}*. By the Cauchy property of *(rₙ)* and careful choice of *k_n*, the sequence *(qₙ)* is Cauchy in ℚ.

**Step 2**: The limit is *r := [qₙ]*.

We claim that *rₙ → r* in ℝ, that is, for every *ε > 0*, there exists *N* such that for all *n > N*:

*|rₙ - r| < ε*

This follows because *rₙ = [x^(n)_k]* and *r = [qₙ]* are close when *qₙ* is chosen from (or very close to) the *n*-th equivalence class.

[The full technical details involve careful bookkeeping of indices and epsilon management, which we omit for clarity.] ∎

**Interpretation**: This theorem says that ℝ contains limits of all its Cauchy sequences. There are no "missing points" in ℝ the way √2 was missing from ℚ. The construction of ℝ as equivalence classes of Cauchy sequences *automatically* ensures this completeness—we didn't have to assume it as an axiom; it's built into the definition.

### 5.10 The Supremum Property

The Cauchy completeness (Theorem 5.2) is one characterization of completeness. Another crucial property is the *supremum property*: every bounded non-empty set has a least upper bound. We now show this is a *consequence* of our construction, not an additional axiom.

**Definition 5.7**: Let *A ⊆ ℝ* be non-empty.
- An element *b ∈ ℝ* is an *upper bound* of *A* if *a ≤ b* for all *a ∈ A*
- *A* is *bounded above* if it has at least one upper bound
- The *supremum* of *A*, denoted *sup(A)*, is the *least* upper bound: *sup(A) ≤ b* for every upper bound *b* of *A*

**Theorem 5.3** (Supremum Property): Every non-empty subset of ℝ that is bounded above has a supremum in ℝ.

**Significance**: This property is often taken as an *axiom* characterizing ℝ in alternative approaches (Dedekind cuts, axiomatic characterization). In our construction, it emerges as a *theorem*—a consequence of Cauchy completeness.

*Proof*: Let *A ⊆ ℝ* be non-empty and bounded above. We construct *sup(A)* explicitly as the limit of a Cauchy sequence.

**Step 1** (Bisection construction): 
- Choose any *a₀ ∈ A* and any upper bound *b₀* of *A*
- We have *a₀ ≤ b₀*
- Consider the midpoint *m₀ = (a₀ + b₀)/2*
- If *m₀* is an upper bound of *A*, set *a₁ = a₀* and *b₁ = m₀*
- Otherwise, there exists *a₁ ∈ A* with *a₁ > m₀*; set *b₁ = b₀*
- Continue this process: at each stage, partition *[aₙ, bₙ]* and choose the half that "brackets" the supremum

More precisely, define sequences *(aₙ)* and *(bₙ)* recursively:
- *a₀ ∈ A*, *b₀* is an upper bound of *A*
- *mₙ = (aₙ + bₙ)/2*
- If *mₙ* is an upper bound of *A*: set *aₙ₊₁ = aₙ*, *bₙ₊₁ = mₙ*
- Otherwise: choose *aₙ₊₁ ∈ A* with *aₙ₊₁ > mₙ*, and set *bₙ₊₁ = bₙ*

**Step 2** (Properties of the construction):

The sequences *(aₙ)* and *(bₙ)* satisfy:
- *aₙ ∈ A* or *aₙ* is arbitrarily close to elements of *A* (specifically, elements greater than *aₙ* exist in *A* within distance *bₙ - aₙ*)
- *bₙ* is an upper bound of *A* for all *n*
- *aₙ ≤ aₙ₊₁ ≤ bₙ₊₁ ≤ bₙ* (sequences are monotone)
- *bₙ - aₙ = (b₀ - a₀)/2ⁿ → 0* (intervals halve at each step)

**Step 3** (Both sequences are Cauchy):

For *n > m*:
*|aₙ - aₘ| ≤ bₘ - aₘ = (b₀ - a₀)/2ᵐ*
*|bₙ - bₘ| ≤ bₘ - aₘ = (b₀ - a₀)/2ᵐ*

Given *ε > 0*, choose *N* such that *(b₀ - a₀)/2ᴺ < ε*. Then for all *n, m > N*, we have *|aₙ - aₘ| < ε* and *|bₙ - bₘ| < ε*.

Both sequences are Cauchy.

**Step 4** (Convergence to the same limit):

Since *bₙ - aₙ → 0*, the sequences *(aₙ)* and *(bₙ)* are equivalent (represent the same real number).

By Theorem 5.2 (Cauchy completeness), both sequences converge in ℝ. Let:

*s := lim aₙ = lim bₙ = [aₙ] = [bₙ]*

**Step 5** (*s* is the supremum):

We must show:
1. *s* is an upper bound of *A*
2. *s* is the *least* upper bound

(1) *s* is an upper bound: For any *a ∈ A*, we have *a ≤ bₙ* for all *n* (since *bₙ* is an upper bound of *A*). Taking limits, *a ≤ lim bₙ = s*.

(2) *s* is the least upper bound: Suppose *t < s* is another upper bound of *A*. Then *s - t > 0*. 

Since *aₙ → s*, there exists *N* such that *aₙ > s - (s - t)/2 = (s + t)/2 > t* for all *n > N*.

But *aₙ ∈ A* or is arbitrarily close to elements of *A* greater than *aₙ*, so there exist elements of *A* greater than *t*, contradicting that *t* is an upper bound.

Therefore no upper bound is smaller than *s*, so *s = sup(A)*. ∎

**Remark**: This proof is constructive—given a bounded non-empty set *A*, we can explicitly construct *sup(A)* via the bisection procedure, which generates a Cauchy sequence converging to the supremum. The supremum property is thus a *consequence* of Cauchy completeness, not an independent axiom.

### 5.11 Summary: ℝ is Complete

We have shown that ℝ, constructed as equivalence classes of Cauchy sequences of rationals, has two fundamental completeness properties:

1. **Cauchy completeness** (Theorem 5.2): Every Cauchy sequence in ℝ converges to an element of ℝ
2. **Supremum property** (Theorem 5.3): Every bounded non-empty subset of ℝ has a supremum in ℝ

These properties are *equivalent* characterizations of completeness and distinguish ℝ from ℚ. Both properties are *theorems* in our construction, not axioms. The completeness of ℝ emerges naturally from the definition of ℝ as the "completion" of ℚ via Cauchy sequences.

This completeness makes ℝ the foundation for calculus and analysis:
- Limits of functions are well-defined
- Derivatives and integrals exist
- Infinite series have well-defined sums (or diverge clearly)
- Continuous functions on closed intervals achieve maxima and minima
- The Intermediate Value Theorem holds

The journey from ℕ to ℝ is complete: we have constructed the continuum that underlies analysis.

## Reals **JS**

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

This proof, however dry or abstract it might appear, is nothing but the obstinate application of known facts. 
Here, we do this twice:
We apply the triangular inequality to show that the diagonal sequence is a Cauchy sequence, 
and, in statement {eq}`thr-R-completeness-2`, 
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
This leads to an infinite sequence of 
cardinalities $\{\aleph_0, \aleph_1, \ldots \}$ with $\aleph_{n+1} = 2^{\aleph_n}$. Are there any others?

The continuum hypothesis (abbreviated as **CH**) claims that there aren't. 
If this is true, there is no cardinality between countable infinity $\aleph_0$ 
and the continuum $\mathfrak{c} = \aleph_1 = 2^{\aleph_0}$. 
CH is independent of the ZFC-Axioms: Both "ZFC + CH" and "ZFC + $\neg$ CH" are consistent, assuming ZFC is.
But this is a different story, to be told in another paper.
````

## 6 Rational and Irrational Numbers  **CLAUDE**

Having constructed ℝ as the completion of ℚ, we can now classify real numbers based on their relationship to ℚ and to polynomial equations.

### 6.1 Rational vs. Irrational

**Definition 6.1**: A real number *r ∈ ℝ* is:
- *Rational* if *r ∈ ℚ* (i.e., *r = a/b* for some *a, b ∈ ℤ* with *b ≠ 0*)
- *Irrational* if *r ∈ ℝ \ ℚ* (i.e., *r* is not rational)

The distinction is fundamental: rational numbers can be represented exactly as fractions, while irrational numbers cannot. Every irrational number requires an infinite non-repeating decimal expansion (or equivalently, a non-constant Cauchy sequence for its representation).

**Examples of irrational numbers**:
- √2, √3, √5 (square roots of non-perfect-squares)
- ∛2, ∛3 (cube roots of non-perfect-cubes)
- π (the ratio of a circle's circumference to its diameter)
- e (the base of natural logarithms)

The existence of irrational numbers was discovered by ancient Greek mathematicians (Pythagoreans, circa 500 BCE) and initially caused philosophical crisis—they believed all numbers should be expressible as ratios of integers.

### 6.2 √2 is Irrational

We prove that √2 exists in ℝ and is irrational, confirming that the Cauchy sequence *(1, 1.4, 1.41, 1.414, ...)* from our earlier examples truly represents a "new" number not present in ℚ.

**Theorem 6.1**: There exists a unique positive real number *x* such that *x² = 2*, and this number is irrational.

*Proof*:

**Existence**: Consider the set *A = {r ∈ ℚ : r > 0 and r² < 2}*. 

- *A* is non-empty: *1 ∈ A* since *1² = 1 < 2*
- *A* is bounded above: *2* is an upper bound, since for *r ≥ 2* we have *r² ≥ 4 > 2*

By Theorem 5.3, *A* has a supremum in ℝ. Let *x = sup(A)*.

We claim *x² = 2*. Suppose not.

**Case 1**: Suppose *x² < 2*. Let *ε = 2 - x²* > 0. For sufficiently small *h > 0*:

*(x + h)² = x² + 2xh + h² < x² + ε = 2*

(choosing *h* such that *2xh + h² < ε*). Then *x + h ∈ A*, contradicting that *x* is an upper bound of *A*.

**Case 2**: Suppose *x² > 2*. Let *ε = x² - 2* > 0. For sufficiently small *h > 0*:

*(x - h)² = x² - 2xh + h² > x² - ε = 2*

Then for any *r ∈ A*, we have *r² < 2 < (x - h)²*, so *r < x - h*. Thus *x - h* is an upper bound of *A*, contradicting that *x* is the *least* upper bound.

Therefore *x² = 2*.

**Uniqueness**: If *y² = 2* and *y > 0*, then *0 = x² - y² = (x - y)(x + y)*. Since *x + y > 0*, we have *x = y*.

We denote this unique positive real number by *√2*.

**Irrationality**: We prove √2 ∉ ℚ by contradiction. Suppose *√2 = a/b* where *a, b ∈ ℤ* with *b ≠ 0*. We may assume *gcd(a, b) = 1* (reduce to lowest terms).

Then:
*(a/b)² = 2*
*a² = 2b²*

Therefore *a²* is even, which implies *a* is even (since odd² is odd). Write *a = 2k* for some *k ∈ ℤ*.

Substituting:
*(2k)² = 2b²*
*4k² = 2b²*
*2k² = b²*

Therefore *b²* is even, which implies *b* is even.

But now both *a* and *b* are even, contradicting *gcd(a, b) = 1*.

Therefore √2 is irrational. ∎

**Remark**: This proof shows that the "gap" at √2 in ℚ (discussed in Section 4.7 and 5.1) is genuine—no rational number has square 2. The Cauchy sequence *(1, 1.4, 1.41, ...)* of rationals converges to an irrational number, demonstrating concretely why ℚ is incomplete and ℝ is necessary.

### 6.3 Algebraic and Transcendental Numbers

We can further classify real numbers based on their relationship to polynomial equations:

**Definition 6.2**: A real number *r ∈ ℝ* is:
- *Algebraic* if it is a root of some non-zero polynomial with integer coefficients, i.e., if there exist *a₀, a₁, ..., aₙ ∈ ℤ* (not all zero) such that:
  
  *aₙrⁿ + aₙ₋₁rⁿ⁻¹ + ... + a₁r + a₀ = 0*

- *Transcendental* if it is not algebraic

**Examples**:

**Algebraic numbers** include:
- All rational numbers *a/b* (roots of *bx - a = 0*)
- √2 (root of *x² - 2 = 0*)
- ∛5 (root of *x³ - 5 = 0*)
- (1 + √5)/2 (the golden ratio, root of *x² - x - 1 = 0*)
- *i* = √(-1) (root of *x² + 1 = 0*, though *i ∉ ℝ*)

**Transcendental numbers** include:
- π (proven by Lindemann, 1882)
- e (proven by Hermite, 1873)
- e^π and π^e (consequences of the Lindemann-Weierstrass theorem)

**Hierarchy**:
*ℕ ⊂ ℤ ⊂ ℚ ⊂ Algebraic numbers ⊂ ℝ*

Each inclusion is proper (strict subset).

### 6.4 Cardinality Considerations

The algebraic and transcendental numbers differ not just qualitatively but also in "size" (cardinality):

**Theorem 6.2** (Cantor): The algebraic numbers are countable, i.e., there exists a bijection between the algebraic numbers and ℕ.

*Proof sketch*: Each polynomial with integer coefficients can be encoded by a finite tuple of integers (its coefficients). The set of such tuples is countable (countable unions of countable sets). Each polynomial has finitely many roots. Therefore the set of all algebraic numbers is a countable union of finite sets, hence countable. ∎

**Theorem 6.3** (Cantor): The real numbers ℝ are uncountable.

*Proof*: This follows from Cantor's diagonal argument. Suppose *ℝ* were countable. Then the interval *(0, 1)* would be countable. List its elements as:

*r₁, r₂, r₃, ...*

Write each in decimal form:
*r₁ = 0.d₁₁d₁₂d₁₃...*
*r₂ = 0.d₂₁d₂₂d₂₃...*
*r₃ = 0.d₃₁d₃₂d₃₃...*
*...*

Construct a new number *r = 0.e₁e₂e₃...* where *eₙ* is chosen to differ from *dₙₙ* (and avoiding 0 and 9 to handle non-uniqueness of decimal representations).

Then *r ∈ (0, 1)* but *r ≠ rₙ* for any *n* (since *r* differs from *rₙ* in the *n*-th decimal place), contradicting that the list includes all elements of *(0, 1)*.

Therefore ℝ is uncountable. ∎

**Corollary 6.1**: The transcendental numbers are uncountable.

*Proof*: ℝ = Algebraic ∪ Transcendental. Since ℝ is uncountable and Algebraic is countable, Transcendental must be uncountable (otherwise their union would be countable). ∎

**Remarkable consequence**: "Most" real numbers are transcendental! In the sense of cardinality, the algebraic numbers (including all rationals) form a "negligibly small" subset of ℝ, while transcendental numbers form the "vast majority." Yet transcendental numbers are notoriously difficult to identify—proving that specific numbers like π or e are transcendental requires deep results.

### 6.5 Decimal Representations

**Theorem 6.4**: Every real number has a decimal representation, and:
- A real number is rational if and only if its decimal representation is eventually periodic (repeating)
- A real number is irrational if and only if its decimal representation is non-repeating

*Proof sketch*:
- **Existence of decimal representation**: For any *r ∈ ℝ*, we can construct its decimal expansion by repeatedly partitioning intervals, similar to the bisection construction in Theorem 5.3.

- **Rational ⟹ periodic**: If *r = a/b* with *gcd(a, b) = 1*, perform long division. Since there are only finitely many possible remainders (*0, 1, 2, ..., b-1*), the remainders must eventually repeat, causing the decimal expansion to repeat.

- **Periodic ⟹ rational**: If *r = 0.d₁d₂...dₖ(dₖ₊₁...dₖ₊ₚ)(dₖ₊₁...dₖ₊ₚ)...* is eventually periodic, then:
  
  *r = (finite part) + (repeating part)/(10^k(10^p - 1))*
  
  which is a sum of rationals, hence rational. ∎

**Examples**:
- *1/3 = 0.333... = 0.3̄* (periodic, period 1)
- *1/7 = 0.142857142857... = 0.142857̄* (periodic, period 6)
- *√2 = 1.41421356...* (non-repeating, irrational)
- *π = 3.14159265...* (non-repeating, irrational and transcendental)

This theorem provides a practical characterization: to check if a real number (given by its decimal expansion) is rational, look for a repeating pattern.

### 6.6 Connection to Our Construction

The theorems in this section illuminate the structure of ℝ as constructed in Section 5:

1. **Rational numbers** are those real numbers representable by *constant* Cauchy sequences: *r = [r, r, r, ...]* for *r ∈ ℚ*.

2. **Irrational numbers** require *non-constant* Cauchy sequences for their representation. For instance, √2 = [(1, 1.4, 1.41, 1.414, ...)].

3. **The completeness of ℝ** ensures that every Cauchy sequence converges, whether to a rational or irrational limit. This is what distinguishes ℝ from ℚ: ℚ contains only the rational limits, while ℝ contains all limits.

4. **Uncountability of ℝ** versus countability of ℚ shows that "most" real numbers are irrational—the construction ℝ = C(ℚ)/~ produces vastly more equivalence classes than there are rational numbers.

The distinction between rational and irrational, algebraic and transcendental, is now rigorously grounded in the structure of ℝ we have constructed.

## References

```{bibliography}
:filter: docname in docnames
```

<div style="margin-bottom: 100px;"></div>


