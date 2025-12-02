10.4.2025

# Riemann Integrals in $\mathbb{R^1}$

## 1 Zeno's Paradox

The standing arrow: An infinite sum of numbers close to zero can be positive.

###Littlewood{'s Principles}

Every measurable set is nearly a finite union of intervals.

Every measurable function is nearly continuous.

Every convergent sequence of measurable functions is nearly uniformly convergent.





## The Main Theorem of Integration

Integration and differentiation are inverse operations, but the devil is in the detail. The thing to remember is this: (A) The integral over the
derivative of $F$ gives $F$, but: (B) The derivative of the integral over $f$ gives $f$ almost everywhere. This is formally stated in two
theorems:

(A) Let $F$ be differentiable on $[a,b]$, and let the derivative $F'$ be R-integrable (no other assumptions on $F$ or $F'$!).
Then it holds that:

$$
F(b) - F(a) =\int_a^b F'(y) \, dy
$$

Note that we must require $F'$ to be integrable. If $F$ is differentiable, $F'$ can very well be not integrable.

(B) Let $f$ be integrable on $[a, b]$ and $F(x) = \int_a^x f(y) \, dy$ be differentiable. Then, for any interval $[r,s] \subset [a,b]$:

$$
\int _r^s(f(y)-F'(y)) \,dy = 0
$$

This is a formal way of saying that $f$ and $F'$ are equal almost everywhere, and it is all we can expect: The function

$$
f(x) = \begin{cases}
 1 \text{ if } x = 0 \\
 0 \text{ otherwise}
\end{cases}
$$

is clearly integrable, but the derivative of its integral is zero everywhere. The single discontinuity (in this case in $x=0$), or a finite number
of them just vanish—integration destroys information. Note also that if $f$ is integrable, $F(x)=\int _a^xf(y)\,dy$ does not need to be differentiable
(think of $f$as a step function).



## Measurable Sets

A set $A$ is said to be measurable if its characteristic function is, and it is clear that the measure $m[A]$ is:

$$
m[A]:=\int _{\mathbb{R}^n}X_A(x) \, dx
$$

We define the integral of a function $f$ over a set $A$ as:

$$
\int_A f(x) \, dx := \int _{\mathbb{R}^n} \chi_A(x) f(x) \, dx
$$

if the function $\chi_{A }f$ is Riemann-integrable. 




