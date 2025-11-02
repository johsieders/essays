17.04.2025

## Matrices, Tensors, Linear Mappings

Let $A$ be an ($n x m$)-Matrix, so $A^T$ is $(m x n)$. $A$ defines a linear mapping $A$$:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$by 

$$
A[x] = A\mathsf{T}x = \left(
\begin{array}{c}
 . 
 \sum _{j=1}^n a_{\text{ij}}x_j 
 . 
\end{array}
\right) {}_{i=1,\text{..},m}
$$

Likewise,

$$
y[A] = y\mathsf{T}A = \left(
\begin{array}{c}
 . 
 \sum _{i=1}^m y_ia_{\text{ij}} 
 . 
\end{array}
\right) {}_{j=1,\text{..},n}
$$

So, every vector and every matrix can also be considered a linear mapping defined as above. Physicists use an alternative notation:

$$
\langle A|x\rangle  = A\mathsf{T}x =A[x]

\langle y|A\rangle  = y\mathsf{T}A =y[A]

\langle B|A|x\rangle =\langle B|\langle A|x\rangle \rangle =B\mathsf{T} A\mathsf{T}x = (A B)\mathsf{T}x=B[A[x]]
$$

What is right of the bar is the argument, what is left of the bar is the function. No need to care about transpositions.

Let $B$ be an ($m x p$)-Matrix, so $B^T$ is $(p x m)$.$B$ defines a linear mapping $B$$:\mathbb{R}^m\text{-$>$ \mathbb{R}^p$by the
same procedure. Then the linear mapping $B\circ A$$:\mathbb{R}^n\text{-$>$ \mathbb{R}^p$is defined by

$$
(B\circ A)[x] = B[A[x]] =B\mathsf{T} A\mathsf{T}x =(A B)\mathsf{T}x=\left(
\begin{array}{c}
 . 
 \underset{j=1}{\overset{n}{\sum _{i=1}^m \sum }}b_{\text{ki}}a_{\text{ij}}x_j 
 . 
\end{array}
\right) {}_{k=1,\text{..},p}
$$

The matrix $(A\circ B)\mathsf{T$ is $(p\times n)$.  This is important for the chain rule. The case $p = 1$ is frequent:  1 

$$
B = b = \left(
\begin{array}{c}
 b_1 
 . 
 b_m 
\end{array}
\right)
$$

$$
(b\circ A)[x]= b\mathsf{T} A\mathsf{T}x =(A b)\mathsf{T}x= \sum _{i=1}^m \sum _{j=1}^n b_ia_{\text{ij}}x_j
$$

### Tensors, Frobenius Product

 Let $x$ $\in $ $\mathbb{R}^n$, $y$ $\in $ $\mathbb{R}^m$. Then

$$
x\unicode{f3da}y =x\cdot y\mathsf{T}= \left(
\begin{array}{cccc}
 x_1y_1 & . & . & x_1y_m 
 . &   &   & . 
 . &   &   & . 
 x_ny_1 & . & . & x_ny_m 
\end{array}
\right)
$$

$$
\text{$\quad $        }x^{\unicode{f3da}q}= \left(
\begin{array}{ccc}
 . & . & . 
 . & x_{j_1}x_{j_2}\text{..} x_{j_q} & .  
 . & . & . 
\end{array}
\right)_{j_1,\text{..},j_q=1,\text{..},n }
$$

$>>>$ Let S, T be tensors with shape = $\left(n_1, n_2,\text{..}, n_q\right)$. Then the Frobenius product $\langle S,T\rangle$of $S$and $T$
is defined by

$$
\langle S,T\rangle =\sum _{j_q=1}^{n_q} \text{..}\sum _{j_2=1}^{n_2} \sum _{j_1=1}^{n_1} s_{j_q,\text{..},j_1}t_{j_1,\text{..},j_q}
$$

$>>>$ or, in Einstein notation:

$$
\langle S,T\rangle =s_{j_1,\text{..},j_q}t^{j_1,\text{..},j_q}
$$

So, $h^{\unicode{f3da}q$ is a tensors with shape = $(n, n, \text{..},n)$ with $q$ times $n$. With an $(n\times n)$-matrix $A$ we have:

$$
\quad \quad h\mathsf{T}A h =\left\langle A,h^{\unicode{f3da}2}\right\rangle =\left\langle A\mathsf{T},h^{\unicode{f3da}2}\right\rangle =h\mathsf{T}A\mathsf{T}
h
$$

