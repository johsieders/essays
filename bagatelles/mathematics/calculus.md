# First Steps in Calculus

[aus differentials.nb 14.04.2025, Taylor V1, V2, V3]: #  


> introduction goes here


## Derivatives in One Dimension

Our starting point is xxxx:

````{prf:definition}
:label: def-first-derivative

Let $f:\mathbb{R}\rightarrow \mathbb{R}$

```

````{prf:theorem}
:label: thr-intermediate-value
xxxx
yyyy

````

````{prf:proof}

xxxx
yyyy

````


Derivatives are about local changes: how does a function $f$ behave in a neighbourhood of some point $x$? The Taylor series allows us to express
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
f(u)=\sum _{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k+o(|x-a|)^n
$$

which is the same as $(h = u-x)$:

$$
f(x+h)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}h^k + o(|h|^n) 
$$

````


````{prf:proof}


**V1**

Proof by induction, using the main theorem of integration:

$f(u) - f(x) = \int _x^u f'(t)dt  = - \int _x^u\frac{d(u-t)}{dt}f'(t)dt$ 

$= (u-x)f'(x) + \int _x^u(u-t)f'(t)dt = \text{ ... }$

$=\sum _{k=1}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{1}{n!}\int _x^u (u-t)^n f^{(n+1)}(t)dt$


So we have:


$ f(u) = \sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{f^{(n)}(\xi) - f^{(n)}(x)}{n!}(u-x)^n$


**V2**: Using the mean value theorem, there is a $\xi \in [x, u]$ such that
 
$\frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}(t)dt = \frac{f^{(n+1)}(\xi)}{n!}\int_x^u (u-t)^n dt = \frac{f^{(n+1)}(\xi)}{(n+1)!}(u-x)^{n+1}$

**V3**

$f(u)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{f^{(n)}(\xi) - f^{(n)}(x)}{n!}(u-x)^n$

$= \sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + o((u-x)^n)$

````








## References

```{bibliography}
:filter: docname in docnames
```



<div style="margin-bottom: 100px;"></div>
