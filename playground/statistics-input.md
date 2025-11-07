

this short paper explains the basics of statistical tests. 

## general setting
this short paper explains the basics of statistical tests. 

$X_i \sim N(\mu, \sigma) $ independent, identically distributed

We would like to test hypothesis about the true values of $\mu$ or $\sigma$
 

$ \overline{X} = \sum_{i=1}^{n}X_i$ is an estimator of  $E[X]$
$ s^2 = \frac{1}{n-1}\sum_{i=1}^{n}(X_i - \overline{X})^2$ is an estimator of $Var[X]$

Explain $s^2$, using degrees of freedom argument; mention that 

E[Σᵢ₌₁ⁿ (Xᵢ - X̄)²] = (n-1)σ², not nσ²

##  Z-Test, Hello World of Statistics

Z-Test: $\sigma$ is known, $H_0: \mu = \mu_0$, three variants of $H_1$ (double tailed, left tail. right tail)
Idea (same pattern for all tests):

Define a new random variable, here:

Z = (X̄ - μ₀)/(σ/√n)

Make it clear that $H_0$ becomes improbable as Z gets large.

We are given a confidence level $\alpha > 0$, say $\alpha = 0.05$
and are looking for thresholds $z_{\alpha}$
such that we can reject 

$H_0$ against double tailed, if $|Z| > z_{\alpha/2}$ , 
 
$H_0$ against left tail, if $Z > z_{\alpha}$, 

$H_0$ against right tail, if $Z < z_{\alpha}$, 

Explain rejection area

Z-Test is easy, because $X_i \sim N(\mu, \sigma)$

Explain p-quantile


Give the formula for $z_{\alpha}$ 

##  t-Test

Same situation as before up to a point (much more realistic):
variance is unknown, mean to be tested

procede as before with $Z$ replaced by $T$
do not repeat p-quantile, rejection area
give formula for t-distribution

##  Chi-Squared-Test

Same situation as before, up to a point: mean is (in general) unknown, variance to be tested

procede as before with $Z$ replaced by $X^2$
give formula for $X^2$-distribution


## new setting: Comparing two samples

explain new setting

Z = (X̄ - Ȳ) / √(σ_x²/n + σ_y²/m)

## Two-Sample Z-Test


## Pooled Two-Sample t-Test

t = (X̄ - Ȳ) / (s_p √(1/n + 1/m))

## Welch's t-Test

t = (X̄ - Ȳ) / √(s_x²/n + s_y²/m)

Appendix A.

How to derive $X^2$-distribution of 

Appendix B.
How to derive t-distribution of T

Appendix B.

How to derive $X^2$-distribution of 
