# From Naturals to Reals (CLAUDE)

*Johannes Siedersleben, December 2025*



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

Our construction achieves completeness *by construction* rather than by axiom. 
We define ℝ as equivalence classes of Cauchy sequences of rational numbers, 
ensuring that every Cauchy sequence in ℝ automatically converges (Theorem 5.2). 
The supremum property—often taken as an axiom characterizing ℝ—emerges as a theorem (Theorem 5.3), a consequence of Cauchy completeness.

This approach emphasizes the constructive nature of the progression ℕ → ℤ → ℚ → ℝ, with each step following a similar pattern: we form equivalence classes of pairs (or sequences) from the previous system, defining operations that respect the equivalence relation. The result is the number system underlying modern analysis.

We assume basic familiarity with set theory, functions, and elementary logic, but do not assume prior knowledge of real analysis. The paper is written for mathematically inclined readers who want to understand how the continuum arises from discrete beginnings.




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

For our purposes—constructing the reals from the naturals—the set-theoretic details of *how* ℕ is built from ∅ obscure 
rather than illuminate the path forward. What matters is that ℕ exists as a mathematical structure satisfying the Peano axioms.

**We therefore take ℕ as given**, with its standard operations and ordering, and focus on how to extend it to ℤ, ℚ, 
and ultimately ℝ. Readers interested in the foundational construction of ℕ from pure set theory may consult standard texts on axiomatic set theory.
Our construction proceeds from here with ℕ as the base case, 
showing how successively richer number systems emerge through a consistent pattern of equivalence class constructions.


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


