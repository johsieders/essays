17.11.2026

# Differential Calculus

*Johannes Siedersleben, November 2026*


TODO (Introduction)

## Path Integrals

Let $C$ be a smooth curve in $\mathbb{R^n}$ and $\boldsymbol{t}(x)$. 
Let $X = \{x_0=a, x_1, \ldots, x_n = b\}, x_k \in C$ be a polygon approximating $C$. We define 

```{math}
\Delta_k &= x_k - x_{k-1}  \\
\mu(X) &= \min \| \Delta_k \| \\
\boldsymbol{t}_k &= \frac{\Delta_k}{\| \Delta_k \|}
```
The quantity $\mu(X)$ is called the **granularity** of $X$.

The tangent vector (length $= 1$) at $x \in C$ is defined by 

```{math}
\boldsymbol{t}(x) = \lim_{h \to 0} \frac{h}{\| h \|}
```

We consider a differentiable scalar field $f$ and a vector field $F$ on $C$.

```{math}
f &: C &\to \mathbb{R} \\
\partial f &: C &\to \mathbb{R^n} \\
F &: C &\to \mathbb{R^n}
```

````{prf:definition} Path Integrals
(i) The integral of $f$ along a smooth curve $C$ is defined as

```{math}
\int_C f \, ds \approx \sum_{k=1}^n f(x_k) \| \Delta_k \|
```
If $f$ is the density of the material from which $C$ is made then $\int_C f \, ds$ is the weight of $C$. 
With $f = 1$ we get the **arc length** $|C| = \int_C \, ds$.

(ii) Substituting $F \cdot \boldsymbol{t}$ for $f$, we get the definition of the integral of a vector field

```{math}
\int_C F \cdot \boldsymbol{t} \, ds &\approx \sum_{k=1}^n F(x_k) \cdot \frac{\Delta_k}{\| \Delta_k \|}  \| \Delta_k \|  \\
&= \sum_{k=1}^n F(x_k) \cdot \Delta_k
```
````

````{prf:theorem} Path Independence
:label: thr-path-independence
(i) For any differentiable function $f$ it holds that

```{math}
\int_C \partial f \cdot \boldsymbol{t} \, ds = f(b) - f(a)
```
This property is called **path independence**. It implies that integrals of gradients along closed curves are zero.

(ii) Let F be a vector field. If, for any closed curve $C$, we have

```{math}
\int_C F \cdot \boldsymbol{t} \, ds = 0
```
then $F$ is a gradient: $F = \partial f$ for some differentiable function $f$.
````

````{prf:proof}

(i) The definition of $\partial f$ tells us

```{math}
\partial f(x_k) \cdot \Delta_k \approx f(x_k) - f(x_{k-1}) 
```
Summing over $k$ gives:

```{math}
\sum_{k=1}^n \partial f(x_k) \cdot \Delta_k = \sum_{k=1}^n f(x_k) - f(x_{k-1})
```
The left-hand side represents the definition of the path integral. The right-hand side is a telescoping sum. We get

```{math}
\int_C \partial f \cdot \boldsymbol{t} \, ds = f(b) - f(a)
```

(ii) 
For any $x, y \in \mathbb{R^n}$, let $C_{xy}$ denote a smooth curve from $x$ to $y$.  
Take an arbitrary $a \in \mathbb{R^n}$ and define

```{math}
f(x) = \int_{C_{ax}} F \cdot \boldsymbol{t} \, ds
```
which is independent of $C_{ax}$. Then, for small $h$,

```{math}
f(x + h) - f(x) &= \int_{C_{x,x+h}} F \cdot \boldsymbol{t} \, ds \\
\approx F(x) \cdot h
```
which means that

```{math}
\partial f = F
```
````

Now let $C$ be defined by a parameter function $x$.

```{math}
x &: [0, T]  \to \mathbb{R^n} \\
C &= x([0,T])
```
We assume that $\dot{x}(t) \neq 0$ on  $[0, T]$.

````{prf:theorem} Parameterized Curves
:label: thr-parametrized-curves

(i) The tangent vector is given by 

```{math}
\boldsymbol{t}(t) =  \frac{\dot{x}(t)}{\| \dot{x}(t) \|}
```

(ii)
The scalar path integral is given by

```{math}
\int_C f \, ds &= \int_0^T f(x(t)) \| \dot{x}(t)  \| \, dt 
\\ \\
ds &= \| \dot{x} \| \, dt
```

(iii)
The vectorial path integral is given by
```{math}
\int_C F \cdot \boldsymbol{t} \, ds &= \int_0^T F(x(t))  \cdot \dot{x}(t) \, dt
\\ \\
\boldsymbol{t} \, ds &= \dot{x} \, dt
```

(iv)
The integral of a gradient along a parametrized curve $C$, is given by

```{math}
\int_C \partial f \cdot \boldsymbol{t} \, ds = f(x(T)) - f(x(0))
````

````{prf:proof}
(i)
TODO

(ii)
Let $[t_k]$ be a partition of $[0, T]$, and ${x_k} = x(t_k)$. Then

```{math}
\| \dot{x}(t_k) \| \approx \frac{\| \Delta_k \|}{t_k - t_{k-1}}
```

```{math}
\int_C f \, ds &\approx \sum_{k=1}^n f(x_k) \frac{\| \Delta_k \|}{t_k - t_{k-1}} \, (t_k - t_{k-1}) \\
&\approx \int_0^T f(x(t)) \| \dot{x}(t)  \| \, dt 
```
(iii)
```{math}

\int_C F \cdot \boldsymbol{t} \, ds = \int_0^T F \frac{\dot{x}}{\| \dot{x} \|} \, ds = \int_0^T F(x(t))  \cdot \dot{x}(t) \, dt
```

(iv)
```{math}
\int_C \partial f \cdot \boldsymbol{t} \, ds = \int_0^T \partial f(x(t))  \cdot \dot{x}(t) \, dt = f(x(T)) - f(x(0))
```
````

## Surface Integrals

Let $A$ be a smooth surface in $\mathbb{R^3}$ and $\boldsymbol{n}(x)$ 
the outer normal vector (length $= 1$) at $x \in A$. 
Let $X = \{x_{00}, \ldots, x_{mn} \}, x_{jk} \in A$ be a polyhedron approximating $A$. We define 

```{math}
A_{jk} &= [x_{jk}, x_{j-1, k}] \times [x_{jk}, x_{j, k-1}] \\
a_{jk} &= (x_{jk} - x_{j-1, k}) \times (x_{jk} - x_{j, k-1}) \\
\mu(X) &= \min_{jk} \| a_{jk} \| \\
\boldsymbol{n}_{jk} &= \frac{a_{jk}}{\| a_{jk} \|}
```
The quantity $\mu(X)$ is called the **granularity** of $X$.
As $A$ is smooth, the approximations

```{math}
|A| &\approx \sum_{j,k=1}^{m,n} \| a_{jk} \| \\
\boldsymbol{n}_{jk} &\approx \boldsymbol{n}(x_{jk})
```
become arbitrarily good as $\mu(X)$ approaches zero.
We consider a differentiable scalar field $f$ and a vector field $F$ on $A$.

```{math}
f &: A &\to \mathbb{R} \\
\partial f &: A &\to \mathbb{R^3} \\
F &: A &\to \mathbb{R^3}
```

````{prf:definition} Surface Integral
(i) The integral of $f$ over a smooth surface $A$ is defined as

```{math}
\int_A f \, dS \approx \sum_{j,k=1}^{m,n} f(x_{jk}) \| a_{jk} \|
```

provided that the approximation becomes arbitrarily good as $\mu(X)$ approaches zero.

If $f$ is the density of the material from which $A$ is made, then $\int_A f \, dS$ is the **weight** of $A$.
With $f = 1$ we get the **surface** $|A| = \int_A \, dS$.

(ii) Substituting $F(x) \cdot \boldsymbol{n}(x)$ (the **flow density** of $F$ through $A$ at $x$) for $f$, we get the definition of the integral of a vector field $F$, or the **flow** of $F$ through $A$.

```{math}
\int_A F \cdot \boldsymbol{n} \, dS &= \lim_{\mu(X) \to 0} \sum_{j,k=1}^n F(x_{jk}) \frac{a_{jk}}{\| a_{jk} \|}  \| a_{jk} \|  \\
&= \lim_{\mu(X) \to 0} \sum_{j,k=1}^n F(x_{jk}) a_{jk}
```

This reads as: The integral of the flow density over $A$ equals the flow through $A$.
````
We recall that the **curl** of a vector field is defined as

```{math}
\partial \times F = \begin{bmatrix} \partial_2 F_3 - \partial_3 F_2 \\ 
                                    \partial_3 F_1 - \partial_1 F_3 \\
                                    \partial_1 F_2 - \partial_2 F_1 
                    \end{bmatrix}
```

````{prf:theorem} Curl
:label: thr-def-curl

The **curl** of $F$ is characterized by the defining property:
Let $x \in A$ and $U \subset A$ be a neighbourhood of $x$. The approximation

```{math}
(\partial \times F)(x) \cdot \boldsymbol{n}(x) \approx \frac{1}{| U |}\int_{\partial U} F \cdot \boldsymbol{t} \, ds
```
becomes arbitrarily good as $|U|$ approaches zero.
````

````{prf:proof}
see Schey, p. 75
````
````{prf:theorem} Stokes' Theorem
:label: thr-stokes

```{math}
\int_A (\partial \times F) \cdot \boldsymbol{n} \, dS = \int_{\partial A} F \cdot \boldsymbol{t} \, ds
```
````

````{prf:proof}

{prf:ref}`thr-def-curl`  tells us, with $U = A_{jk}$,

```{math}
(\partial \times F)(x_{jk}) \cdot \frac{a_{jk}}{\| a_{jk} \|} \| a_{jk} \| \approx \int_{\partial A_{jk}} F \cdot \boldsymbol{t} \, ds
```
Note that $\frac{a_{jk}}{\| a_{jk} \|} = \boldsymbol{n}_{jk} \approx \boldsymbol{n}(x_{jk}) $. Summing over $k$ gives:

```{math}
\sum_{j,k=1}^n(\partial \times F)(x_{jk}) \cdot \| a_{jk} \| \approx \sum_{j,k=1}^n \int_{\partial A_{jk}} F \cdot \boldsymbol{t} \, ds
```

The left-hand side represents the definition of the surface integral. The right-hand side is a telescoping sum because the sides of neighbouring rectangles facing each other cancel each other out, leaving only the sides facing outside. These sides approximate the boundary $\partial A$. To be honest, it requires a certain amount of $\epsilon$-ceremony to rigourosly prove the last statement but you have got the idea. Thus

```{math}
\int_A (\partial \times F) \cdot \boldsymbol{n} \, dS = \int_{\partial A} F \cdot \boldsymbol{t} \, ds
```
````

Now let $A$ be defined by a smooth parameter function $x$. Let
 
```{math}
R &= [0, U] \times [0, V] \subseteq \mathbb{R^2} \\
x &: R \to \mathbb{R^3}  \\
A &= x(R) 
```
We assume that

```{math}
\| \partial_u x \times \partial_v x \| \neq 0
```
on $R$. Let $\{u_j\}$ be a partition of $[0, U]$, $\{v_k\}$ one of $[0, V]$, and $R_{jk}$ the rectangle with upper right corner $(u_j, v_k)$. Let

```{math}
x_{jk} = x(u_j, v_k) 
```
Then $X = [x_{00}, \ldots, x_{mn}]$ is a polyhedron covering $A$.



````{prf:theorem} Parameterized Surfaces
:label: thr-parametrized-surfaces

(i) The normal vector at $x(u, v)$ is given by 

```{math}
\boldsymbol{n}(u, v) =  \frac{\partial_u x(u,v) \times \partial_v x(u,v)}{\| \partial_u x(u,v) \times \partial_v x(u,v) \|}
```

(ii)
The scalar integral is given by

```{math}
\int_A f \, dS &= \int_{R} f(x(u,v)) \, \| \partial_u x \times \partial_v x \| \, d(u,v) 
\\ \\
dS &=  \| \partial_u x \times \partial_v x \| \, d(u,v)
```

(iii)
The flow integral is given by

```{math}
\int_A F \cdot \boldsymbol{n} \, dS &= \int_{R} F(x(u,v)) \cdot (\partial_u x \times \partial_v x) \, d(u,v) 
\\ \\
\boldsymbol{n} \, dS &=  (\partial_u x \times \partial_v x) \, d(u,v)
```
````
````{prf:proof}
(i)
TODO

(ii)
We recall that, for any two vectors $a$ and $b$, the surface of the parallelogram spanned by $a$ and $b$ is given by

```{math}
\| a \times b \| = \| a \| \, \|  b \| \sin \alpha 
```

where $\alpha$ is the angle between $a$ and $b$. 
Now let $\alpha_{jk}$ be the angle between $x_{jk} - x_{j-1, k}$ and $x_{jk} - x_{j, k-1}$.
The key observation is this:

```{math}
\frac{\| a_{jk} \|}{(u_j - u_{j-1}) (v_k - v_{k-1})} &= 
\frac{\| (x_{jk} - x_{j-1, k}) \times (x_{jk} - x_{j, k-1}) \|}{(u_j - u_{j-1}) (v_k - v_{k-1})} \\
&= \frac{(x_{jk} - x_{j-1, k}) (x_{jk} - x_{j, k-1})}{(u_j - u_{j-1})(v_k - v_{k-1})} \sin(\alpha_{jk}) \\
&\approx \| \partial_u x(u_j, v_k) \| \, \| \partial_v x(u_j, v_k) \| \sin(\alpha_{jk}) \\
&\approx \| \partial_u(u_j, v_k) x \times \partial_v x(u_j, v_k) \| 
```

Thus

```{math}
\int_A f \, dS &\approx \sum_{j,k=1}^{m,n} f(x_k) \| a_{jk} \|  \\
&= \sum_{j,k=1}^{m,n} f(x_k) \frac{\| a_{jk} \|}{(u_j - u_{j-1}) \cdot(v_k - v_{k-1})} (u_j - u_{j-1}) (v_k - v_{k-1}) \\
&\approx \sum_{j,k=1}^{m,n} f(x_k) \| \partial_u x(u_j, v_k) \times \partial_v x(u_j, v_k) \| (u_j - u_{j-1}) (v_k - v_{k-1}) \\
&\approx  \int_{R} f(x(u,v)) \, \| \partial_u x \times \partial_v x \| \, d(u,v) 
```

(iii)

```{math}
\int_A F \cdot \boldsymbol{n} \, dS &=  \int_{R} F(x(u,v)) \cdot \boldsymbol{n} \, \| \partial_u x \times \partial_v x \| \, d(u,v) \\
&= \int_{R} F(x(u,v)) \cdot \frac{\partial_u x \times \partial_v x}{\|\partial_u x \times \partial_v x\|} \| \partial_u x \times \partial_v x \| \, d(u,v) \\
&= \int_{R} F(x(u,v)) \cdot (\partial_u x \times \partial_v) \, d(u,v) 
```
````

## Volume Integrals

Let $\Omega$ be a volume in $\mathbb{R^3}$ whose surface $\partial \Omega$ is closed and smooth. . 
Let $C = [c_{0}, \ldots, c_{n}]$ be a set of disjoint cubes covering $\Omega$, that is

```{math}
\Omega \subseteq \bigcup_{k} c_k
```
We define the **granularity** of $C$ as

```{math}
\mu(C) = \min_{k} \text{len}(c_k)
```
where $\text{len}(c_k)$ is the edge length of $c_k$.
As $\partial \Omega$ is smooth, the approximation

```{math}
|\Omega| \approx \sum_{k=1}^{n} | c_k | \\
```
becomes arbitrarily good as $\mu(C)$ approaches zero.

We consider a differentiable scalar field $f$ on $\Omega$.

```{math}
f : \Omega &\to \mathbb{R} \\
```

````{prf:definition} Volume Integrals
The integral of $f$ over $\Omega$ is defined as

```{math}
\int_{\Omega} f \, dV \approx \sum_{k=1}^{n} f(x_{k}) \, | c_{k} |
```
provided that the approximation becomes arbitrarily good as $\mu(C)$ approaches zero.

If $f$ is the density of the material from which $\Omega$ is made, then $\int_{\Omega} f \, dV$ is the **weight** of $\Omega$. With $f = 1$ we get the **volume** $|\Omega| = \int_{\Omega} \, dV$.
````
We recall that the **divergence** of a vector field is defined as

```{math}
\partial \cdot F = \sum_{i=1}^{3} \partial_i F_i
```

````{prf:theorem} Divergence
:label: thr-def-div

Let $U$ be a small neighbourhood of $x$ with a smooth surface. The approximation

```{math}
(\partial \cdot F)(x) \approx \frac{1}{| U |}\int_{\partial U} F \cdot \boldsymbol{n} \, dS
```
becomes arbitrarily good as $|U|$ approaches zero, 
````

````{prf:proof}
We consider a small cube $Q$ with side lengths $s_1, s_2, s_3$. Let $\boldsymbol{e}_i$ be the $i$-th unit vector.
We get for $i= 1, 2, 3$

```{math}
\int_{\partial Q} F_i \cdot \boldsymbol{e}_i \, dS \approx \frac{F_i(x + s_i \boldsymbol{e}_i)}{s_i} s_1 s_2 s_3
```
Summing over $i$ gives

```{math}
\int_{\partial Q} F \cdot \boldsymbol{n} \, dS = (\partial F_1 + \partial F_2 + \partial F_3) \, |Q| = (\partial \cdot F) \, |Q|
````
````{prf:theorem} Gauss' Theorem
:label: thr-gauss

```{math}
\int_{\Omega} (\partial \cdot F) \, dV = \int_{\partial \Omega} F \cdot \boldsymbol{n} \, dS
```
````

````{prf:proof}

{prf:ref}`thr-def-div`  tells us, with $U = c_k$,

```{math}
(\partial \cdot F)(x_k) \, | c_k | \approx \int_{\partial c_k} F \cdot \boldsymbol{n} \, dS
```

Summing over $k$ gives:

```{math}
\sum_{k=1}^n (\partial \cdot F)(x_k) \, | c_k | \approx \sum_{k=1}^n \int_{\partial c_k} F \cdot \boldsymbol{n} \, dS
```

The left-hand side represents the definition of the volume integral. The right-hand side is a telescoping sum because the sides of neighbouring cubes facing each other cancel each other out, leaving only the sides facing outside. These sides approximate the boundary $\partial \Omega$. Thus

```{math}
\int_{\Omega} (\partial \cdot F)(x) \, dV =  \int_{\partial \Omega} F \cdot \boldsymbol{n} \, dS 
```
````

Now let $\Psi \subset \mathbb{R^3}$ be another volume and 
 
```{math}
x &: \Psi \to \mathbb{R^3}  \\
\Omega &= x(\Psi) 
```
where $x$ is differentiable and

```{math}
\det (\partial \otimes x) \neq 0
```
on $Z$.


````{prf:theorem} Parameterized Volumes
:label: thr-parametrized-volumes

```{math}
\int_{\Omega} f \, dV = \int_{Z} f(x(u,v,w)) \, | \det (\partial \otimes x) | \, d(u,v,w) 
```
````

````{prf:proof}

TODO

````

````{prf:theorem} Green's Formula
:label: thr-green

Let $f, g: \mathbb{R^3} \to \mathbb{R}$ be scalar fields, $A \subset \mathbb{R^3}$ a smooth surface, and $\Omega \subset \mathbb{R^3}$ a volume with a smooth surface.

(i) **Product Rule**
```{math}
\partial \cdot (f \, \partial g) = f \partial^2 g + \partial f \partial g 
```

(ii)
```{math}
\int_A (f \,  \partial g) \cdot \boldsymbol{n} \, dS = \int_A f \, \frac{\partial g}{\partial \boldsymbol{n}} \, dS
```

(iii) **Green's Formula**
```{math}
\int_{\Omega} (f \, \partial^2 g - g \, \partial^2 f) \, dV = \int_{\partial \Omega} \left( f \, \frac{\partial g}{\partial \boldsymbol{n}}  -
                                                                                     g \, \frac{\partial f}{\partial \boldsymbol{n}} \right) \, dS
```

````
````{prf:proof}

(i) Note that 
```{math}
\partial^2 f = \partial_1^2 f + \partial_2^2 f + \partial_3^2 f
```
and apply the plain product rule.

(ii)

```{math}
\int_A (f \,  \partial g) \cdot \boldsymbol{n} \, dS &\approx \sum_{j,k}^{m,n} f(x_{jk})\partial g(x_{jk}) \cdot a_{jk} \\
                                                     &= \sum_{j,k}^{m,n} f(x_{jk}) \,(\partial g(x_{jk}) \cdot \boldsymbol{n}_{jk}) \| a_{jk} \| \\
                                                     &\approx \int_A f(x) \, (\partial g(x) \cdot \boldsymbol{n}(x)) \, dS \\
                                                     &= \int_A f \, \frac{\partial g}{\partial \boldsymbol{n}} \, dS
```
(iii)
We know from (i) that

```{math}
f \, \partial^2 g - g \, \partial^2 f = \partial \cdot (f \, \partial g) - \partial \cdot (g \, \partial f)
```
{prf:ref}`thr-gauss` gives us, using (ii)

```{math}
\int_{\Omega} \partial \cdot (f \, \partial g) = \int_{\partial \Omega} f \, \partial g \cdot \boldsymbol{n} \, dS
                                               = \int_{\partial \Omega} f \, \frac{\partial g}{\partial \boldsymbol{n}} \, dS
```
which yields the result

```{math}
\int_{\Omega}  (f \, \partial^2 g - g \, \partial^2 f) \, dV =  \int_{\partial \Omega} \left(f \, \frac{\partial g}{\partial \boldsymbol{n}}
                                                                                      - g \, \frac{\partial f}{\partial \boldsymbol{n}} \right) \, dS
```
````

