05.03.2026

# Differential Calculus

*Johannes Siedersleben, April 2026*

## Introduction

WORK IN PROGRESS

## Line Integrals


````{prf:remark} A Very Easy Example
:label: rem-very-easy-example
Let a curve $\gamma$ be given by

```{math}
&\phi(t) = \begin{bmatrix}
               t  \\
               t  
    \end{bmatrix}
\\
&0 \le t \le 1
```

so:
```{math}
&\dot{\phi}(t) = \begin{bmatrix}
               1  \\
               1  
    \end{bmatrix}
\\
&\| \dot{\phi}(t) \| = \sqrt{2} 
```

With $f(x, y) = x y$ we get 

```{math}
\int_0^1 f(\phi(t)) \| \dot{\phi}(t) \| \, dt = \sqrt{2} \int_0^1 t^2 \, dt = \frac{\sqrt{2}}{3}
```

Parameterizing on the path length:

```{math}
&t(s) = \frac{s}{\sqrt{2}} \\
&\dot{t}(s) = \frac{1}{\sqrt{2}} \\
&0 \le s \le \sqrt{2}
```

gives:
```{math}
&\int_0^1 f(\phi(t)) \| \dot{\phi}(t) \| \, dt \\
&= \int_0^{\sqrt{2}} f(\phi(t(s))) \| \dot{\phi}(t(s)) \| \dot{t}(s) \, ds \\
&= \frac{1}{\sqrt{2}} \int_0^{\sqrt{2}} f(\phi(t(s))) \| \dot{\phi}(t(s)) \| \, ds \\
&= \frac{1}{\sqrt{2}} \int_0^{\sqrt{2}} \frac{s^2}{2} \sqrt{2} \, ds \\
&= \frac{\sqrt{2}}{3}
```




````
