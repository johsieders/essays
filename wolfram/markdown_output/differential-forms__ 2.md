XXXXXXXXXXXXX

## Differential Forms

#### 1 Tensors

A tensor $\omega $ of rank $(n, k)$is a multilinear mapping

$$
\omega :
\begin{array}{ll}
 \{ & 
\begin{array}{ll}
 \mathbb{R}^n\times \mathbb{R}^n\times \text{..}\times \mathbb{R}^n\text{-$>$\mathbb{R} &   
 \left(x^{(1)},\text{..},x^{(k)}\right)\unicode{f4a1}\omega \left[x^{(1)},\text{..},x^{(k)}\right] &   
\end{array}
 
\end{array}
$$

We often write:

$$
X = \left(x^{(1)},\text{..},x^{(k)}\right)=\left(
\begin{array}{ccc}
 . & . & . 
 . & x_{\text{ji}} & . 
 . & . & . 
\end{array}
\right)_{j=1,\text{..},ni=1,\text{..},k}
$$

The tensor $\omega $ can be thought of as a k-dimensional matrix:

$$
\omega  = \left(
\begin{array}{ccc}
 . & . & . 
 . & \omega _{i_1,\text{..},i_k} & . 
 . & . & . 
\end{array}
\right)
$$

and the mapping is given by:

$$
\omega [X]=\sum _{i_1,\text{..},i_k=1}^n \omega _{i_1,\text{..},i_k}x_{i_11}x_{i_22}\text{..}x_{i_kk}
$$

The case k = 1 ($\omega $ is a vector):

$$
\omega [x]= \omega \mathsf{T} x=\sum _{i=1}^n \omega _ix_i
$$

The case k = 2 ($\omega $ is a matrix):

$$
\omega [X]=\sum _{i=1}^n \sum _{j=1}^n \omega _{\text{ij}}x_{\text{i1}}x_{\text{j2}}
$$

An important tensor of rank $(n,n)$is the determinant. It is multilinear, but not linear. 

Let $\omega $, $\eta $ be tensors of rank $(n,k)$ and $(n,l)$. The tensor product $\omega $ $\unicode{f3da}\eta $ is defined as

$$
\omega \unicode{f3da}\eta  = \left(
\begin{array}{ccc}
 . & . & . 
 . & \omega _{i_1,\text{..},i_k}\eta _{i_1,\text{..},i_l} & . 
 . & . & . 
\end{array}
\right)
$$

and has rank $(n,k+l)$. The tensor product has the following properties:

$$
\left(\omega _1+\omega _2\right)\unicode{f3da}\eta =\omega _1\unicode{f3da}\eta +\omega _2\unicode{f3da}\eta 

\omega +\left(\eta _1\unicode{f3da}\eta _2\right)=\omega \unicode{f3da}\eta _1+\omega \unicode{f3da}\eta _2

\left(a \omega _1\right)\unicode{f3da}\eta =\omega \unicode{f3da}(a \eta )=a(\omega \unicode{f3da}\eta )

(\omega +\eta )\unicode{f3da}\theta =\omega +(\eta \unicode{f3da}\theta )
$$

but in general:

$$
\omega \unicode{f3da}\eta \neq \eta \unicode{f3da}\omega
$$

With $k=1$ (both tensors are vectors), we get a symmetric $n\times n$-Matrix:

$$
\omega \unicode{f3da}\eta = \left(
\begin{array}{ccc}
 . & . & . 
 . & \omega _i\eta _j & . 
 . & . & . 
\end{array}
\right)_{i,j=1,\text{..},n}
$$

Let $v_1, v_2,\text{..},v_n$ be a basis of $\mathbb{R}^n$. Then, the basis tensors can be expressed as the tensor product of basis vectors:

$$
\beta _{i_1,\text{..},i_k}=v_{i_1}\unicode{f3da}v_{i_2}\text{..}\unicode{f3da}v_{i_k}
$$

The determinant changes sign when two vectors (row or column) are swapped. Tensors with this property are called alternating:

$$
\omega \left[\left(x^{(1)},\text{..},x^{(k)}\right)\right]=-\omega \left[\text{swap}_{i,j}\left[\left(x^{(1)},\text{..},x^{(k)}\right)\right]\right]
$$

where $\text{swap}_{i,j$ indicates that $x^{(i)$ and $x^{(j)$ are swapped. Let $\text{Perm}_k$ set set of all permutations of $\{1,\text{..},k\$.
An inversion of a permutation $\sigma $ is a pair $(i,j)$ such that 
$i<j$ and $\sigma [i]>\sigma [j]$. The parity of $\sigma $ is the parity of the number of inversions, and its sign $\text{sgn}[\sigma ]$ is
$-1$ if it is odd, $1$if it is even. We define the alternation of $\omega $ as:

$$
\text{alt}[\omega ]\left[\left(x^{(1)},\text{..},x^{(k)}\right)\right]=\frac{1}{k!}\sum _{\sigma \in \text{Perm}_k}^n \text{sgn}[\sigma ]\omega \left[\sigma
\left[\left(x^{(1)},\text{..},x^{(k)}\right)\right]\right]
$$

The mapping $\omega \unicode{f4a1}\text{alt}[\omega ]$ is linear. When $k=1$, there is only one permutation which is even, so $\text{alt}[\omega
]=\omega .$

#### 2 The Case $n=2$, $k=2$

The $\mathbb{R}^2$ is spanned by 2 basis vectors:

$$
v_1=\left(
\begin{array}{c}
 1 
 0 
\end{array}
\right), v_2=\left(
\begin{array}{c}
 0 
 1 
\end{array}
\right)
$$

This gives $4=2^2$ basis tensors:

$$
\beta _{11}=v_1\unicode{f3da}v_1=\left(
\begin{array}{cc}
 1 & 0 
 0 & 0 
\end{array}
\right), \beta _{12}=v_1\unicode{f3da}v_2=\left(
\begin{array}{cc}
 0 & 1 
 0 & 0 
\end{array}
\right), \beta _{21}=v_2\unicode{f3da}v_1=\left(
\begin{array}{cc}
 0 & 0 
 1 & 0 
\end{array}
\right), \beta _{22}=v_2\unicode{f3da}v_2=\left(
\begin{array}{cc}
 0 & 0 
 0 & 1 
\end{array}
\right)
$$

The inner product and the determinant and of any other tensor of rank $(2,2)$ can be expressed in terms of these. 
The inner product is given by

$$
\mu  =\beta _{11}+\beta _{22}=\left(
\begin{array}{cc}
 1 & 0 
 0 & 1 
\end{array}
\right)
$$

and we have:

$$
\mu \left[\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)\right]=\sum _{i=1}^2 \sum _{j=1}^2 \mu _{\text{ij}}x_{\text{ij}}=\mu _{11}x_{11}x_{12}+\mu _{22}x_{21}x_{12}=x^{(1)}\cdot x^{(2)}
$$

The determinant is given by:

$$
\nu  =\beta _{12}-\beta _{21}=\left(
\begin{array}{cc}
 0 & 1 
 -1 & 0 
\end{array}
\right)
$$

and we have:

$$
\nu \left[\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)\right]=\sum _{i=1}^2 \sum _{j=1}^2 \nu _{\text{ij}}x_{\text{ij}}=x_{11}x_{22}-x_{21}x_{12}=\text{Det}\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)
$$

$$
\text{alt}\left[\beta _{\text{ij}}\right]\left[\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)\right]=\frac{1}{2}\left(\beta _{\text{ij}}\left[\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)\right]-\beta _{\text{ij}}\left[\left(
\begin{array}{cc}
 x_{12} & x_{11} 
 x_{22} & x_{21} 
\end{array}
\right)\right]\right)=\frac{1}{2}\left(x_{\text{ij}}-x_{i(3-j)}\right)
$$

A $(n,2)$-tensor $\alpha $ would be alternating if:

$$
\text{alt}[\alpha ]\left[\left(
\begin{array}{cc}
 x^{(1)}, & x^{(2)} 
\end{array}
\right)\right]\overset{!}{=}\alpha \left[\left(
\begin{array}{cc}
 x^{(1)}, & x^{(2)} 
\end{array}
\right)\right]
$$

$$
\frac{1}{2}\left(\sum _{i,j=1}^n \alpha _{\text{ij}}x_{\text{ij}}-\sum _{i,j=1}^n \alpha _{\text{ij}}x_{\text{ji}}\right)=\frac{1}{2}\left(\sum _{i,j=1}^n
\left(\alpha _{\text{ij}}-\alpha _{\text{ji}}\right)x_{\text{ij}}\right)\overset{!}{=}\sum _{i,j=1}^n \alpha _{\text{ij}}x_{\text{ij}}
$$

This equation holds if $\alpha _{\text{ij}}=\alpha _{\text{ji$ or $\alpha \mathsf{T}=-\alpha$, which is the case for $\nu$ (determinant),
but not for $\mu $ (inner product) and the basis tensors $\beta _{\text{ij$.

$$
\text{alt}[\mu ]\left[\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)\right]=\frac{1}{2}\left(\mu \left[\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)\right]-\mu \left[\left(
\begin{array}{cc}
 x_{12} & x_{11} 
 x_{22} & x_{21} 
\end{array}
\right)\right]\right)=\frac{1}{2}\left(x^{(1)}\cdot x^{(2)}-x^{(2)}\cdot x^{(1)}\right)=0
$$

$$
\text{alt}[\nu ]\left[\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)\right]=\frac{1}{2}\left(\nu \left[\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)\right]-\nu \left[\left(
\begin{array}{cc}
 x_{12} & x_{11} 
 x_{22} & x_{21} 
\end{array}
\right)\right]\right)=\frac{1}{2}\left(x_{11}x_{22}-x_{21}x_{12}+x_{11}x_{22}-x_{21}x_{12}\right)=\nu \left[\left(
\begin{array}{cc}
 x_{11} & x_{12} 
 x_{21} & x_{22} 
\end{array}
\right)\right]
$$

#### Theorem

(a) If $\omega$ and $\eta $ are alternating, then so is $a \omega +\text{b$\eta $$(with $a,b\in  \mathbb{R$).

(b) If $\omega$ is alternating, then $\text{alt}[\omega ] = \omega$

(c) $\text{alt}[\omega ]$is always alternating, so $\text{alt}[\text{alt}[\omega ]]=\text{alt}[\omega ]$

Proof: 
(b) Because $\sigma $ is alternating, we have for any swapped vectors (here $x^{(1)$and $x^{(2)$):

$$
\omega \left[\sigma \left[\left(x^{(1)},x^{(2)},\text{..},x^{(k)}\right)\right]=-\omega \left[\sigma \left[\left(x^{(2)},x^{(1)},\text{..},x^{(k)}\right)\right]\right.\right.
$$

and:

$$
\text{sgn}[\sigma ]=-\text{sgn}\left[\text{swap}_{12}\circ \sigma \right]
$$

(c) We observe that, for any permutation $\mu$:

$$
\sum _{\sigma \in \text{Perm}_k}^n \text{sgn}[\mu \circ \sigma ]\omega [\mu \circ \sigma [X]]=\sum _{\sigma \in \text{Perm}_k}^n \text{sgn}[\sigma
]\omega [\sigma [X]]
$$

because the first sum is just a reordering of the second. So, using $\text{sgn}[\mu \circ \sigma ]=\text{sgn}[\mu ]\text{sgn}[\sigma ]$, we get

$$
\text{alt}[\text{alt}[\alpha ]][X]=\frac{1}{k!k!}\sum _{\mu \in \text{Perm}_k}^n \sum _{\sigma \in \text{Perm}_k}^n \text{sgn}[\mu ]\text{sgn}[\sigma
]\omega [\mu \circ \sigma [X]]
$$

$$
=\frac{1}{k!k!}\sum _{\mu \in \text{Perm}_k}^n \sum _{\sigma \in \text{Perm}_k}^n \text{sgn}[\sigma ]\omega [\sigma [X]]
$$

$$
=\frac{k!}{k!k!}\sum _{\sigma \in \text{Perm}_k}^n \text{sgn}[\sigma ]\omega [\sigma [X]]
$$

$$
=\text{alt}[\sigma ]
$$

The set of alternating tensors is a subspace of $T^k\left[\mathbb{R}^n\right]$:

$$
\Lambda ^k\left[\mathbb{R}^n\right]=\left\{\left.\omega \in T^k\left[\mathbb{R}^n\right]\right|\text{alt}[\omega ]=\omega \right\}
$$

#### Theorem

$$
\dim \left[T^k\left[\mathbb{R}^n\right]\right]=n^k
$$

$$
\dim \left[\Lambda ^k\left[\mathbb{R}^n\right]\right]=\left(
\begin{array}{c}
 n 
 k 
\end{array}
\right)
$$

Proof: A basis $\beta $ of $T^k\left[\mathbb{R}^n\right]$ can be obtained as follows: Choose any $k$ numbers $\left\{j_1,j_2,\text{..},j_k\right\$
between $1$ and $n$ and set

$$
\beta _{i_1,\text{..},i_k}=
\begin{array}{ll}
 \{ & 
\begin{array}{ll}
 1 & \text{if} i_1=j_1,\text{..},i_k=j_k  
 0 & \text{otherwise} 
\end{array}
 
\end{array}
$$

There are $n^k$ways to do this, hence  $T^k\left[\mathbb{R}^n\right]$ has dimension $n^k$.
A basis $\beta $ of $\Lambda ^k\left[\mathbb{R}^n\right]$ can be obtained in a similar way, but there are two restrictions, R1 and R2:
(R1) Let $\omega $ be an alternating (n,k)-tensor and $v^{(1)}, v^{(2)},\text{..}v^{(n)$ be a basis of $\mathbb{R}^n$, so

$$
v_{\text{ij}}=\delta _{\text{ij}}
$$

We get

$$
\omega \left[\left(v^{\left(i_1\right)},\text{..},v^{\left(i_k\right)}\right)\right]=\omega _{i_1,\text{..},i_k}
$$

hence, because $\omega $ is alternating, for any permutation of $i_1,\text{..}i_k$, it holds that:

$$
\left.\omega _{i_1,\text{..},i_k}=\text{sgn}[\sigma ]\omega _{\sigma \left[i_1,\text{..},i_k\right.}\right]
$$

in other words: for alternating tensors, the value of $\omega $ of a single ordering $\omega _{i_1,\text{..},i_k$determines the value of $\omega
$ for all permutations. 
(R2) Assume now that one of the basis vectors occurs twice, so, for example, $v^{\left(i_1\right)}=v^{\left(i_2\right)}=v^{(1)$. This gives us:

$$
\omega \left[\left(v^{(1)},v^{(1)},\text{..},v^{\left(i_k\right)}\right)\right]=\omega _{1,1,\text{..},i_k}=-\omega _{1,1,\text{..},i_k}=0
$$

because swapping $v^{\left(i_1\right)$ and $v^{\left(i_2\right)$ has no effect.
So, when choosing $k$ numbers $\left\{j_1,j_2,\text{..},j_k\right\$, no repetitions are allowed, and ordering doesn't count. There are, famously,
$\left(
\begin{array}{c}
 n 
 k 
\end{array}
\right)$ ways to do this.

#### The $\wedge $-Operator

$\text{Let} \omega ,\eta  \text{be} \text{two} \text{tensors} \text{of} 
\text{rank}\text{(n,k)}\text{and} \text{(n,l)}.\text{The} 
\text{wedge} \text{operator} \text{is} \text{defined} \text{as$

$$
\omega \wedge \eta =\frac{(k+l)!}{k!l!}\text{alt}[\omega \unicode{f3da}\eta ]=\frac{1}{k!l!}\sum _{\sigma \in \text{Perm}_k}^n \text{sgn}[\sigma
]\omega \unicode{f3da}\eta \left[\sigma \left[\left(x^{(1)},\text{..},x^{(k)},x^{(k+1)},\text{..},x^{(k+l)} \right)\right]\right]
$$

When $\omega ,\eta$ are both $(n,1)$, the result is $(n,2)$ and we get

$$
\omega \wedge \eta =2\text{alt}[\omega \unicode{f3da}\eta ]=2\omega \unicode{f3da}\eta \left[\left(x^{(1)},x^{(2)}\right)\right]-\omega \unicode{f3da}\eta
\left[\left(x^{(2)},x^{(1)}\right)\right]=\sum _{i,j=1}^n \omega _i\eta _j\left(x_{\text{i1}}x_{\text{j2}}-x_{\text{j1}}x_{\text{i2}}\right)
$$

