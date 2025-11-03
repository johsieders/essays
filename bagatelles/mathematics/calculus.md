# First Steps in Calculus

[aus differentials.nb 14.04.2025, Taylor V1, V2, V3]: #  


> under construction


## Derivatives in One Dimension



````{prf:definition} First Derivative
:label: def-first-derivative
:nonumber:

Let $f:\mathbb{R}\rightarrow \mathbb{R}$

$$
f'(x)=lim_{h \to 0}\frac{1}{h}(f(x+h)-f(x)) = \frac{d}{d \epsilon}f(x + \epsilon h)|_{\epsilon =0 }
$$

So:

$$
f(x+h)=f(x)+ f'(x)h + o(h)
$$

and the term $f'(x)h$ is a linear approximation of $f$ at $x$.
```` 


Derivatives are about local changes: How does a function $f$ behave in a neighbourhood of some point $x$? The Taylor series allows us to express
$f(x+h)$ in terms of the higher derivatives of $f$ with arbitrary precision. It comes in three varieties that differ in the remainder term. In
what follows, $A$ is an open interval, and $x, u \in A$.

````{prf:theorem} Taylor V1
:label: thr-taylor-v1
:nonumber:

Let $f \in  C^{n+1}(A)$. Then:

$$
f(u)=\sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{1}{n!}\int _x^u (u-t)^n f^{(n+1)}(t)dt
$$
````


````{prf:theorem} Taylor V2
:label: thr-taylor-v2
:nonumber:
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
:nonumber:

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

**V1:**

Proof by induction, using the main theorem of integration and integration by parts:

$$
f(u) - f(x) &= \int _x^u f'(t)dt  = - \int _x^u\frac{d(u-t)}{dt}f'(t)dt

& = (u-x)f'(x) + \int _x^u(u-t)f''(t)dt = \text{ ... }

& =\sum _{k=1}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{1}{n!}\int _x^u (u-t)^n f^{(n+1)}(t)dt
$$

**V2:** Using the mean value theorem, we find a $\xi \in [x, u]$ such that
 
$$

\frac{1}{n!}\int _x^u(u-t)^nf^{(n+1)}(t)dt = \frac{f^{(n+1)}(\xi)}{n!}\int_x^u (u-t)^n dt = \frac{f^{(n+1)}(\xi)}{(n+1)!}(u-x)^{n+1}

$$

**V3**

$$
f(u) &= \sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + \frac{f^{(n)}(\xi) - f^{(n)}(x)}{n!}(u-x)^n

&= \sum _{k=0}^n \frac{f^{(k)}(x)}{k!}(u-x)^k + o((u-x)^n)
$$

````

## Derivatives in Hilbert Spaces


````{prf:definition} Derivative in Hibert Spaces
:label: def-derivative-hilbert
:nonumber:

Let $F: U \rightarrow V$. The derivative $DF$ of $F$ at $x$ is 
A linear mapping $DF(x): U \rightarrow V$ is the derivative of $F$ in $x$, iff

$$
&DF(x) = lim_{h \to 0} \frac{1}{\| h\| }(F(x+h)-F(x))

&F(x+h) - F(x) = DF(x)(h) + o(h) = DF(x)\mathsf{T}h+o(\| h\|)
$$

If such a mapping exists, $F$ is called differentiable in $x$. 
We say that $F$ is locally approximated by $DF(x)$. 

````


````{prf:theorem} Uniqueness of the Derivative
:label: def-unique-derivative
:nonumber:
The derivative is unique. 

````
````{prf:proof} 
Assume that

$$
F(x+h)-F(x) = D(h) + o(h)

F(x+h)-F(x) = E(h) + o(h)
$$

Then:

$$
D[h]+o[h]=E[h]+o[h]
$$

which shows that $D= E$.
````


## References

```{bibliography}
:filter: docname in docnames
```



<div style="margin-bottom: 100px;"></div>
