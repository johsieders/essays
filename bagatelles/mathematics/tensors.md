## Tensors
(Spivac, p. 75)


````{prf:definition} Tensors
:label: def-tensors

Let $V$ be a vector space, often $V = \mathbb{R}^n$. 
A **k-tensor** $T$ is a multilinear mapping from $V^k$ to $\mathbb{R}$:

```{math}
T :
\left\{
    \begin{array}{lr}
        V^k \to \mathbb{R} \\
        (x_1, x_2, \ldots, x_k) \mapsto T(x_1, x_2, \ldots, x_k)
    \end{array}
\right .
```

The set of all tensors over $V^k$ is called $\mathcal{I}^k(V)$. This is again a vector space. 
The set $\mathcal{I}^1(V)$ is just $V^*$, the dual space of $V$.
A famous example of an n-tensor is the determinant $\det \in \mathcal{I}^n(\mathbb{R}^n)$.
````

````{prf:definition} Tensor Product
:label: def-tensor-product

For $S \in \mathcal{I}^k(V)$ and $T \in \mathcal{I}^l(V)$ we define the **tensor product** of two
tensors $S, T$ as:

```{math}
(S \otimes T)(v_1, \ldots, v_k, w_1, \ldots, w_l) = S(v_1, \ldots, v_k) \, T(w_1, \ldots, w_l)
```
````

Some formulae:

```{math}
&(S_1 + S_2) \otimes T = S_1 \otimes T + S_2 \otimes T \\
&S \otimes (T_1 + T_2) = S \otimes T_1 + S \otimes T_2 \\
&(aS) \otimes T = S \otimes (aT) = a(S \otimes T) \\
&(S \otimes T) \otimes U = S \otimes (T \otimes U)
```

````{prf:theorem} Basis for k-Tensors
:label: thr-basis-k-tensors
Let $\{v_1, \ldots, v_n\}$ be a basis for $V$ and $\{\phi_1, \ldots, \phi_n\}$ a basis for $V^*$, so:

```{math}
\phi_i(v_j) = \delta_{ij}
```
Then, the set 

```{math}
\{\phi_{i_1} \otimes \ldots \otimes \phi_{i_k} \mid 1 \le i_1, \ldots, i_k \le n \}
```
is a basis for $\mathcal{I}^l(V)$ and we have:

```{math}
\text{dim} \, \mathcal{I}^k(V) = n^k
```
````

````{prf:proof}
TODO 
````

Each basis vector $\phi_{i_1} \otimes \ldots \otimes \phi_{i_k}$ can be thought of as a k-dimensional matrix 
with exactly one entry equal to one at position $i_1, \ldots, i_k$ and all others equal to zero.
Every k-tensor $T$ is a sum of these:

```{math}
T = \sum_{i_1, \ldots, i_k = 1, \ldots, n} T_{i_1, \ldots, i_k}\, \phi_{i_1} \otimes \ldots \otimes \phi_{i_k}
```

and we can think of $T$ as a k-dimensional matrix:

```{math}
T = \begin{bmatrix}
                   &\vdots           \\
           \cdots  &T_{i_1, \ldots, i_k} &\cdots    \\
                   &\vdots  
    \end{bmatrix}_{i_1, \ldots, i_k = 1, \ldots, n}
```

This is, in terms of Pytorch or Numpy, a tensor of shape $(n, \ldots, n)$ ($k$ times).
For $k = 1$ we get a vector and for $k = 2$ a matrix. In Einstein notation, we can express $T$ as:

```{math}
T(x_1,\ldots, x_k) = T_{i_1, \ldots, i_k} x_1^{i_1} \cdots x_k^{i_k}
```

For $S \in \mathcal{I}^k(V)$ and $T \in \mathcal{I}^l(V)$, we get:

```{math}
S \otimes T = S_{i_1, \ldots, i_k} T_{i_{k+1}, \ldots, i_{k+l}}
```






````{prf:Definition} Dual Functions
:label: def-dual-functions
Let

```{math}
f: V \to W
```
be a linear mapping from $V$ into some other vector space $W$. 
Then the **dual of f** is a linear transformation $f^*$ defined by:

```{math}
f^* :
\left\{
    \begin{array}{lr}
        \mathcal{I}^k(W) \to \mathcal{I}^k(V) \\
        T \mapsto f^*T
    \end{array}
\right .
```

where:

```{math}
f^*T(v_1, \ldots, v_k) = T(f(v_1), \ldots, f(v_k))
```

It holds that:

```{math}
f^*(S \otimes T) = f^*S \otimes f^*T
```

````

````{prf:Definition} Inner Product
:label: def-inner-product
The **inner product** on a vector space $V$ is a 2-tensor, denoted by $\langle \cdot, \cdot \rangle$,
required to be symmetric and positive-definite:

```{math}
&\langle x, y \rangle = \langle y, x \rangle \\
&\langle x, x \rangle > 0 \text{ if } x \ne 0
```

The matrix form of the inner product is simply the identity matrix:

```{math}
\langle \cdot, \cdot \rangle = \begin{bmatrix}
              1    &       &0   \\
                   &\ddots &    \\
              0    &       &1
    \end{bmatrix}
```

```{math}
\langle x, y \rangle = \sum_{i = 1}^n x_i y_i
```
````

````{prf:Definition} Alternating Tensors, Alt-Operator
:label: def-alternating-tensors
**(a)** A k-tensor $\omega$ is called **alternating**, if the sign of $\omega$ is changed by swapping any two variables.

```{math}
\omega(v_1, \ldots, v_i, \ldots, v_j, \ldots v_n) = -\omega(v_1, \ldots, v_j, \ldots, v_i, \ldots v_n)
```

The determinant $\det$ is famously alternating, the inner product is not.

**(b)**
For $T \in \mathcal{I}^k(V)$, we define $\text{Alt}(T) \in \mathcal{I}^k(V)$ through:

```{math}
\text{Alt}(T)(v_1, \ldots, v_k) = \frac{1}{k!} \sum_{\sigma \in S_k} \text{sgn}(\sigma) \, T(v_{\sigma_1}, \ldots, v_{\sigma_k})
```
where $S_k$ is the set of all permutations of the numbers $1$ to $k$.

**(c)** The set of all alternating tensors in $\mathcal{I}^k(V)$ is denoted by $\Lambda^k(V)$. 
It is a subspace of $\mathcal{I}^k(V)$.
````


````{prf:theorem} Properties of Alternating Tensors
:label: thr-alternating-tensors-properties

**a)** If $\omega \in \Lambda^k(V)$, then $\text{Alt}(\omega) =  \omega$

**b)** If $T \in \mathcal{I}^k(V)$, then $\text{Alt}(T) \in \Lambda^k(V)$
 
**c)** If $T \in \mathcal{I}^k(V)$, then $\text{Alt}(T) =  \text{Alt}(\text{Alt}(T))$

````
````{prf:proof}
TODO 
````


````{prf:Definition} Wedge Product
:label: def-wedge-product

Let $\omega \in \Lambda^k(V)$ and $\eta \in \Lambda^l(V)$.
Then, in general, $\omega \otimes \eta \notin \Lambda^{k+l}(V)$. But the **wedge product**

```{math}

\omega \wedge \eta = \frac{(k + l)!}{k! \, l!} \text{Alt}(\omega \otimes \eta)
```
is clearly alternating.
````

````{prf:theorem} Properties of the Wedge Product
:label: thr-wedge-product-properties


````
````{prf:proof}
TODO 
````

````{prf:Remark} Wedge Product of 1-Forms
:label: rem-wedge-product

Let $\alpha, \beta \in \Lambda^1(V)$.
Then $\alpha \wedge \beta \in \Lambda^2(V)$ and:

```{math}
\alpha \wedge \beta &= 2 \, \text{Alt}(\alpha \otimes \beta) \\
&= \frac{2}{2}(\alpha  \beta - \beta  \alpha)
```

so:
```{math}
(\alpha \wedge \beta)(u, v) = \alpha(u)  \beta(v) - \beta(u) \alpha(v)
```
````

````{prf:theorem} Basis for Alternating Tensors
:label: thr-basis-alternating-tensors

Let $\{v_1, \ldots, v_n\}$ be a basis for $V$ and $\{\phi_1, \ldots, \phi_n\}$ a basis for $V^*$, so:

```{math}
\phi_i(v_j) = \delta_{ij}
```
Then, the set 

```{math}
\{\phi_{i_1} \wedge \ldots \wedge \phi_{i_k}\ \mid 1 \le i_1 < \ldots < i_k \le n \}
```
is a basis for $\Lambda^k(V)$ and we have:

```{math}
\text{dim}\, \Lambda^k(V) = \binom{n}{k}
```

In particular,

```{math}
\text{dim}\, \Lambda^n(\mathbb{R}^n) = 1
```
So, all alternating n-tensors on $V$ are multiples of any non-zero one, e.g. $\det$.

````
````{prf:proof}
TODO 
````

````{prf:theorem} Basis Transformation
:label: thr-basis-transformation

Let $\{v_1, \ldots, v_n\}$ be a basis for $V$, $\omega \in \Lambda^n(V)$, and $A \in \text{GL}_n(\mathbb{R})$.
Then:

```{math}
\omega(A v_1, \ldots, A v_n) = \det A \, \omega(v_1, \ldots, v_n)
```
````

````{prf:proof}
TODO 
````

````{prf:definition} Basis Orientation
:label: def-basis-orientation

Let $\{v_1, \ldots, v_n\}$ be a basis for $V$, $A \in \text{GL}_n(\mathbb{R})$, and $w_i = Av_i$.
If $\det A > 0$, $v$ and $w$ are said to have the **same orientation**, and we clearly have:

```{math}
\omega(v_1, \ldots, v_n) \, \omega(w_1, \ldots, w_n) > 0
```
````
