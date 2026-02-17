## Tensors
(Spivac, p. 75)

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
For $S \in \mathcal{I}^k(V)$ and $T \in \mathcal{I}^l(V)$ we define:

```{math}
(S \otimes T)(v_1, \ldots, v_k, w_1, \ldots, w_l) = S(v_1, \ldots, v_k) * T(w_1, \ldots, w_l)
```

A famous example of an n-tensor is the determinant $\det \in \mathcal{I}^n(\mathbb{R}^n)$.

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
\{(\phi_{i_1}, \ldots, \phi_{i_k}) \mid 1 \le i_1, \ldots, i_k \le n \}
```
is a basis for $\mathcal{I}^l(V)$ and we have:

```{math}
\text{dim} \, \mathcal{I}^k(V) = n^k
```
````

````{prf:Definition} Dual Functions
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
The **inner product** on a vector space $V$ is a 2-tensor, denoted by $\langle,\rangle$,
required to be symmetric and positive-definite:

```{math}
&\langle x, y \rangle = \langle y, x \rangle \\
&\langle x, x \rangle > 0 \text{ if } x \ne 0
```
````

````{prf:Definition} Alternating Tensors, Alt-Operator
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
Then 

```{math}
\{\phi_{i_1} \wedge \ldots \wedge \phi_{i_k}\ \mid 1 \le i_1 < \ldots < i_k \le n \}
```
is a basis for $\Lambda^k(V)$ and we have:

```{math}
\text{dim}\, \Lambda^k(V) = \binom{n}{k}
```
````
