17.01.2026

# Differential Calculus

*Johannes Siedersleben, April 2026*

## Introduction



todo


## Derivatives on Hilbert Spaces

````{prf:Definition} Derivatives
:label: def-derivatives

Let $F:U \to V$. The **derivative** $\partial F(x)$ of $F$ in $x$ is defined as 

```{math}
\partial F = \lim_{h \to 0} \frac{1}{\| h \| }(F(x+h) - F(x))
```
or, equivalently: 

```{math}
:label: equ-derivatives
 
F(x+h) - F(x) = \partial F(x)\, h + o(h)
```

If such a mapping exists, $F$ is called differentiable in $x$. 
The derivative of $F$ in $x$ is a linear mapping

```{math}
\partial F(x): 
\left \{
    \begin{array}{lr}
        \mathbb{R}^n \to \mathbb{R}^m \\
        h \mapsto \partial F(x) \, h
    \end{array}
\right .
```

that approximates the function $F$ locally in $x$ as shown in {eq}`equ-derivatives`.
We will show that under weak assumptions, $\partial F$ can be calculated as 

```{math}
\partial F = \begin{bmatrix}
        &\vdots \\
        \cdots &\partial_i F_j &\cdots \\
        &\vdots
    \end{bmatrix}_{i = 1, \ldots, n; \, j = 1, \ldots, m}
```

The **differential operator** $\partial$ maps a differentiable function $F$ to a function 
that maps a vector $x$ to the linear mapping  $\partial F(x)$:

```{math}
\partial: 
\left \{
    \begin{array}{lr}
        C^1(\mathbb{R}^n, \mathbb{R}^m) \to C(\mathbb{R}^n, L(\mathbb{R}^n, \mathbb{R}^m))  \\
        F \mapsto (x \mapsto \partial F(x))
    \end{array}
\right .
```
 

````




````{prf:Definition} Uniqueness of the Derivative
:label: uniquness-derivative

The derivative is unique. 
````

````{prf:proof} 
Assume that there are two linear mappings $D, E$ satisfying {eq}`equ-derivatives`:

```{math}
&F(x+h) - F(x) = D \, h + o(h) \\
&F(x+h) - F(x) = E \, h + o(h)
```
Then:
```{math}
D \, h + o(h) = E \, h + o(h)
```

which shows that $D = E$.
````

### Chain Rule, Product Pule


````{prf:Theorem} Chain Rule
:label: chain-rule

Let $G:\mathbb{R}^n \to \mathbb{R}^m$ be differentiable in x and 
$F:\mathbb{R}^m \to \mathbb{R}^k$ differentiable in G(x). 
Then $F \circ G: \mathbb{R}^n \to \mathbb{R}^k$ is differentiable in $x$ and we have:

```{math}
\partial (F \circ G) = \partial F \circ G \cdot \partial G
```
or, written with arguments: 

```{math}
\partial (F \circ G)(x) = \partial F(G(x)) \cdot \partial G(x)
```

You have to multiply the transpose of DG(F) and DF; DG(F) and DF cannot multiplied.
The case $p = 1$:

$$
D(g\circ F)(h)=\partial g\mathsf{T}\dot{F}\mathsf{T}h\text{               }(1\times 1)\mathsf{T}
$$

So, for instance:

$$
\partial _t(g(\text{tx}))=\partial g\mathsf{T}x\text{              }
$$

or, with an $n\times m$-Matrix $A$:

$$
\partial _t(g(t A))=\partial g\mathsf{T}A\text{     }
$$

Proof:

$$
G\circ F(x+h)=G(F(x)+ \text{DF}(x)(h)+o(h))

\text{$\quad $            }=G(F(x))+\text{DG}(F(x))( \text{DF}(x)(h)+o(h))+o(h)

\text{                      }=G\circ F(x)+(\text{DG}(F(x))\circ \text{DF}(x))(h)+o(h)
$$

So:

$$
G\circ F(x+h)-G\circ F(x)=(\text{DG}(F(x))\circ \text{DF}(x))(h)+o(h)
$$

which proves the assertion via uniqueness.

## Matrices, Tensors, Linear Mappings

Let $A$ be an ($n x m$)-Matrix, so $A^T$ is $(m x n)$. $A$ defines a linear mapping $A$$:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$by 

$$
A(x) = A\mathsf{T}x = \left(
\begin{array}{c}
 . 
 \sum _{j=1}^n a_{\text{ij}}x_j 
 . 
\end{array}
\right) {}_{i=1,\text{..},m}
$$

Likewise,

$$
y(A) = y\mathsf{T}A = \left(
\begin{array}{c}
 . 
 \sum _{i=1}^m y_ia_{\text{ij}} 
 . 
\end{array}
\right) {}_{j=1,\text{..},n}
$$

So, every vector and every matrix can also be considered a linear mapping defined as above. Physicists use an alternative notation:

$$
\langle A|x\rangle  = A\mathsf{T}x =A(x)

\langle y|A\rangle  = y\mathsf{T}A =y(A)

\langle B|A|x\rangle =\langle B|\langle A|x\rangle \rangle =B\mathsf{T} A\mathsf{T}x = (A B)\mathsf{T}x=B(A(x))
$$

What is right of the bar is the argument, what is left of the bar is the function. No need to care about transpositions.

Let $B$ be an ($m x p$)-Matrix, so $B^T$ is $(p x m)$.$B$ defines a linear mapping $B$$:\mathbb{R}^m\text{-$>$ \mathbb{R}^p$by the
same procedure. Then the linear mapping $B\circ A$$:\mathbb{R}^n\text{-$>$ \mathbb{R}^p$is defined by

$$
(B\circ A)(x) = B(A(x)) =B\mathsf{T} A\mathsf{T}x =(A B)\mathsf{T}x=\left(
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
(b\circ A)(x)= b\mathsf{T} A\mathsf{T}x =(A b)\mathsf{T}x= \sum _{i=1}^m \sum _{j=1}^n b_ia_{\text{ij}}x_j
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

## Vector Calculus in $\mathbb{R^n$

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be a function. A linear mapping $\text{DF}(x):\mathbb{R}^n\text{-$>$ \mathbb{R}^m$ is the derivative
of $F$ in $x$, iff

$$
F(x+h)-F(x)=\text{DF}(x)(h)+o(h)=\text{DF}(x)\mathsf{T}h+o(h)
$$

$\text{DF}(x)$ is also called the Jacobian of $F$ in $x$. 

### Definition 3 (Directional Derivatives) 

Let $x,h \in \mathbb{R}^n$,  $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be differentiable in $x$and defined in an open environment of $x$.
The directional derivative of $F$ with respect to $h$ is defined as:

$$
\partial _yF(x)(h)=lim_{\epsilon \to 0}\frac{1}{h}(F(x+\epsilon  h)-F(x))\in \mathbb{R}^m
$$

$$
=\frac{d}{d\epsilon }F(x+\epsilon  h)|_{\epsilon =0}
$$

$$
=\partial F(x)\mathsf{T}h
$$

The first equation is the definition of the directional derivative, the second definition of the derivative in one dimension, and the third follows
from the chain rule. If $b_j$ is the j-th basis vector, then

$$
\partial _{b_j}F(x)=\partial _jF(x)
$$

### Theorem 2 (Chain Rule)

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be differentiable in x and $G:\mathbb{R}^m\text{-$>$ \mathbb{R}^n$differentiable in F(x). 
Then $G\circ F:U\text{-$>$ W$is differentiable in $x$ and we have:

$$
D(G\circ F)(x)= \text{DG}(F(x))\circ \text{DF}(x)
$$

or, omitting the argument:

$$
D(G\circ F)= \text{DG}(F)\circ \text{DF}\text{  }
$$

Note that:

$$
(\text{DG}(F)\circ \text{DF} )(h)=\text{DG}(F)(\text{DF} (h))=\text{DG}(F)\mathsf{T}\cdot \text{DF}\mathsf{T}h
$$

You have to multiply the transpose of DG(F) and DF; DG(F) and DF cannot multiplied.
The case $p = 1$:

$$
D(g\circ F)(h)=\partial g\mathsf{T}\dot{F}\mathsf{T}h\text{               }(1\times 1)\mathsf{T}
$$

So, for instance:

$$
\partial _t(g(\text{tx}))=\partial g\mathsf{T}x\text{              }
$$

or, with an $n\times m$-Matrix $A$:

$$
\partial _t(g(t A))=\partial g\mathsf{T}A\text{     }
$$

Proof:

$$
G\circ F(x+h)=G(F(x)+ \text{DF}(x)(h)+o(h))

\text{$\quad $            }=G(F(x))+\text{DG}(F(x))( \text{DF}(x)(h)+o(h))+o(h)

\text{                      }=G\circ F(x)+(\text{DG}(F(x))\circ \text{DF}(x))(h)+o(h)
$$

So:

$$
G\circ F(x+h)-G\circ F(x)=(\text{DG}(F(x))\circ \text{DF}(x))(h)+o(h)
$$

which proves the assertion via uniqueness.

### Definition 2

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be a function. The partial derivative of $F_i$ with respect to $x_j$ is defined as:

$$
\partial _jF_i\left(x_1,\text{..},x_j,\text{..}x_n\right)=lim_{h\text{-$>$0}\frac{1}{h}\left(F_i\left(x_1,\text{..},x_j+h,\text{..}x_1\right)-F_i\left(x_1,\text{..},x_j,\text{..}x_n\right)\right)
$$

Let $\left(j_1, j_2,\text{..}, j_q\right)$ be a sequence of indices. The partial derivative of $F_i$ with respect to $x_{j_1},x_{j_2},\text{..},
x_{j_q$ is recursively defined as:

$$
\partial _{j_1}\partial _{j_2}\text{..}\partial _{j_q}F_i\left(x_1,.,x_j,.x_n\right)=lim_{h\text{-$>$0}\frac{1}{h}\left(\partial _{j_2}\text{..}\partial
_{j_q}F_i\left(x_1,.,x_{j_1}+h,.,x_n\right)-\partial _{j_2}\text{..}\partial _{j_q}F_i\left(x_1,.,x_{j_1},.,x_n\right)\right)
$$

### Theorem 3 (Jacobian and Partial Derivatives)

a) If $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$ is differentiable in $x$, then

$$
\text{DF}(x)=\partial \unicode{f3da}F(x)\text{    }(n\times m)
$$

which is the same as (omitting the argument $x$)

$$
\text{DF}_{\text{ji}} =\partial _jF_i (j=1,\text{..},n;i=1,\text{..},m)
$$

So:

$$
F(x+h)-F(x)=\partial \unicode{f3da}F(x)\mathsf{T}h+o(h)
$$

b) If all $\partial _jF_i$ are continuous in an open environment $U$ of $x$, then $F$ is differentiable in $U$, and (a) holds for all $y\in
U$.

### Theorem 4 (Partial derivatives are interchangeable)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R}^1$be a function. If $\partial _i\partial _jf$ and $\partial _j\partial _if$ are continuously differentiable
in an open environment of x, then

$$
\partial _i\partial _jf(x)=\partial _j\partial _if(x)
$$

So, if all $\partial _i\partial _jf$ are continuously differentiable in an open environment of x, then Theorem 3 applies and we have:

$$
\partial ^{\unicode{f3da}2}=\left(\partial ^{\unicode{f3da}2}\right)\mathsf{T}
$$

which is the same as

$$
\partial _i\partial _jf(x)=\partial _j\partial _if(x)\text{  }(i,j=1,\text{..},n)
$$

More generally, multiple derivative, such as

$$
\partial _{j_1}\partial _{j_2}\text{..}\partial _{j_q}f(x)
$$

do not depend on the order of the indices, or, equivalently, the tensor of partial derivatives is fully symmetric.

### Differential Operators

$$
f:\mathbb{R}^n\text{-$>$ \mathbb{R}

F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m
$$

$$
\partial = \left(
\begin{array}{c}
 \partial _1 
 . 
 . 
 \partial _n 
\end{array}
\right) =\nabla , \partial f=\partial ^{\unicode{f3da}1}f=\nabla f=\text{grad} f\text{    }(\text{gradient})

\partial ^{\unicode{f3da}2}= \left(
\begin{array}{cccc}
 \partial _1\partial _1 & . & . & \partial _1\partial _n 
 . &   &   & . 
 . &   &   & . 
 \partial _n\partial _1 & . & . & \partial _n\partial _n 
\end{array}
\right)=H, \partial ^{\unicode{f3da}2}f=\text{Hf}\text{       }(\text{Hessian})

\partial ^{\unicode{f3da}q}= \left(
\begin{array}{ccc}
 . & . & . 
 . & \partial _{j_1}\partial _{j_2}\text{..} \partial _{j_q} & .  
 . & . & . 
\end{array}
\right)_{j_1,\text{..},j_q=1,\text{..},n }\text{  }(\text{tensor} \text{of} \text{partial} \text{derivatives} \text{of} \text{rank} q)
$$

$$
\text{DF}=\partial \unicode{f3da}F = \left(
\begin{array}{cccc}
 \partial _1F_1 & . & . & \partial _1F_m 
 . &   &   & . 
 . &   &   & . 
 \partial _nF_1 & . & . & \partial _nF_m 
\end{array}
\right)=\text{JF}\text{                       }(\text{Jacobian})
$$

There is the dot notation for $n=1$:  

$$
\partial \unicode{f3da}F=\left(
\begin{array}{cccc}
 \partial F_1 & . & . & \partial F_m 
\end{array}
\right)=\dot{F}
$$

$$
D^2F=\partial ^{\unicode{f3da}2}\unicode{f3da}F =\left(
\begin{array}{ccc}
 . & . & . 
 . &  \partial _k\partial _jF_i & . 
 . &  . & . 
\end{array}
\right)_{j=1,\text{..}nk=1,\text{..}ni=1,\text{..},m}=\left(
\begin{array}{cccc}
 \partial _1\text{DF} & . & . & \partial _n\text{DF} 
\end{array}
\right)\text{    }(\text{tensor} \text{of} \text{partial} \text{derivatives} \text{of} \text{rank} 2)

\partial ^{\unicode{f3da}q}\unicode{f3da}F= \left(
\begin{array}{ccc}
 . & . & . 
 . & \partial _{j_1}\partial _{j_2}\text{..} \partial _{j_qF_i} & .  
 . & . & . 
\end{array}
\right)_{j_1,\text{..},j_q=1,\text{..},n i=1,\text{..}m}
$$

The terms $\partial ,\partial ^{\unicode{f3da}q$ and their aliases ($\nabla $, grad, H, D, J) are operators that map a scalar- or vector-valued
function ($f$ or $F$) to a  tensor-valued function, such as $\partial f$.

Let $F:\mathbb{R}^n\times \mathbb{R}^m\text{-$>$ \mathbb{R}^p$be a function of two vectors. Then we write, assuming that the arguments are denoted
by $x$ and $y$:

$$
\partial _x=\left(
\begin{array}{c}
 \partial _1 
 . 
 . 
 \partial _n 
\end{array}
\right), D_xF(x,y)=\partial _x\unicode{f3da}F(x,y)=\left(
\begin{array}{cccc}
 \partial _1F_1 & . & . & \partial _1F_p 
 . &   &   & . 
 . &   &   & . 
 \partial _nF_1 & . & . & \partial _nF_p 
\end{array}
\right)

\partial _y=\left(
\begin{array}{c}
 \partial _{n+1} 
 . 
 . 
 \partial _{n+m} 
\end{array}
\right),D_yF(x,y)=\partial _y\unicode{f3da}F(x,y)=\left(
\begin{array}{cccc}
 \partial _{n+1}F_1 & . & . & \partial _{n+1}F_p 
 . &   &   & . 
 . &   &   & . 
 \partial _{n+m}F_1 & . & . & \partial _{n+m}F_p 
\end{array}
\right)
$$

$>>>$ We assume that the subscript somehow identifies the argument in question. So, writing $\left.\partial _{x_j}F(x,y\right)$ or $\left.\partial
_{y_k}F(x,y\right)$ can be useful and unambiguous. In physics, we often encounter arguments like L(x, $\dot{x$), to indicate that the second
argument is supposed to the velocity. This leads to expressions like $\partial _{\dot{x}}L\left(x,\dot{x}\right)$. In this case, $\dot{x}\text{
 $is just the name of an argument, and it happens to have a dot at the top. Referencing arguments by name can be ambiguous. Take the functions
$f(x, y)$, $g(x, y)$, $h(x, y)$ and differentiate $f(g(x,y), h(x,y))$. 

$$
A(x,y)=\left(
\begin{array}{c}
 g(x,y) 
 h(x,y) 
\end{array}
\right),\text{DA}=\partial \unicode{f3da}A=\left(
\begin{array}{cc}
 \partial _xg & \partial _xh 
 \partial _yg & \partial _yh 
\end{array}
\right)
$$

$$
f(g(x,y),h(x,y))=(f\circ A)(x,y)
$$

The chain rule gives:

$$
D(f\circ A)=\text{DA}\cdot \text{Df}=\left(
\begin{array}{cc}
 \partial _xg & \partial _xh 
 \partial _yg & \partial _yh 
\end{array}
\right)\left(
\begin{array}{c}
 \partial _xf 
 \partial _yf 
\end{array}
\right)=\left(
\begin{array}{c}
 \partial _xf\cdot \partial _xg+\partial _yf\cdot \partial _xh 
 \partial _xf\cdot \partial _yg+\partial _yf\cdot \partial _yh 
\end{array}
\right)
$$

Ambiguities are eliminated by parenthesis. Identifying the variables by indices works as well:

$$
D(f\circ A)=\left(
\begin{array}{c}
 \partial _1f\cdot \partial _1g+\partial _2f\cdot \partial _1h 
 \partial _1f\cdot \partial _2g+\partial _2f\cdot \partial _2h 
\end{array}
\right)
$$

$$
F:\mathbb{R}^3\text{-$>$ \mathbb{R}^3 f:\mathbb{R}^n\text{-$>$ \mathbb{R}\quad
$$

$$
\partial ^2 =\sum _{i=1}^n \partial _i{}^2\text{   }=\nabla \cdot \nabla  = \nabla ^2\text{                    }(\text{Laplace})
$$

$$
\partial \cdot F = \sum _{j=1}^n \partial _jF_j= \text{div}(F)\text{                    }(\text{divergence})
$$

$$
(\partial \cdot )^2F =\partial \cdot \partial \cdot F =\sum _{k=1}^n \sum _{j=1}^n \partial _k\partial _jF_j= \text{div}^2(F)\text{      }\left(\text{divergence}^2\right)
$$

$$
\partial \times F = \left(
\begin{array}{c}
 \partial _2F_3-\partial _3F_2 
 \partial _3F_1-\partial _1F_3 
 \partial _1F_2-\partial _1F_2 
\end{array}
\right) = \text{curl}(F)
$$

$$
\partial ^2F = \left(
\begin{array}{c}
 \partial ^2F_1 
 \partial ^2F_2 
 \partial ^2F_3 
\end{array}
\right)
$$

### Some Formulae

$$
F,G:\mathbb{R}^3\text{-$>$ \mathbb{R}^3 

f,g:\mathbb{R}^n\text{-$>$ \mathbb{R}\quad
$$

div(curl) = 0

$$
\partial \cdot (\partial \times F)=0
$$

curl(gradient) = 0

$$
\partial \times (\partial f)=0
$$

div(product)

$$
\partial \cdot (F\cdot g)=(\partial F)\cdot g+F\cdot \partial g
$$

$$
\partial (F\cdot G)=(F\cdot \partial )G+(G\cdot \partial )F+F\times (\partial \times G)+G\times (\partial \times F)
$$

Laplace = grad(div) - curl(curl)

$$
\partial ^2F =\partial (\partial \cdot F)-\partial \times (\partial \times F)
$$

div(cross product) = G $\cdot $ curl(F) - F $\cdot $ curl(G)

$$
\partial \cdot (F\times G)=G\cdot (\partial \times F)-F\cdot (\partial \times G)
$$

### Notation 4 (1+3 Dimensions) { 1}

$$
\partial ^{\mu } =\left(
\begin{array}{c}
 \partial _0 
 -\partial _1 
 -\partial _2 
 -\partial _3 
\end{array}
\right)

\partial _{\mu } =\left(
\begin{array}{c}
 \partial _0 
 \partial _1 
 \partial _2 
 \partial _3 
\end{array}
\right)
$$

$$
\square =\partial ^2=\partial _{\mu }\partial ^{\mu } = \left(\partial _0\right){}^2 -\left(\partial _1\right){}^2-\left(\partial _2\right){}^2-\left(\partial
_3\right){}^2\text{    }(d'\text{Alembert})
$$

### Definition 4 (Stationary Points) 1

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R$be a function, differentiable in $x$. The point x is a stationary point of f if

$$
\partial f(x)=0
$$

### Theorem 3 (Local Extrema)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R$be a function, differentiable in $x$. If f has a local minimum or maximum in $x$, then $x$ is a
stationary point of $f$. 

Proof (for minimum only): Let h$\in $$\mathbb{R}^n$ be a small vector. Then:

$$
f(x)\leq f(x+h)=f(x)+\partial f(x)\mathsf{T}h+o(h)\text{   }(\text{works} \text{for} h \text{and} \text{-h})

0\leq \partial f(x)\mathsf{T}h+o(\| h\| )

0\leq \frac{\partial f(x)\mathsf{T}h}{\| h\| }+\frac{o(\| h\| )}{\| h\| }

0\leq -\frac{\partial f(x)\mathsf{T}h}{\| h\| }+\frac{o(\| h\| )}{\| h\| }
$$

So, for small positive $\epsilon$ we get:

$$
\frac{\partial f(x)\mathsf{T}h}{\| h\| }-\epsilon \leq 0\leq \frac{\partial f(x)\mathsf{T}h}{\| h\| }+\epsilon
$$

$$
-\epsilon \leq -\frac{\partial f(x)\mathsf{T}h}{\| h\| }\leq +\epsilon
$$

which proves the statement.

### Theorem 4 (Derivative of the Inverse Function)

a) Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$be differentiable in x, and let $F^{-1}:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$be differentiable
in $F(x)$. Then:

$$
\left(D\left(F^{-1}\right)\right)(F(x))=(\text{DF}(x))^{-1}
$$

which is the same as (setting $y=F(x)$)

$$
\left(D\left(F^{-1}\right)\right)(y)=\left(\text{DF}\left(F^{-1}(y)\right) \right)^{-1}
$$

which is the same as (omitting $x$)

$$
(\text{DF})^{-1}=D\left(F^{-1}\right)\circ F
$$

Proof: Immediate from the chain rule:

$$
I=D\left(F\circ F^{-1}\right)(y) =\text{DF}\left(F^{-1}(y)\right)\circ \left(D\left(F^{-1}\right)\right)(y)
$$

b) Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$be continuously differentiable in an open environment of $x$, and let $\text{DF}(x)$ be invertible.

Then $F^{-1$ exists and is differentiable in an open environment $U$ of $x$. So, (a) applies on $U$.

Proof: Hard stuff.

### Theorem 5 (Derivative of Implicit Functions)

Let $F:\mathbb{R}^{n\times m}\text{-$>$ \mathbb{R}^m$be continuously differentiable in an open environment of$(a,b)$, and let $F(a,b) = 0$.
$F$is a function of two vectors $x$ and $y$. The partial derivatives $\partial _xF$, $\partial _yF$ are defined as above (see Notation
XX). Let $\partial _yF(a,b)$ be invertible.Then there is a function $G:A\text{-$>$\mathbb{R}^m$ (with $A\subset \mathbb{R}^n$ open and $a\in
A$) such that:

$$
F(x, G(x))=0
$$

and the derivative of $G$ is given by

$$
\text{DG}=-\left(\partial _yF\right){}^{-1}\circ \partial _xF
$$

Proof: Let

$$
H(x,y)\text{:=}(x,F(x,y)))

H(a, F(a,b))=(a,0)
$$

H is invertible. The inverse $H^{-1$is defined in an open environment $A\times B$ of $(a,0)$, with $A\subset \mathbb{R}^n$, $B\subset \mathbb{R}^m$),
and there is a function $K:A\times B\text{-$>$ \mathbb{R}^m$such that

$$
H^{-1}(x,y)=(x,K(x,y))
$$

on $A\times B$. So, for $x\in A$ and $y=0$ we get:

$$
(x,0)=H\left(H^{-1}(x,0)\right)=H(x,K(x,0))=(x,F(x,K(x,0)))

\text{           }0=F(x, K(x,0))
$$

Setting $G(x) = K(x,0)$ completes the proof. $K$ is defined on $A\times B$, $G$ is defined on $A$.
The derivative of $G$ is immediate from the chain rule.

### Theorem 7 (Taylor in n dimensions)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R}^1$and assume $\partial ^{\unicode{f3da}(k+1)}f$ continuous in an open environment J of $x\in \mathbb{R}^n$.
Let $h\in \mathbb{R}^n$such that $x+h\in J$. Then there exists a $\xi \in (x,x+h)$ such that:

$$
f(x+h)=\sum _{j=0}^k \frac{1}{k!}\left\langle \partial ^{\unicode{f3da}j}f(x), h^{\unicode{f3da}j}\right\rangle +\frac{1}{(k+1)!}\left\langle \partial
^{\unicode{f3da}(k+1)}f(\xi ), h^{\unicode{f3da}(k+1)}\right\rangle 

\text{$\quad $       }=\sum _{j=0}^k \frac{1}{k!}\left\langle \partial ^{\unicode{f3da}j}f(x), h^{\unicode{f3da}j}\right\rangle +o\left(\| h\| ^k\right)
$$

Proof: It holds that, for j$\leq $k:

$$
\frac{d^j}{dt^j}f(x+\text{th})=\left\langle \partial ^{\unicode{f3da}j}f(x+\text{th}), h^{\unicode{f3da}j}\right\rangle
$$

because:

$$
\frac{d}{dt}f(x+\text{th})=\sum _{j=1}^n \partial _jf(x+\text{th})h_j=\partial f(x+\text{th})\mathsf{T}h=\langle \partial f(x+\text{th}),h\rangle

\frac{d^2}{dt^2}f(x+\text{th})=\sum _{i=1}^n \sum _{j=1}^n \partial _i\partial _jf(x+\text{th})h_ih_j=\left\langle \partial ^{\unicode{f3da}2}f(x+\text{th}),
h^{\unicode{f3da}2}\right\rangle
$$

and so on. Taylor in one dimension tells us, for $g(t) = f(x+\text{th})$:

$$
g(1)=\sum _{j=0}^k \frac{g^{(j)}(0)}{j!}+\frac{g^{(k+1)}(\xi )}{(k+1)!}
$$

for some $\xi \in (0,1)$. Rewriting this equation in terms of $f$gives the statement.



## Calculus of Variations

### Definition 4 (Functional Derivatives)

Let H be a Hilbert space  with an inner product of $\phi $, $\psi \in $H denoted as $\langle \phi |\psi \rangle $. Often $H=L^2(\Omega )$ for
some region $\Omega \subset \mathbb{R}^n$ and:

$$
\langle \phi |\psi \rangle =\int _{\Omega }\phi (x)\psi (x)dx
$$

Let $\phi $, h$\in $H, and $F:H\text{-$>$\mathbb{R$ be a functional defined on an open environment of $\phi $. The directional derivative of
$F$ with respect to $h$ is defined as:

$$
\text{$\delta $F}(\phi )(h)=\frac{d}{d\epsilon }F(\phi +\epsilon  h)|_{\epsilon =0}
$$

If $\text{$\delta $F}(\phi )(h)$ can be expressed as an inner product:

$$
\text{$\delta $F}(\phi )(h)=\langle g(\phi )|h\rangle
$$

then we write

$$
\text{$\delta $F}(\phi )=g(\phi )
$$

or

$$
\text{$\delta $F}=g
$$

### Definition 5 (Dirac Function)

The Dirac function $\delta $:

$$
\delta (x)= \begin{cases}
 \infty (x=0) 
 0 (x\neq 0) 
\end{cases}
$$

$$
\left\langle \left.\delta _y\right|\phi \right\rangle =\int _{\Omega } \delta (y-x)\phi (x)dx=\phi (y)
$$

### Easy Examples

$$
F(\phi )=\left\langle \left.\delta _y\right|\phi \right\rangle =\phi (y)

\text{$\delta $F}(\phi )(h)=\left\langle \left.\delta _y\right|h\right\rangle 

\text{$\quad $          }=\frac{d}{d\epsilon }\int _{\Omega }(\phi (x)+\epsilon  h(x))\delta _y(x)dx|_{\epsilon =0}=\int _{\Omega } h(x)\delta _y(x)dx=h(y)\text{
                             }
$$

$$
F(\phi )=\langle g|\phi \rangle =\int _{\Omega }\phi (x)g(x)dx

\text{$\delta $F}(\phi )(h)=\langle g|h\rangle 

\text{$\quad $          }=\frac{d}{d\epsilon }\int _{\Omega }(\phi (x)+\epsilon  h(x))g(x)dx=\int _{\Omega } h(x)g(x)dx

\text{                              }
$$

$$
F(\phi )=\int _{\Omega }\phi ^n(x)dx

\text{$\delta $F}(\phi )=n \phi ^{n-1}

\text{$\delta $F}(\phi )(h)=\left\langle \left.n \phi ^{n-1}\right|h\right\rangle 

\text{                   }=\int _{\Omega } n \phi (x)^{n-1}h(x)dx\text{                           }

\text{                   }=\frac{d}{d\epsilon }\int _{\Omega }(\phi (x)+\epsilon  h(x))^ndx=\int _{\Omega } n(\phi (x)+\epsilon  h(x))^{n-1}h(x)dx|_{\epsilon
=0}\text{                            }
$$

$$
F(\phi )=c\int _{\Omega }\phi ^{\frac{5}{3}}(x)dx

\text{$\delta $F}(\phi )=c\frac{5}{3} \phi ^{\frac{2}{3}}
$$

### Product Rule

$$
A(\phi )=F(\phi )G(\phi )

\text{$\delta $A}=\text{$\delta $F} G+F \text{$\delta $G}
$$

$$
\text{$\delta $A}(\phi )=\frac{d}{d\epsilon }(F(\phi +\text{$\epsilon $h})G(\phi +\text{$\epsilon $h}))|_{\epsilon =0}=\text{$\delta $F}(\phi )G(\phi
)+F(\phi )\text{$\delta $G}(\phi )
$$

### Chain Rule

$$
A(\phi )=g(F(\phi ))

\text{$\delta $A}=\left(\frac{d}{dx}g\circ F\right) \text{$\delta $F}
$$

$$
\text{$\delta $A}(\phi )=\frac{d}{d\epsilon }g(F(\phi +\text{$\epsilon $h}))|_{\epsilon =0}
$$

$$
=\frac{d}{dx}g(F(\phi +\text{$\epsilon $h}))\frac{d}{d\epsilon }F(\phi +\text{$\epsilon $h})|_{\epsilon =0}
$$

$$
=\frac{d}{dx}g(F(\phi ))\text{$\delta $F}(\phi )
$$

$$
\frac{d}{d\epsilon }A(\phi +\text{$\epsilon $h})|_{\epsilon =0}=\partial _{\phi }L h+\partial _{\text{D$\phi $L \cdot \text{Dh}+\partial _{D^2\phi
}L \cdot D^2h
$$

The first two terms are known from V3. It is the last (third) term we have to compute. We assume initially $\phi $ and $h$ to be scalars as in
V2.

