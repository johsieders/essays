# The Basics of Statistical Hypothesis Testing
## From Z-Tests to Welch's t-Test

---

## 1. General Setting

This paper explains the basics of statistical hypothesis testing, building from the simplest case (Z-test) to more realistic and complex scenarios (Welch's t-test).

### 1.1 The Model

We assume we have a random sample of $n$ independent, identically distributed observations:

$$X_1, X_2, \ldots, X_n \sim N(\mu, \sigma^2)$$

where $\mu$ is the population mean and $\sigma^2$ is the population variance, both unknown in general.

### 1.2 Estimators

We use two fundamental estimators:

**Sample mean** (estimator of $E[X] = \mu$):
$$\overline{X} = \frac{1}{n}\sum_{i=1}^{n}X_i$$

**Sample variance** (estimator of $\text{Var}[X] = \sigma^2$):
$$s^2 = \frac{1}{n-1}\sum_{i=1}^{n}(X_i - \overline{X})^2$$

### 1.3 Why $n-1$ in the Variance Estimator?

The factor $n-1$ (instead of $n$) ensures that $s^2$ is an **unbiased estimator** of $\sigma^2$, meaning $E[s^2] = \sigma^2$.

The key mathematical fact is:
$$E\left[\sum_{i=1}^{n}(X_i - \overline{X})^2\right] = (n-1)\sigma^2, \quad \text{not } n\sigma^2$$

This happens because $\overline{X}$ is computed from the data and is systematically closer to the $X_i$ than the true $\mu$ would be. The penalty is exactly one variance unit: $n\sigma^2 - \sigma^2 = (n-1)\sigma^2$.

**Degrees of freedom interpretation**: The constraint $\sum_{i=1}^{n}(X_i - \overline{X}) = 0$ means that once we know $n-1$ of the deviations $(X_i - \overline{X})$, the $n$-th is determined. Thus, we have only $n-1$ independent pieces of information for estimating variance.

---

## 2. Z-Test: The Hello World of Statistics

### 2.1 The Problem

**Known**: Population variance $\sigma^2$  
**Unknown**: Population mean $\mu$  
**Null hypothesis**: $H_0: \mu = \mu_0$ for some specified value $\mu_0$

**Alternatives**:
- $H_1: \mu \neq \mu_0$ (two-tailed)
- $H_1: \mu > \mu_0$ (right-tailed)
- $H_1: \mu < \mu_0$ (left-tailed)

### 2.2 The Test Statistic

We define the random variable:
$$Z = \frac{\overline{X} - \mu_0}{\sigma/\sqrt{n}}$$

Under $H_0$ (where $\mu = \mu_0$), we have $Z \sim N(0,1)$.

**Key insight**: If $H_0$ is false, then $Z$ tends to be large in absolute value (or large in a specific direction for one-tailed tests).

### 2.3 The p-Quantile

For a continuous distribution $F$, the **p-quantile** $q_p$ is the value such that:
$$P(X \leq q_p) = p$$

For the standard normal distribution $N(0,1)$, we denote the $(1-\alpha)$-quantile as $z_\alpha$:
$$P(Z > z_\alpha) = \alpha$$

### 2.4 Decision Rules

Given a significance level $\alpha$ (typically $\alpha = 0.05$ or $\alpha = 0.01$), we reject $H_0$ when:

| Alternative | Rejection Region | Critical Value |
|------------|------------------|----------------|
| $H_1: \mu \neq \mu_0$ | $\|Z\| > z_{\alpha/2}$ | $z_{\alpha/2} = 1.96$ for $\alpha=0.05$ |
| $H_1: \mu > \mu_0$ | $Z > z_\alpha$ | $z_\alpha = 1.645$ for $\alpha=0.05$ |
| $H_1: \mu < \mu_0$ | $Z < -z_\alpha$ | $-z_\alpha = -1.645$ for $\alpha=0.05$ |

### 2.5 Rejection Regions

The **rejection region** is the set of values of the test statistic that lead us to reject $H_0$. 

- For a two-tailed test at level $\alpha$, the rejection region consists of both tails of the distribution, each containing probability $\alpha/2$.
- For a one-tailed test, the entire $\alpha$ probability is in one tail.

The significance level $\alpha$ represents the probability of Type I error: rejecting $H_0$ when it is actually true.

---

## 3. Student's t-Test

### 3.1 The Problem

**Unknown**: Both population variance $\sigma^2$ and population mean $\mu$ (more realistic!)  
**Null hypothesis**: $H_0: \mu = \mu_0$

**Alternatives**: Same as Z-test (two-tailed, right-tailed, left-tailed)

### 3.2 The Test Statistic

Since $\sigma$ is unknown, we replace it with the sample standard deviation $s$:
$$T = \frac{\overline{X} - \mu_0}{s/\sqrt{n}}$$

Under $H_0$, this follows a **Student's t-distribution with $\nu = n-1$ degrees of freedom**, denoted $t(n-1)$.

### 3.3 The t-Distribution

The probability density function of the t-distribution with $\nu$ degrees of freedom is:
$$f(t) = \frac{\Gamma\left(\frac{\nu+1}{2}\right)}{\sqrt{\nu\pi}\,\Gamma\left(\frac{\nu}{2}\right)} \left(1 + \frac{t^2}{\nu}\right)^{-(\nu+1)/2}$$

for $t \in \mathbb{R}$.

**Properties**:
- Symmetric about zero (like the standard normal)
- Heavier tails than $N(0,1)$ for finite $\nu$
- As $\nu \to \infty$, $t(\nu) \to N(0,1)$
- Mean: $0$ (for $\nu > 1$), Variance: $\nu/(\nu-2)$ (for $\nu > 2$)

### 3.4 Decision Rules

Given significance level $\alpha$, we reject $H_0$ when:

| Alternative | Rejection Region |
|------------|------------------|
| $H_1: \mu \neq \mu_0$ | $\|T\| > t_{\alpha/2, n-1}$ |
| $H_1: \mu > \mu_0$ | $T > t_{\alpha, n-1}$ |
| $H_1: \mu < \mu_0$ | $T < -t_{\alpha, n-1}$ |

where $t_{\alpha, \nu}$ is the $\alpha$-quantile of the $t(\nu)$ distribution.

---

## 4. Chi-Squared Test for Variance

### 4.1 The Problem

**Unknown**: Population variance $\sigma^2$ (mean $\mu$ may also be unknown)  
**Null hypothesis**: $H_0: \sigma^2 = \sigma_0^2$ for some specified value $\sigma_0^2$

**Alternatives**:
- $H_1: \sigma^2 \neq \sigma_0^2$ (two-tailed)
- $H_1: \sigma^2 > \sigma_0^2$ (right-tailed)
- $H_1: \sigma^2 < \sigma_0^2$ (left-tailed)

### 4.2 The Test Statistic

We define:
$$\chi^2 = \frac{(n-1)s^2}{\sigma_0^2}$$

Under $H_0$, this follows a **chi-squared distribution with $\nu = n-1$ degrees of freedom**, denoted $\chi^2(n-1)$.

### 4.3 The Chi-Squared Distribution

The probability density function of the chi-squared distribution with $\nu$ degrees of freedom is:
$$f(x) = \frac{1}{2^{\nu/2}\Gamma(\nu/2)} x^{\nu/2-1} e^{-x/2}$$

for $x > 0$.

**Properties**:
- Supported on $(0, \infty)$
- Right-skewed, especially for small $\nu$
- Mean: $\nu$, Variance: $2\nu$
- As $\nu \to \infty$, $\chi^2(\nu) \approx N(\nu, 2\nu)$

**Construction**: If $Z_1, \ldots, Z_\nu \sim N(0,1)$ independently, then $Z_1^2 + \cdots + Z_\nu^2 \sim \chi^2(\nu)$.

### 4.4 Decision Rules

Given significance level $\alpha$, we reject $H_0$ when:

| Alternative | Rejection Region |
|------------|------------------|
| $H_1: \sigma^2 \neq \sigma_0^2$ | $\chi^2 < \chi^2_{\alpha/2, n-1}$ or $\chi^2 > \chi^2_{1-\alpha/2, n-1}$ |
| $H_1: \sigma^2 > \sigma_0^2$ | $\chi^2 > \chi^2_{1-\alpha, n-1}$ |
| $H_1: \sigma^2 < \sigma_0^2$ | $\chi^2 < \chi^2_{\alpha, n-1}$ |

**Important note**: The chi-squared test for variance is much more sensitive to departures from normality than tests for means.

---

## 5. Comparing Two Samples

### 5.1 New Setting

We now have **two independent random samples**:
- $X_1, X_2, \ldots, X_n \sim N(\mu_x, \sigma_x^2)$
- $Y_1, Y_2, \ldots, Y_m \sim N(\mu_y, \sigma_y^2)$

The sample sizes $n$ and $m$ need not be equal.

**Question**: Are the population means equal?

**Null hypothesis**: $H_0: \mu_x = \mu_y$ (equivalently, $\mu_x - \mu_y = 0$)

**Alternatives**:
- $H_1: \mu_x \neq \mu_y$ (two-tailed)
- $H_1: \mu_x > \mu_y$ (right-tailed)
- $H_1: \mu_x < \mu_y$ (left-tailed)

### 5.2 Key Fact

Since the samples are independent:
- $\overline{X} \sim N(\mu_x, \sigma_x^2/n)$
- $\overline{Y} \sim N(\mu_y, \sigma_y^2/m)$
- $\overline{X} - \overline{Y} \sim N(\mu_x - \mu_y, \sigma_x^2/n + \sigma_y^2/m)$

Under $H_0$, we have $\mu_x - \mu_y = 0$.

---

## 6. Two-Sample Z-Test

### 6.1 The Problem

**Known**: Both population variances $\sigma_x^2$ and $\sigma_y^2$  
**Unknown**: Population means $\mu_x$ and $\mu_y$  
**Null hypothesis**: $H_0: \mu_x = \mu_y$

### 6.2 The Test Statistic

$$Z = \frac{\overline{X} - \overline{Y}}{\sqrt{\sigma_x^2/n + \sigma_y^2/m}}$$

Under $H_0$, we have $Z \sim N(0,1)$.

### 6.3 Decision Rules

Given significance level $\alpha$, we reject $H_0$ when:

| Alternative | Rejection Region |
|------------|------------------|
| $H_1: \mu_x \neq \mu_y$ | $\|Z\| > z_{\alpha/2}$ |
| $H_1: \mu_x > \mu_y$ | $Z > z_\alpha$ |
| $H_1: \mu_x < \mu_y$ | $Z < -z_\alpha$ |

---

## 7. Pooled Two-Sample t-Test

### 7.1 The Problem

**Known**: Nothing (realistic case!)  
**Assumption**: $\sigma_x^2 = \sigma_y^2 = \sigma^2$ (equal but unknown variances)  
**Null hypothesis**: $H_0: \mu_x = \mu_y$

### 7.2 Pooled Variance Estimator

We combine information from both samples to estimate the common variance:
$$s_p^2 = \frac{(n-1)s_x^2 + (m-1)s_y^2}{n + m - 2}$$

This is a weighted average of the two sample variances, with weights equal to their degrees of freedom.

### 7.3 The Test Statistic

$$T = \frac{\overline{X} - \overline{Y}}{s_p\sqrt{1/n + 1/m}}$$

Under $H_0$, this follows a **t-distribution with $\nu = n + m - 2$ degrees of freedom**.

**Degrees of freedom**: We have $n + m$ total observations and estimate 2 parameters ($\mu_x$ and $\mu_y$), leaving $n + m - 2$ degrees of freedom.

### 7.4 Decision Rules

Given significance level $\alpha$, we reject $H_0$ when:

| Alternative | Rejection Region |
|------------|------------------|
| $H_1: \mu_x \neq \mu_y$ | $\|T\| > t_{\alpha/2, n+m-2}$ |
| $H_1: \mu_x > \mu_y$ | $T > t_{\alpha, n+m-2}$ |
| $H_1: \mu_x < \mu_y$ | $T < -t_{\alpha, n+m-2}$ |

---

## 8. Welch's t-Test

### 8.1 The Problem

**Known**: Nothing  
**Assumption**: $\sigma_x^2$ and $\sigma_y^2$ may be **unequal** (most general case)  
**Null hypothesis**: $H_0: \mu_x = \mu_y$

### 8.2 The Test Statistic

$$T = \frac{\overline{X} - \overline{Y}}{\sqrt{s_x^2/n + s_y^2/m}}$$

Under $H_0$, this approximately follows a t-distribution with degrees of freedom given by the **Welch-Satterthwaite approximation**:

$$\nu \approx \frac{\left(s_x^2/n + s_y^2/m\right)^2}{\frac{(s_x^2/n)^2}{n-1} + \frac{(s_y^2/m)^2}{m-1}}$$

This formula gives the effective degrees of freedom that best approximates the actual distribution of $T$.

### 8.3 Decision Rules

Given significance level $\alpha$, we reject $H_0$ when:

| Alternative | Rejection Region |
|------------|------------------|
| $H_1: \mu_x \neq \mu_y$ | $\|T\| > t_{\alpha/2, \nu}$ |
| $H_1: \mu_x > \mu_y$ | $T > t_{\alpha, \nu}$ |
| $H_1: \mu_x < \mu_y$ | $T < -t_{\alpha, \nu}$ |

where $\nu$ is computed from the Welch-Satterthwaite formula (typically rounded down).

### 8.4 Practical Recommendation

**Use Welch's t-test as the default** for comparing two means when variances are unknown. It:
- Requires no assumption about equal variances
- Is robust and performs well even when variances are equal
- Protects against incorrect conclusions when variances differ

The pooled t-test is more powerful when variances truly are equal, but the gain is minimal, while the risk of using it when variances differ is substantial.

---

## Summary: The Progression of Tests

| Test | Known | Unknown | Test Statistic | Distribution |
|------|-------|---------|----------------|--------------|
| **One Sample** |
| Z-test | $\sigma^2$ | $\mu$ | $(X̄ - \mu_0)/(\sigma/\sqrt{n})$ | $N(0,1)$ |
| t-test | Nothing | $\mu, \sigma^2$ | $(X̄ - \mu_0)/(s/\sqrt{n})$ | $t(n-1)$ |
| $\chi^2$-test | Nothing | $\sigma^2$ (may know $\mu$) | $(n-1)s^2/\sigma_0^2$ | $\chi^2(n-1)$ |
| **Two Samples** |
| Z-test | $\sigma_x^2, \sigma_y^2$ | $\mu_x, \mu_y$ | $(X̄ - Ȳ)/\sqrt{\sigma_x^2/n + \sigma_y^2/m}$ | $N(0,1)$ |
| Pooled t-test | $\sigma_x^2 = \sigma_y^2$ | $\mu_x, \mu_y, \sigma^2$ | $(X̄ - Ȳ)/(s_p\sqrt{1/n + 1/m})$ | $t(n+m-2)$ |
| Welch's t-test | Nothing | $\mu_x, \mu_y, \sigma_x^2, \sigma_y^2$ | $(X̄ - Ȳ)/\sqrt{s_x^2/n + s_y^2/m}$ | $t(\nu_{\text{Welch}})$ |

The progression shows increasing realism: we start with known variances (rare in practice) and move toward the general case where nothing is known.

---

# Appendices

## Appendix A: Derivation of the Chi-Squared Distribution

**Goal**: Show that if $Z_1, \ldots, Z_\nu \sim N(0,1)$ independently, then $\chi^2 = Z_1^2 + \cdots + Z_\nu^2 \sim \chi^2(\nu)$.

### A.1 Case $\nu = 1$: Single Squared Normal

Let $Z \sim N(0,1)$ and $Y = Z^2$. Using change of variables:

For $y > 0$, we have $z = \pm\sqrt{y}$, giving two pre-images. The PDF of $Z$ is:
$$f_Z(z) = \frac{1}{\sqrt{2\pi}}e^{-z^2/2}$$

By the transformation formula with $|dz/dy| = 1/(2\sqrt{y})$:
$$f_Y(y) = 2 \cdot f_Z(\sqrt{y}) \cdot \frac{1}{2\sqrt{y}} = \frac{1}{\sqrt{2\pi y}}e^{-y/2}$$

This can be written as:
$$f_Y(y) = \frac{1}{2^{1/2}\Gamma(1/2)} y^{1/2 - 1} e^{-y/2}$$

Using $\Gamma(1/2) = \sqrt{\pi}$, this is exactly $\chi^2(1)$.

### A.2 Moment Generating Functions

The cleanest approach uses MGFs. For $Y = Z^2$ with $Z \sim N(0,1)$:
$$M_Y(t) = E[e^{tZ^2}] = \int_{-\infty}^{\infty} e^{tz^2} \cdot \frac{1}{\sqrt{2\pi}} e^{-z^2/2} dz$$

$$= \frac{1}{\sqrt{2\pi}} \int_{-\infty}^{\infty} e^{-z^2(1/2 - t)} dz = (1 - 2t)^{-1/2}$$

for $t < 1/2$.

### A.3 The Sum of Independent Chi-Squared Variables

If $\chi^2 = Z_1^2 + \cdots + Z_\nu^2$ with independent $Z_i \sim N(0,1)$:
$$M_{\chi^2}(t) = \prod_{i=1}^{\nu} M_{Z_i^2}(t) = [(1-2t)^{-1/2}]^\nu = (1-2t)^{-\nu/2}$$

This is the MGF of $\chi^2(\nu)$. Since MGFs uniquely determine distributions, we have proven the result.

### A.4 Verification of the PDF

The PDF with MGF $M(t) = (1-2t)^{-\nu/2}$ is:
$$f(x) = \frac{1}{2^{\nu/2}\Gamma(\nu/2)} x^{\nu/2-1} e^{-x/2}, \quad x > 0$$

This can be verified by computing:
$$M(t) = \int_0^{\infty} e^{tx} \cdot \frac{1}{2^{\nu/2}\Gamma(\nu/2)} x^{\nu/2-1} e^{-x/2} dx$$

Substituting $u = x(1/2 - t)$ yields:
$$M(t) = \frac{1}{2^{\nu/2}\Gamma(\nu/2)} \cdot \left[\frac{1}{1/2-t}\right]^{\nu/2} \cdot \Gamma(\nu/2) = (1-2t)^{-\nu/2}$$

---

## Appendix B: Derivation of Student's t-Distribution

**Goal**: Show that if $Z \sim N(0,1)$ and $V \sim \chi^2(\nu)$ are independent, then $T = Z/\sqrt{V/\nu}$ follows the t-distribution with $\nu$ degrees of freedom.

### B.1 Joint Density

Since $Z$ and $V$ are independent:
$$f(z,v) = f_Z(z) \cdot f_V(v) = \frac{1}{\sqrt{2\pi}}e^{-z^2/2} \cdot \frac{1}{2^{\nu/2}\Gamma(\nu/2)} v^{\nu/2-1} e^{-v/2}$$

$$= \frac{1}{\sqrt{2\pi} \cdot 2^{\nu/2} \Gamma(\nu/2)} v^{\nu/2-1} e^{-(z^2+v)/2}$$

for $z \in \mathbb{R}$ and $v > 0$.

### B.2 Change of Variables

Transform to $(T, V)$ where:
- $T = Z/\sqrt{V/\nu}$
- $V = V$ (unchanged)

The inverse transformation:
- $Z = T\sqrt{V/\nu}$
- $V = V$

The Jacobian:
$$J = \left|\frac{\partial(z,v)}{\partial(t,v)}\right| = \left|\det\begin{pmatrix} \sqrt{V/\nu} & T/(2\sqrt{\nu V}) \\ 0 & 1 \end{pmatrix}\right| = \sqrt{V/\nu}$$

### B.3 Transform the Joint Density

$$g(t,v) = f(z(t,v), v) \cdot |J|$$

Substituting $z = t\sqrt{v/\nu}$:
$$g(t,v) = \frac{1}{\sqrt{2\pi\nu} \cdot 2^{\nu/2} \Gamma(\nu/2)} v^{(\nu+1)/2-1} e^{-v(t^2+\nu)/(2\nu)}$$

### B.4 Marginalize Over $V$

To get $f_T(t)$, integrate over $v \in (0,\infty)$:
$$f_T(t) = \frac{1}{\sqrt{2\pi\nu} \cdot 2^{\nu/2} \Gamma(\nu/2)} \int_0^{\infty} v^{(\nu+1)/2-1} e^{-v(t^2+\nu)/(2\nu)} dv$$

Let $u = v(t^2+\nu)/(2\nu)$:
$$\int_0^{\infty} v^{(\nu+1)/2-1} e^{-v(t^2+\nu)/(2\nu)} dv = \left[\frac{2\nu}{t^2+\nu}\right]^{(\nu+1)/2} \Gamma\left(\frac{\nu+1}{2}\right)$$

### B.5 Simplify

$$f_T(t) = \frac{\Gamma((\nu+1)/2)}{\sqrt{\nu\pi}\,\Gamma(\nu/2)} \left(1 + \frac{t^2}{\nu}\right)^{-(\nu+1)/2}$$

This is exactly the PDF of the $t(\nu)$ distribution. 


# Appendix C: Covariance and Variance

$\text{Cov}[X, Y] = E[(X - E[X]) E[(Y - E[Y]) = E[X Y] - E[X] E[Y]$

$\text{Var}[X] = E[(X - E[X])^2]= E[X^2] - E[X]^2 = \text{Cov}[X, X]$

