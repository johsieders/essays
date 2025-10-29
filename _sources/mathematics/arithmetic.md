# First Steps in Arithmetic


## Introduction

This note takes a deliberately short, constructive path through the core facts of elementary number theory—enough to make modular arithmetic usable, 
computable, and conceptually clean. We begin with the integer division theorem and use it to formalize the operators `//` (integer quotient) and `%` (remainder). 
From there, congruences are introduced as a **logical** relation (a statement with a truth value), in contrast to the **numerical** operators `//` and `%`. 
This distinction clears the way to work systematically with residue classes: for a fixed modulus $m$, the set $\mathbb{Z}/m\mathbb{Z}$ forms the residue class ring, where addition and multiplication behave as expected.

With that algebraic stage set, the paper moves to divisibility and the structure of the integers. 
Euler’s Lemma supports both the manipulation of congruences (including safe “division” when coprimality holds) and the proof of the Fundamental Theorem of Arithmetic. 
Euler’s Theorem and its prime-modulus corollary (Little Fermat) provide the first general tool for finding modular inverses in principle.

The second half turns this theory into algorithms. Euclid’s extended algorithm not only computes $\gcd(a,b)$ but exhibits integers $x,y$ with $ax+by=(a,b)$ (Bézout), giving 
immediate criteria for the solvability and uniqueness of linear congruences $ax \equiv b \pmod m$. This constructive viewpoint culminates in the Chinese Remainder Theorem and the multiplicativity of $\phi$.

Useful books are {cite}`riesel1985primes` and {cite}`hardy2008introduction`.

**Why read this?** Because it packages the essentials—definitions, theorems, and proofs—so that each statement is both conceptually transparent 
and algorithmically actionable. Readers who enjoy precise reasoning and also care about computation (e.g., implementing `%`, `//`, modular inverses, 
or CRT in code) will find a compact, self-contained route from first principles to tools that power modern applications in cryptography, coding theory, 
and computational mathematics.

## Congruences and Integer Division

Our starting point is a well-known fact about the division of integers:

````{prf:theorem}
:label: thr-integer-division

Let $a$ and $m > 0$ be integers. 
There is exactly one pair of integers $r$ and $q$ satisfying $a = r + mq$ with $0 \le r < m$.   
````

````{prf:proof}

One such pair is given by $q = \max \{t \in \mathbb{Z} | tm \le a\}$ and $r = a - mq$. 
We have $qm \le a < (q + 1)m$, so $0 \le r = a - qm < qm \le a$. 
Assume we have two pairs $r$, $q$, and $s$, $p$ satisfying the requirement, with $r \ge s$. 
Then $0 \le r - s = (q - p)m < r < m$, so
$0 \le q - p < 1$ which implies $q = p$ because $q - p$ is an integer.
````

{prf:ref}`thr-integer-division` allows us to define the operators `%` (*remainder*) and `//` (*integer division*).

````{prf:definition}
:label: def-integer-division

Let $a$ and $m > 0$ be integers. Then, using $r$ and $q$ introduced in {prf:ref}`thr-integer-division`, we define

```{math}
:label: equ-remainder
a\%m = r, 
```

```{math}
:label: equ-integer-division
a//m = q.
```

These operators work for positive and negative values of $a$. Here is an example:

$17 \ \% \ 3 = 2$ (check: $17 = 5 \cdot 3 + 2$)  
$-17 \ \% \ 3 = 1$ (check: $-17 = -6 \cdot 3 + 1$). 

````

````{prf:definition}
:label: def-congruences


Let $a$, $b$ and $m$ be integers.
 
(i) We say that $a$ is *congruent to* $b$ *modulo* $m$ iff there is 
an integer $q$ such that $a = b + qm$. This is written as 

```{math}
:label: equ-congruence
a \equiv b \bmod m. 
```

(ii) We say that $a$ is a multiple of $m$, or that $m$ divides $a$ iff $a \equiv 0 \bmod m$. 
This is can also be written as $m|a$. 
````

````{prf:remark}

We have, a bit surprisingly,  $0|a$ and $a|0$ for any $a$.
Note that $a\%m$ and $a//m$ are *integer numbers* while $a \equiv b \bmod m$ is a *boolean value*.
The following facts follow from the previous definitions.

(i) $a = (a\%m) + (a//m) m$, 

(ii) $a \equiv a\%m \bmod m$,   

(iii) $a \equiv b \bmod 0$ iff $a = b$,  

(iv) $a \equiv b \bmod m$ iff $a \equiv b \bmod -m$.  

Due to (iii), the case $m = 0$ is uninteresting.   
Due to (iv), we can restrict our attention to positive values of $m$.    
````

````{prf:theorem}
:label: thr-equivalence-relation
For any integer $m$, the relation $a \equiv b \bmod m$ is an equivalence relation on $\mathbb{Z}$.
````

````{prf:proof}
The assertion is true because:

(i) $a \equiv a \bmod m$.

(ii) If $a \equiv b \bmod m$ then $b \equiv a \bmod m$.

(iii) If $a \equiv b \bmod m$ and $b \equiv c \bmod m$ then $a \equiv c \bmod m$.  
````

There is a subtle but important distinction between an integer $a$ 
and its equivalence class modulo $m$, denoted by $\overline{a}$. Take $a=5$ and $m= 7$ as an example:
$\overline{5} = \{5, 12, 19, \ldots\} = \overline{12} = \overline{19} = \ldots$. 
All numbers $b \equiv a \bmod m$ represent 
the same equivalence class modulo $m$, denoted by $\mathbb{Z}_m$.
Choosing $\{0, 1, \ldots, m-1\}$ as natural representatives, we can write

```{math}
:label: equ-equivalence-classes
\mathbb{Z}_m = \{\overline{0}, \overline{1}, \ldots\, \overline{m-1}\}
```

because any two different integers $a$, $b$ between $0$ and $m-1$
belong to different equivalence classes modulo $m$. The mapping

$$
T :
\quad
\left\{
\begin{array}{l}
   \{0, 1, \ldots, m-1\} & \to \{\overline{0}, \overline{1}, \ldots\, \overline{m-1}\} \\
   a & \mapsto \overline{a}
\end{array}
\right.
$$


is an isomorphism, so we can write:


```{math}
:label: equ-equivalence-isomorphism

\mathbb{Z}_m \cong \{0, 1, \ldots, m-1\},
```
and the notation {eq}`equ-equivalence-classes` is rarely needed.
The next theorem shows that $\mathbb{Z}_m $ is a ring, the *residue class ring* of $m$. 
Its elements are called the *residue classes modulo m*.


````{prf:theorem} Residue Class Ring
:label: thr-residue-class-ring

For any integer $m$, the set $\mathbb{Z}_m$ with the usual 
addition and multiplication is a ring.
````

````{prf:proof}
The assertion is true because:
 
(i) $a \equiv a + 0 \bmod m$

(ii) $a \equiv 1 \cdot a \bmod m$ 

(iii) If $a \equiv b \bmod m$ then $a \pm c \equiv b \pm c \bmod m$ and  $ac \equiv bc \bmod m$.   
````

The following lemma will be useful for understanding Euclid's algorithm, which is covered in the next section.

````{prf:lemma}
:label: lem-euclid-util
Let $a$, $b$ and $c$ be integers. If
$a \equiv 0 \bmod b$,
and
$b \equiv c \bmod a$
then $c \equiv 0 \bmod b$
````

````{prf:proof}
$c$ is $b$ plus a multiple of $a$, which is a multiple of $b$. So, $c$ is a multiple of $b$. 
  
````

Addition and multiplication operate on residue classes in much the same way as they do on integers.
We now turn to the division of residue classes which requires a bit more attention.
{prf:ref}`lem-euler` is about the division of congruences. 
It includes the celebrated Euler's Lemma, which is the key to {prf:ref}`thr-fundamental`, 
the Fundamental Theorem of Arithmetic. {prf:ref}`thr-euler` is a first approach to solving
equations of the form $ax \equiv 1 \bmod m$, that is, finding the inverse modulo $m$.
But we need to introduce some new concepts before we can get to that.

````{prf:definition}
:label: primes

(i) The *greatest common divisor* of two integers $a$ and $b$ is the largest 
non-negative integer $d$ such that $a \equiv 0 \bmod d$ and $b \equiv 0 \bmod d$. It is denoted 
as $\gcd(a,b)$ or simply as $(a,b)$. Note that, for any integer $a$, $\gcd(a,0) = \gcd(0,a) = a$.

(ii) The *least common multiple* of two integers $a$ and $b$ is the smallest non-negative 
integer $c$ such that $c \equiv 0 \bmod a$ and $c \equiv 0 \bmod b$. It is denoted as $\text{lcm}(a,b)$.  

(iii) An integer $p$ is called *prime* if it is greater than 1 and has no divisors other than 1 and itself. 
Two integers $a$ and $b$ are *coprime* iff $(a,b) = 1$. 

(iv)   
$U_m = \{a \in \mathbb{Z}| 1 \le a < m, (a,m) = 1 \}$  
$\mathbb{Z}^\times_m = \{\overline{a}| a \in U_m \}$

(iv) The Euler function $\phi(m)$ denotes the number of integers between 1 and $m$ that are coprime to $m$:

$\phi(m) = |U_m| = |\mathbb{Z}^\times_m|$

So, $\phi(p) = p - 1$ iff $p$ is prime.

````

````{prf:theorem}
:label: thr-gcd-lcm

For any integers $a$ and $b$, we have

$\gcd(a,b) \cdot \text{lcm}(a,b) = a \cdot b$.
````

````{prf:proof}

It holds that $(a \cdot b) / \gcd(a,b)$ is a multiple of $a$ and $b$, so $\text{lcm}(a, b) \le (a \cdot b) / \gcd(a,b)$.
It also holds that $(a \cdot b) / \text{lcm}(a,b)$ divides $a$ and $b$, so $(a \cdot b) /\text{lcm}(a, b) \le \gcd(a,b)$,
and we get: $a \cdot b \le \gcd(a,b) \cdot \text{lcm}(a,b) \le a \cdot b$.
````


````{prf:theorem}
:label: phi-prime 

Let $p$ be a prime and $\alpha$ be a positive integer. Then:

```{math}
:label: equ-phi-prime

 \phi(p^\alpha) = p^{\alpha - 1} (p - 1).
 
```
````

````{prf:proof}
We calculate the number of integers between 1 and $p^\alpha$ that are not coprime to $p^\alpha$.
Then $\phi(p^\alpha)$ is $p^{\alpha}$ minus that number. 

$\{ a \in \mathbb{N} | a < p^\alpha, (a, p^\alpha) > 1 \} =  \{ a\cdot p | 1 \le a < p^{\alpha - 1}\}$, so:

$|\{ a \in \mathbb{N} | a < p^\alpha, (a, p^\alpha) > 1 )\}| =  p^{\alpha - 1}$, so:

$|\{ a \in \mathbb{N} | a < p^\alpha, (a, p^\alpha) = 1 )\}| =  p^{\alpha} - p^{\alpha - 1}$.

````

````{prf:lemma} Euler's Lemma
:label: lem-euler

(i) If $ac \equiv bc \bmod m$ then $a \equiv b \bmod{\frac{m}{(c,m)}}$. 
So, if $(c, m) = 1$ we can divide by $c$ and get $a \equiv b \bmod m$.

(ii) If $ac \equiv 0 \bmod m$ and $(c, m) = 1$ then $a \equiv 0 \bmod m$.

(iii) Euler's Lemma: If $c|ab$ and $(c, a) = 1$ then $c|b$.
````

````{prf:proof}

(i) From $ac = bc + qm$ it follows that $a = b + q \frac{m}{c} = b + q \frac{(c, m)}{c} \frac{m}{(c, m)}$, 
which is the same as $a \equiv b \bmod \frac{m}{(c,m)}$

(ii) This is (i) with $b=0$. 

(iii) is a reformulation of (ii).
````


````{prf:theorem} Fundamental Theorem of Arithmetic
:label: thr-fundamental 

Any integer $a$ with $|a| > 1$ can be uniquely decomposed 
into a product of primes: $a = \prod_{i=1}^n p_i^{\alpha_i}$ where $p_i$ 
are prime numbers and $\alpha_i$ are integers.
````

````{prf:proof}

Let $a$ be an integer. We show first that such a decomposition exists. 
If $a$ is the power of a prime number, we are done. 
If not, let $p_1$ be the smallest prime factor of $a$. 
Then, by Euler's Lemma, $a = p_1^{\alpha_1} \cdot a_1$ for some integer $\alpha_1$. 
If $a_1 = 1$, we are done. If not, we apply the same procedure to $a_1$, 
getting $a = p_1^{\alpha_1} \cdot p_2^{\alpha_2} \cdot a_2$, 
and so on until $a_k = 1$ after finitely many steps. 
We now show that this decomposition is unique. 
Let $a = \prod_{i=1}^n p_i^{\alpha_i} = \prod_{i=1}^n q_i^{\beta_i}$. 
Then, again by Euler's Lemma, $p_1 | q_j$ for some $j$, 
and therefore $p_1 = q_j$ because both numbers are prime. 
Division by $p_1$ gives $\prod_{i=2}^n p_i^{\alpha_i} = \prod_{i=1, i\ne j}^n q_i^{\beta_i}$. 
We repeat the procedure until we arrive at $\{p_1,...,p_n\} = \{q_1,...,q_n\}$.
````


````{prf:theorem} Euler's Theorem
:label: thr-euler

Let $a$, $m > 1$ be integers and $(a, m) = 1$. Then $a^{\phi(m)} \equiv 1 \bmod m$.
````

````{prf:proof}
We choose an $a \in U_m$ and set $aU_m = \{au |u \in U_m \}$. 
We observe that $au \equiv av \bmod m$ implies $u \equiv v \bmod m$ for all $u, v \in U_m$ because $(a, m) = 1$.
So, all elements of $aU_m$ are distinct and $aU_m$ is a permutation of $U_m$. We get:

$\prod_{u \in U_m}u = a^{\phi(m)} \prod_{u \in U_m} u \equiv \prod_{u \in U_m} u \bmod m$.

Because of $(u, m) = 1$, we can divide this equation by $\prod_{u \in U_m}u$ which gives the result.    
````


````{prf:corollary} Little Fermat
:label: cor-little-fermat
Let $p$ be a prime number. Then $a^{p-1} \equiv 1 \bmod p$ for any $a \in \{1, 2, \ldots, p-1\}$.
````

````{prf:proof}
This is Euler's theorem with $m = p$ and $\phi(m) = p - 1$.  
````

 
````{prf:remark} The Inverse of Euler's Theorem is False

Let $a$, $m$ be coprime integers.
The equation $a^k \equiv 1 \bmod m$ has many more solutions than just the one given by Euler or Fermat.
We give two examples, the first one refering to Euler's Theorem, the second one to Little Fermat:

$3^2 \equiv 1 \bmod 8$; Euler:  $\phi(8) = 4$   
$2^3 \equiv 1 \bmod 7$; Fermat: $7 - 1 = 6$

It is therefore useful to define for $a$ with $(a, m) = 1$

$\text{ord}_m(a) = \min \{k \in \mathbb{N} | a^k \equiv 1 \bmod m\}$. 

By definition, 

$\text{ord}_m(a) \le \phi(m)$.

If $ a^k \equiv 1 \bmod m$, then $\text{ord}_m(a) | k $. This can be seen as follows:  
Let $d = \text{ord}_m(a)$ and $d < k < 2d$. Then $ a^{k - d} \equiv 1 \bmod m$ and $k - d < d$, which is a contradiction.
So, $\text{ord}_m(a)$ divides $\phi(m)$. It can be computed using the relationship 

$\text{ord}_m(a) = \min \{k \in \mathbb{N} | k | \phi(m) \ \text{and} \ a^k \equiv 1 \bmod m\}$

````

````{prf:remark} Modular Inverses

{prf:ref}`thr-euler` is a first step towards modular inverses, because 

$a^{\phi(m)- k}a^k \equiv 1 \bmod m$, 

implies

$a^{-k} \equiv a^{\phi(m)- k} \bmod m$.

A better approach to finding the modular inverses is Euclid's algorithm to which we turn in the next section.
````

````{prf:remark} Carmichael numbers
:label: rem-carmichael

Let $m$, $k > 1$ be integers. If $a^{m-1} \equiv k \bmod p$ for some $a \in \mathbb{Z}$, then, by Euler's theorem,
$m$ cannot be prime. But there are non-prime integers $n$ such that 

```{math}
:label: equ-carmichael

a^{n-1} \equiv 1 \bmod n

```

holds for at least one $a$.
Integers $n$ fullfilling {eq}`equ-carmichael` for all $a < n$ are called *Carmichael numbers*. 
The smallest one is $561 = 3 \cdot 11 \cdot 17$. Testing for primes is notoriously difficult, 
but {eq}`equ-carmichael` provides a necessary condition for 
primality. The idea is, for a given $m$, to test the congruence 
$a^{m-1} \equiv 1 \bmod m$
for randomly chosen values of $a$. If the congruence is not satisfied for at least one $a$, then $m$ is not prime.
Otherwise, $m$ is is probably prime, with the likelihood depending on the number of $a$ tested.
The *Fermat test* does exactly that; the more sophisticated *Miller-Rabin test* is based on the same idea.
````


## Euclid's Algorithm and Applications

This section is about solving equations of the form $ax \equiv b \bmod m$ with $a, b, m \in \mathbb{Z}$.
Such an equation is equivalent to $ax = b + qm $, which is a *Diophantine equation*.  


````{prf:definition} Diophantine Equation
:label: def-diophantine

An equation of the form 
```{math}
:label: equ-diophantine
ux + vy = m 
```
with $u, v, m \in \mathbb{Z}$ is called a *Diophantine equation*.
````

````{prf:definition} Modules
:label: def-module

A set $M \subseteq \mathbb{Z}$ is called a *module* iff, 
for any $a$, $b \in M$ it holds that $a + b \in M$ and $a - b \in M$

````
For any $u$, $v \in \mathbb{Z}$, the set $M = \{ux + vy | x, y \in \mathbb{Z}\}$ is a module, 
the smallest module containing $u$ and $v$.

````{prf:theorem}
:label: thr-modules
Every module $M$ can be written as $ M = d \ \mathbb{Z}$ with $d = \min\{x \in M\ | x > 0\}$.
````

````{prf:proof}

It is plain that $d \ \mathbb{Z} \subseteq M $. 
Now assume there is an $x \in M$ that is not a multiple of $d$, so $ nd < x < x (n+1)d$. 
But $0 < y = x - nd < (n+1)d - nd = d$, and $y \in M$. This is a contradiction.
````

Euclid's extended algorithm computes for any two integers $a$ and $b$ the greatest common divisor $\gcd(a,b)$, 
and two numbers $x$ and $y$ such that $ax + by = (a,b)$. 
It can therefore be used to solve congruence equations such as $ax \equiv b \bmod m$.
Recall that $\gcd(a, 0) = \gcd(0,a) = a$.

````{prf:algorithm} Euclid's Extended Algorithm
 :label: alg-euclid-extended
  
We start with:

$r_0 = a$, $r_1 = b$,   
$x_0 = 1$, $x_1 = 0$,  
$y_0 = 0$, $y_1 = 1$.  

and compute, for $k = 2, 3, ...$:

$q_k = r_{k-2} \ // \ r_{k-1}$,  
$r_k = r_{k-2} - q_k \ r_{k-1}$,  
$x_k = x_{k-2} - q_k \ x_{k-1}$,  
$y_k = y_{k-2} - q_k \ y_{k-1}$.  

until $r_n = 0$. Then $r_{n-1} = (a, b)$ and $a   x_{n-1} + b   y_{n-1} = (a, b)$.
````

Euclid's plain algorithm is identical to the extended one, 
except that the $x_k$ and $y_k$ are omitted. 

````{prf:proof}

We prove first that $r_{n-1} = (a,b)$. We have 

$0 = r_n \equiv r_{n-2} \bmod r_{n-1}$,    
$r_{n-1} \equiv r_{n-3} \bmod r_{n-2}$.
So, by {prf:ref}`lem-euclid-util`, we have  
$r_{n-3} \equiv 0 \bmod r_{n-1}$.  

Continuing in this way, we will arrive at $r_{k} \equiv 0 \bmod r_{n-1}$,
and finally at $b \equiv 0 \bmod r_{n-1}$, $a \equiv 0 \bmod r_{n-1}$.
So, $r_{n-1}$ divides $a$ and $b$, hence $r_{n-1} \le (a, b)$.
   
Now let $q$ be any divisor of $a=r_0$ and $b = r_1$. If $q | r_{k-2}$ and $q | r_{k-1}$, 
then $q | r_{k}$, and finally $q | r_{n-1}$. Setting $q = (a,b)$ gives $(a, b) | r_{n-1}$, 
so $ (a,b) \le r_{n-1}$. Therefore, $r_{n-1} = (a, b)$. 

We prove next that $a x_{n-1} + b y_{n-1} = (a, b)$. 
From the definition it is clear that: 

$a x_0 + b y_0 = a = r_0$,     
$a x_1 + b y_1 = b = r_1$.

If this is true for $k=0$ and $k=1$, then it holds for all $k \le n-1$:

$a x_k + b y_k$  
$= a (x_{k-2} - q_k \ x_{k-1}) + b (y_{k-2} - q_k \ y_{k-1})$  
$= (a x_{k-2} + b y_{k-2}) - q_k (a x_{k-1} + b y_{k-1})$  
$= r_{k-2} - q_k \ r_{k-1} = r_{k}$, and finally:

$a x_{n-1} + b y_{n-1} = r_{n-1} = (a, b)$.   
````  

````{prf:theorem} Bezout's Theorem
 :label: thr-bezout
 
 Let $a$, $b$, and $m$ be  integers. Then:

(i) 
$ \{ax + by | x, y \in \mathbb{Z}\}= (a, b) \cdot \mathbb{Z}$.

(ii)
If $(a, m) |b$ then the equation $ax \equiv b \bmod m$ has an integer solution. 
This solution is unique if $(a, m) = 1$. 

(iii) For any prime number $p$, the residue class ring $ \mathbb{Z} / p \mathbb{Z}$, denoted by $F_p$, is a field.

(iv) For any $a$ coprime to $m$, we have:

$\mathbb{Z}_m = \{\overline {ax} | 0 \le x < m\}$

````

````{prf:proof} 

(i) Let $d = \min\{x \in M\ | x > 0\}$. We know that $(a, b) \in M$ and $(a,b) > 0$, so $d \le (a, b)$.  
Any divisior $q$ of $a$ and $b$ divides $ax + by$ for any two integers $x$ and $y$, thus $q|d$ and $q \le d$. 
Setting $q = (a,b)$ completes the proof.

(ii) is a reformulation of (i).  

(iii) By (ii), for each $a \in F_p$, the unique solution of $ax \equiv 1 \bmod p$ is its inverse modulo $m$.

(iv) Let $a$ be coprime to $m$ and $b$ an integer. 
Then there is an $x$ such that $ax \equiv b \bmod m$, and $\overline{ax} = \overline{b}$


````

As an introduction to the Chinese Remainder Theorem, we consider the 
residue class ring $\mathbb{Z}_6^\times$. 
Observing that $6 = 2 \cdot 3$, we can represent $\mathbb{Z}_6^\times = \{1, 5\}$ as a combination of 
elements of $\mathbb{Z}_2^\times = \{1\}$ and $\mathbb{Z}_3^\times = \{1, 2\}$.


| $n$ | $n\ \%2$ | $n\ \%3$ |
|:---:|:--------:|:--------:|
| $1$ |   $1$    |   $1$    |
| $5$ |   $1$    |   $2$    |

The table tells us that

$\{1, 5\} \cong \{1\} \times \{1, 2\}$, or:  
$\mathbb{Z}^\times_6 \cong \mathbb{Z}^\times_2 \times \mathbb{Z}^\times_3$, and   
$\phi(6) = \phi(2) \ \phi(3) = 1 \cdot 2 = 2$.

This is a simple, non-trivial instance of the Chinese Remainder Theorem.


````{prf:theorem} Chinese Remainder Theorem
:label: thr-chinese-remainder

Let $m_1, m_2, \ldots, m_n$ be pairwise coprime integers, that is $(m_i, m_j) = 1$ for $i \ne j$,  
$m = m_1 m_2 \cdots m_n$,  
$a_1, a_2, \ldots, a_n$ be integers such that $(a_i, m_i) = 1$ for all $i$.

(i) The system of congruences:


```{math}
:label: equ-congruences

a_1 x \equiv 1 \bmod m_1,


a_2 x \equiv 1 \bmod m_2,


\ldots       


a_n x\equiv 1 \bmod m_n  


```
has a unique solution.


(ii) $\mathbb{Z}^\times_m \cong \mathbb{Z}^\times_{m_1} \times \mathbb{Z}^\times_{m_2} \cdots \times \mathbb{Z}^\times_{m_n}$

(iii)
$\phi(m) = \phi(m_1) \phi(m_2) \cdots \phi(m_n)$

(iv)
If $m = \prod_{i=1}^n p_i^{\alpha_i}$, then:  

$\phi(m) = m\prod_{i=1}^n (1 - \frac{1}{1-p_i^{\alpha_i}})$
````

````{prf:proof}
(i) Let
$q_i = m//{m_i} = \prod_{i \ne j}m_i$, so       
$q_im_i = m $.

The inverse of $a_i \bmod m_i$, denoted by $a_i^{-1}$, exists because $(a_i, m_i) = 1$.  
The inverse of $q_i \bmod m_i$, denoted by $q_i^{-1}$, exists because $(m_i, m_j) = 1$ for different $i$, $j$.

Then  
$q_iq^{-1}_i \equiv 1 \bmod m_j$ for $i = j$,   
$q_iq^{-1}_i \equiv 0 \bmod m_j$ for $i \ne j$.

Hence  
$a_i^{-1}q_iq^{-1}_i \equiv a^{-1} \bmod m_j$ for $i = j$,  
$a_i^{-1}q_iq^{-1}_i \equiv 0 \bmod m_j$ for $i \ne j$.

and we can define

$x = \sum_{i=1}^{n} a_i^{-1}q_iq^{-1}_i$ 

which solves the system of congruences:

$x \equiv a_i^{-1} \bmod m_i$ (all $i$), or:  
$a_i x \equiv 1 \bmod m_i$.

The solution is unique, because:     
$a_ix \equiv a_iy \bmod m_i$ implies $x \equiv y \bmod m_i$ because $(a_i, m_i) = 1$.

(ii) It follows from (i) that the mapping

$T: \mathbb{Z}^\times_m \to \mathbb{Z}^\times_{m_1} \times \mathbb{Z}^\times_{m_2} \cdots \times \mathbb{Z}^\times_{m_n}$

given by

$T(x) = (x \%m_1, x \%m_2, \ldots, x \%m_n)$,  
$T^{-1}(a_1, a_2, \ldots, a_n) = \text{unique solution }x$ of {eq}`equ-congruences`

is an isomorphism.


(iii) Immediate from (ii)

(iv) Using equation {eq}`equ-phi-prime`, we get:   

$\phi(m) = \phi(p_1^{\alpha_1}) \ \phi(p_2^{\alpha_2}) \ \cdots \ \phi(p_n^{\alpha_n}) =$
$p_1^{\alpha_1 - 1}(p_1 - 1) \ p_2^{\alpha_2 - 1}(p_2 - 1) \ \cdots \ p_n^{\alpha_n - 1}(p_n - 1) =$
$m\prod_{i=1}^n (1 - \frac{1}{p_i})$

## References

```{bibliography}
:filter: docname in docnames
```



<div style="margin-bottom: 100px;"></div>
