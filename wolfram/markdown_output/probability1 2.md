\title{(1) Probability Basics}
\author{}
\date{}
\maketitle

18.9.2024 
Can reference equations, probability measure and random variables reorganized.
12.2.2025
Conditional probabilities included
13.2.2025
chapters on random variables, measurable sets included

Tossing a coin has two possible outcomes, heads and tails. Rolling a dice has six possible outcomes, the numbers one to six, and the number of casts
to get the first six can be any number greater than or equal to one. These are three examples of * discrete random variables*. * Continuous
random variables* take values in $\mathbb{R$. Examples include waiting times, the time of the next failure of some device, or the temperature at
a given location at a given time. Random variables, in general referred to as $X$,$Y$,$Z$, take random values in a domain $\Omega $ which is
always  $\mathbb{N}^k$  or $\mathbb{R}^{k $, often with $k=1$. More general domains are possible but not important for us. We are interested
in computing the probability for a random variable to take values in a certain set $A$. This is done using $\text{*probability* \text{measures$
introduced in section 1. 

###  1 Measures and Integrals

In the discrete case, all subsets of $\Omega $ are measurable, in the continuous case, all but a few pathological examples. That is all you must
take away from this paragraph. Read on if you are interested in the background. A famous example of a non-measurable subset of $\mathbb{R$ is the
* Vitali Set* which requires the axiom of choice for its construction (no proof). So, it is impossible to define a probability function that
works on all subsets of $\mathbb{R$.  It turns out (no proof) that probability functions can be defined on subsets of  $\mathcal{P$($\Omega
$) which fulfil the requirements of a $\sigma $-Algebra. A set $\mathcal{A$ $\subset $ $\mathcal{P$($\Omega $)  is a $\sigma $-Algebra if the
entire domain belongs to $\mathcal{A$, and if $\mathcal{A$ is closed under complement and countable unions:

$$
\Omega  \in  \mathcal{A}
$$

$$
\text{If} A \in  \mathcal{A} \text{  }\text{then}\text{   }A^c\in  \mathcal{A}
$$

$$
\text{If} A_i\in  \mathcal{A} (\text{all} i)\text{   }\text{then}\text{   }\cup A_i\in  \mathcal{A}
$$

A trivial $\sigma $-Algebra is $\{\emptyset $, $\Omega \$, and the most important one is probably the Borel $\sigma $-Algebra which is the smallest
$\sigma $-Algebra on $\mathbb{R$ that contains all open intervals. In the continuous case, we tacitly assume that all sets we deal with belong to
the Borel $\sigma $-Algebra.

Sub-Kolmogorov: The measure of a set is never negative, and measures of countably many disjoint sets add up.

$$
\mu [A] â¥ 0\text{    }(A \subset \Omega )

\mu \left[\cup  B_i\right] = \sum _{i=1}^{\infty } \mu \left[B_i\right]\text{    }\left(\text{all} B_{i }\text{mutually disjoint}\right)
$$

###  2 Probabilities, PDFs, CDFs

A probability density function (PDF) is a function defined on $\Omega$ with values in $[0, 1]$. We assume $f$ to be Riemann-integrable. In
the discrete case, the density function is called $p$ (for probability), and the probability measure of a set A $\subset $ $\mathbb{N}^k$ is
defined as:

$$
P[A]\text{:=}\sum _{i \in  A} p_i
$$

In the continuous case, the density function is called $f$, and the probability measure of a set A $\subset $ $\mathbb{R}^{k $ is defined as:

$$
P[A]\text{:=}\int _Af(x)dx
$$

Sums and integrals are always understood to extend to many dimensions. So, with two dimensions and $A\subset  \mathbb{N}\times \mathbb{N$, equation
(1) would read:

$$
P[A]\text{:=}\sum _{i,j \in  A} p_{\text{ij}}
$$

and equation (2) with $A\subset \mathbb{R}\times \mathbb{R$ would give:

$$
P[A]\text{:=}\int _Af(x,y)dxdy
$$

Discrete sums like (3) always exist, and so do integrals like (4) except for pathological cases like the Vitali set which are important for measure
theory but not for us. Probability measures satisfy the  * Kolmogorov axioms*: they are never negative, the probabilities of countably many
disjoint sets add up (this is obvious in the discrete case, and follows from the additivity of integrals in the continuous case),  and the entire
domain has probability $1$. That's sub-Kolmogorov plus the fact that the entire domain has measure or probability 1.

$$
P[A] â¥ 0\text{    }(A \subset \Omega )

P\left[\cup  B_i\right] = \sum _{i=1}^{\infty } P\left[B_i\right]\text{    }\left(\text{all} B_{i }\text{mutually disjoint}\right)

P[\Omega ] = 1
$$

The * cumulative distribution function* (CDF) is the sum or the integral over the PDF. It is defined by 

$$
F[n]\text{:=}\sum _{k=1}^n p_k
$$

in the discrete case, and 

$$
F[x]\text{:=}\int_{-\infty }^x f[y] \, dy = \int _{-\infty }^{x_1}\int _{-\infty }^{x_2} \text{..}\int_{-\infty }^{x_k} f\left[y_1, \text{..}y_k\right]
\, dy
$$

in the continuous case with one or more dimensions. (5) is equivalent to

$$
\frac{\partial ^2F}{\partial x\partial y}= f[x,y]
$$

or, more generally:

$$
\frac{\partial ^kF}{\partial x_1\partial x_2\text{..}\partial x_k}= f\left[x_1,x_2,\text{..}x_k\right]
$$

### 3 Random Variables

Random variables, often referred to as $X$,$Y$,$Z$, take on random values in a domain $\Omega$ which is a subset of $\mathbb{N}^k$ ($\Omega$
is * discrete*) or $\mathbb{R}^{k $($\Omega$ is * continuous*), often with $k=1$. More general domains are possible but unimportant
for us. Every random variable comes with a probability density functions (PDF). In the discrete case, a PDF is a finite or infinite sequence $p
= [$$p_1$, $p_2,$ $\text{..} ]$with $p_i\in  [0, 1]$($i \in  \Omega$), and

$$
\sum _{i \in  \Omega } p_i = 1
$$

The probability that $X$ takes a value in $A \subset  \Omega$ is given by:

$$
P_X[A]=P[X\in A] \text{:=} \sum _{i \in  A} p_i
$$

In the continuous case, a PDF is a function $f$ defined on $\Omega$ with values in $[0, 1]$ such that

$$
\int _{\Omega }f_X[x]dx = 1
$$

and again, the probability that X takes a value in $A \subset  \Omega$ is given by:

$$
P_X[A] = P[X\in A] \text{:=} \int _Af_X[x]dx
$$

Remark: In the discrete case, all sums like (10) always exist. In the continuous case, integrals like (12) exist except for pathological cases like
the Vitali Set. These are important for measure theory, but not for us. Sometimes, when there is no ambiguity, it is convenient to just write $P[A]$
instead of $P[X \in  A]$. The probabilities defined in this way satisfy the  * Kolmogorov axioms*: they are never negative, the entire
domain has probability $1$ and the probabilities of disjoint sets add up:

$$
\text{cdf}
$$

The * expectation value* of a random variable is

$$
E[X] \text{:=}\text{  }\sum _{k=1}^{\infty }  k p_k
$$

$$
E[X]\text{:=}\int _{-\infty }^{\infty }y f[y]dy
$$

The * nth momentum* of a random variable is 

$$
E\left[X^n\right] =\text{  }\sum _{k=1}^{\infty }  k^n p_k
$$

$$
E\left[X^k\right]=\int _{-\infty }^{\infty }y^n f[y]dy
$$

and the * variance*:

$$
\text{Var}[X]\text{:=} E\left[X^2\right]- E[X]^2
$$

The * standard deviation* $\sigma $(X) is the square root of the variance:

$$
\sigma (X)\text{:=}\sqrt{\text{Var}[X]}
$$

### 4 Two or More Random Variables

Two random variables $X$, $Y$ of dimensions $k$ and $l$ can be treated separately or combined into on random variable $Z = (X, Y)$of dimension
$k+l$. 

respectively have a * joint PDF*, given by:

$$
P[(X,Y) \in  C]\text{:=}\sum _{i \in  A} p_{\text{ij}} \left(C\subset \mathbb{N}^{k+l}\right)
$$

$$
P[(X,Y) \in  C]\text{:=}\int _Af(x, y)dxdy \left(C\subset \mathbb{R}^{k+l}\right)
$$

If $C = A\times B$, we often write:

$$
P[X\in A, Y\in B]\text{:=}P[(X,Y)\in  A\times B]
$$

How $X$ and $Y$ can be disentangled? The first step forward is to consider the the marginal probability measure of X which tells you the probabilities
of $X$ with $Y$ abstracted away:

$$
P_X[X=i]= \sum _{j \in  \mathbb{N}^k} p_{\text{ij}}
$$

$$
f_X[x] = \int _{\mathbb{R}^k}f(y)dy
$$

Now, let $A, B \subset  \mathbb{N}^k$. The conditional probability $P_{\text{XY$ is defined as

$$
P_{\text{XY}}[X\in A|Y\in B] \text{:=}\frac{P[X\in A,Y\in B] }{P[Y\in B]}
$$

whenever $P[Y\in B] > 0$. 

The * momentum generating function* (MGF) of a random variable is 

$$
M_f[t]\text{:=} E\left[e^{t X}\right]=\int _{-\infty }^{\infty }e^{t y}f[y]dy
$$

The operator $f âM_f$ is linear and injective ($M_f= 0$ implies $f=0$ almost everywhere). It holds that

$$
M_{f+g} = M_{f } M_g
$$

This is true because 

$$
E[X Y]= E[X]E[Y]
$$

for independent random variables X and Y. The * covariance* of two random variables X, Y is defined as

$$
\text{Cov}[X, Y]\text{:=} E[X Y]- E[X][Y]
$$

so,

$$
\text{Var}[X] = \text{Cov}[X, X]
$$

The normalized covariance is called the * correlation* $\rho (X, Y )$:

$$
\rho (X, Y) \text{:=} \frac{\text{Cov}[X, Y]}{\sigma (X)\sigma (Y)}
$$

### 5 Independence and Conditional Probabilities

$$
P[A \cap  B] = P[A] * P[B]
$$

$$
P[B] = \sum _{i=1}^n P\left[B_i\right]
$$

and for any event $A$, we have

$$
P[A] = \sum _{i=1}^n P\left[A\cap \text{$$B}_i\right]
$$

$$
\text{The conditional probability of A given B is defined as}
$$

$$
P[A|B] = P[A \cap  B] / P[B]
$$

So, A and B are independent iff $P[A|B]=P[A]$ or $P[B|A]=P[B]$. There are three important equations that follow immediately from the definitions.

$$
P[A|B] = P[A] * (P[B|A]/P[B])
$$

In equation(4) $P[A]$is interpreted as the prior probability: we only know $A$ and nothing else. The factor $P[B|A]/P[B]$is the likelihood
ratio, which tells us how the information conveyed by $B$ increases our knowledge of $A$. This gives the posterior probability  $P[A|B]$,
which takes $B$ into account.

$$
P[A|B] =\text{  }P[B|A]*( P[A] /P[B])
$$

This is equation (4) rearranged: the ratio $P[A] /P[B]$  connects the conditional probabilities  $P[A|B]$  and $P[B|A]$.
Equation (6) is the famous law of total probability and is a useful workhorse. It follows directly from (6), assuming that the $B_{i $are mutually
disjoint.

$$
P[A] = \sum _{i=1}^n P\left[A\left|\text{$$B}_i\right.\right]* P\left[B_i\right]
$$

