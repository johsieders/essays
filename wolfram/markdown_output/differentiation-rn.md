8.05.2025

## Vector Calculus on $\mathbb{R^n$

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be a function. A linear mapping $\text{DF}[x]:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$ is the derivative
of $F$ in $x$, iff

$$
F[x+h]-F[x]=\text{DF}[x][h]+o[h]=\text{DF}[x]\mathsf{T}h+o[h]
$$

$\text{DF}[x]$ is also called the Jacobian of $F$ in $x$. 

### Definition 1 (Directional Derivatives) 

Let $x,h \in \mathbb{R}^n$,  $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be differentiable in $x$and defined in an open environment of $x$.
The directional derivative of $F$ with respect to $h$ is defined as:

$$
\partial _yF[x][h]=lim_{\epsilon \to 0}\frac{1}{h}(F[x+\epsilon  h]-F[x])\in \mathbb{R}^m
$$

$$
=\frac{d}{d\epsilon }F[x+\epsilon  h]|_{\epsilon =0}
$$

$$
=\partial F[x]\mathsf{T}h
$$

The first equation is the definition of the directional derivative, the second definition of the derivative in one dimension, and the third follows
from the chain rule. If $b_j$ is the j-th basis vector, then

$$
\partial _{b_j}F[x]=\partial _jF[x]
$$

### Theorem 1 (Chain Rule)

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be differentiable in x and $G:\mathbb{R}^m\text{-$>$ \mathbb{R}^p$differentiable in F[x]. 
Then $G\circ F:U\text{-$>$ W$is differentiable in $x$ and we have:

$$
D(G\circ F)[x]= \text{DG}[F[x]]\circ \text{DF}[x]
$$

or, omitting the arguments:

$$
D(G\circ F)= \text{DG}[F]\circ \text{DF}\text{  }
$$

Note that:

$$
(\text{DG}[F]\circ \text{DF} )[h]=\text{DG}[F][\text{DF} [h]]=\text{DG}[F]\mathsf{T}\cdot \text{DF}\mathsf{T}h
$$

You have to multiply the transpose of DG[F] and DF; DG[F] and DF cannot multiplied.

Proof:

$$
G\circ F[x+h]=G[F[x]+ \text{DF}[x][h]+o[h]]

\text{$\quad $            }=G[F[x]]+\text{DG}[F[x]][ \text{DF}[x][h]+o[h]]+o[h]

\text{                      }=G\circ F[x]+(\text{DG}[F[x]]\circ \text{DF}[x])[h]+o[h]
$$

So:

$$
G\circ F[x+h]-G\circ F[x]=(\text{DG}[F[x]]\circ \text{DF}[x])[h]+o[h]
$$

which proves the assertion via uniqueness.

#### Some examples

The case $p = 1$:

$$
D(g\circ F)[h]=\partial g\mathsf{T}\dot{F}\mathsf{T}h\text{               }(1\times 1)\mathsf{T}
$$

So, for instance:

$$
\partial _t(g[\text{tx}])=\partial g\mathsf{T}x\text{              }
$$

or, with an $n\times m$-Matrix $A$:

$$
\partial _t(g[t A])=\partial g\mathsf{T}A\text{     }
$$

The case $n = 1$ (with $\phi$ instead of $F$)

$$
D(G\circ \phi )[h]=\text{DG}[\phi ]\mathsf{T}\dot{\phi }\mathsf{T}h\text{               }(p\times 1)
$$

Note that:

$$
\text{DG}[\phi ]= \left(
\begin{array}{ccc}
 \cdot  & ,\partial G_j. & \cdot  
\end{array}
\right)_{j=1,\text{..},p}\text{         }
$$

$$
\dot{\phi }=\left(
\begin{array}{ccc}
 \cdot  & ,\dot{\phi }_i. & \cdot  
\end{array}
\right)_{i=1,\text{..},m}
$$

### Definition 2

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be a function. The partial derivative of $F_i$ with respect to $x_j$ is defined as:

$$
\partial _jF_i\left[x_1,\text{..},x_j,\text{..}x_n\right]=lim_{h\text{-$>$0}\frac{1}{h}\left(F_i\left[x_1,\text{..},x_j+h,\text{..}x_1\right]-F_i\left[x_1,\text{..},x_j,\text{..}x_n\right]\right)
$$

Let $\left(j_1, j_2,\text{..}, j_q\right)$ be a sequence of indices. The partial derivative of $F_i$ with respect to $x_{j_1},x_{j_2},\text{..},
x_{j_q$ is recursively defined as:

$$
\partial _{j_1}\partial _{j_2}\text{..}\partial _{j_q}F_i\left[x_1,.,x_j,.x_n\right]=lim_{h\text{-$>$0}\frac{1}{h}\left(\partial _{j_2}\text{..}\partial
_{j_q}F_i\left[x_1,.,x_{j_1}+h,.,x_n\right]-\partial _{j_2}\text{..}\partial _{j_q}F_i\left[x_1,.,x_{j_1},.,x_n\right]\right)
$$

### Theorem 2 (Jacobian and Partial Derivatives)

a) If $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$ is differentiable in $x$, then

$$
\text{DF}[x]=\partial \unicode{f3da}F[x]\text{    }(n\times m)
$$

which is the same as (omitting the argument $x$)

$$
\text{DF}_{\text{ji}} =\partial _jF_i (j=1,\text{..},n;i=1,\text{..},m)
$$

So:

$$
F[x+h]-F[x]=\partial \unicode{f3da}F[x]\mathsf{T}h+o[h]
$$

b) If all $\partial _jF_i$ are continuous in an open environment $U$ of $x$, then $F$ is differentiable in $U$, and (a) holds for all $y\in
U$.

### Theorem 3 (Partial Derivatives are Interchangeable)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R}^1$be a function. If $\partial _i\partial _jf$ and $\partial _j\partial _if$ are continuously differentiable
in an open environment of x, then

$$
\partial _i\partial _jf[x]=\partial _j\partial _if[x]
$$

So, if all $\partial _i\partial _jf$ are continuously differentiable in an open environment of x, then Theorem 3 applies and we have:

$$
\partial ^{\unicode{f3da}2}=\left(\partial ^{\unicode{f3da}2}\right)\mathsf{T}
$$

which is the same as

$$
\partial _i\partial _jf[x]=\partial _j\partial _if[x]\text{  }(i,j=1,\text{..},n)
$$

More generally, multiple derivative, such as

$$
\partial _{j_1}\partial _{j_2}\text{..}\partial _{j_q}f[x]
$$

do not depend on the order of the indices, or, equivalently, the tensor of partial derivatives is fully symmetric.

### Differential Operators

todo: here comes some text

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
\right), D_xF[x,y]=\partial _x\unicode{f3da}F[x,y]=\left(
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
\right),D_yF[x,y]=\partial _y\unicode{f3da}F[x,y]=\left(
\begin{array}{cccc}
 \partial _{n+1}F_1 & . & . & \partial _{n+1}F_p 
 . &   &   & . 
 . &   &   & . 
 \partial _{n+m}F_1 & . & . & \partial _{n+m}F_p 
\end{array}
\right)
$$

$>>>$ We assume that the subscript somehow identifies the argument in question. So, writing $\left.\partial _{x_j}F[x,y\right]$ or $\left.\partial
_{y_k}F[x,y\right]$ can be useful and unambiguous. In physics, we often encounter arguments like L[x, $\dot{x$], to indicate that the second
argument is supposed to the velocity. This leads to expressions like $\partial _{\dot{x}}L\left[x,\dot{x}\right]$. In this case, $\dot{x}\text{
 $is just the name of an argument, and it happens to have a dot at the top. Referencing arguments by name can be ambiguous. Take the functions
$f[x, y]$, $g[x, y]$, $h[x, y]$ and differentiate $f[g[x,y], h[x,y]]$. 

$$
A[x,y]=\left(
\begin{array}{c}
 g[x,y] 
 h[x,y] 
\end{array}
\right),\text{DA}=\partial \unicode{f3da}A=\left(
\begin{array}{cc}
 \partial _xg & \partial _xh 
 \partial _yg & \partial _yh 
\end{array}
\right)
$$

$$
f[g[x,y],h[x,y]]=(f\circ A)[x,y]
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
\partial \cdot F = \sum _{j=1}^n \partial _jF_j= \text{div}[F]\text{                    }(\text{divergence})
$$

$$
(\partial \cdot )^2F =\partial \cdot \partial \cdot F =\sum _{k=1}^n \sum _{j=1}^n \partial _k\partial _jF_j= \text{div}^2[F]\text{      }\left(\text{divergence}^2\right)
$$

$$
\partial \times F = \left(
\begin{array}{c}
 \partial _2F_3-\partial _3F_2 
 \partial _3F_1-\partial _1F_3 
 \partial _1F_2-\partial _1F_2 
\end{array}
\right) = \text{curl}[F]
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

### To Transpose or Not to Transpose?

One of the difficulties of differentiation in $\mathbb{R}^n$ is the question of transposing. Is the gradient a row vector or a column vector? The
problem is that we have to distinguish between a vector $x\in \mathbb{R}^n$ and its dual which I call $x^*$. The dual of $x$ is a mapping $y\unicode{f4a1}x^*[y]$
defined by $x^*\text{[y]=x$\mathsf{T$y$. So, in vector spaces of finite dimension, $x^*$ and $x\mathsf{T$ are more or less the same thing,
but the idea of a dual emphasizes the fact that $x$ is a vector while $x^*$ is a mapping. And in general vector spaces, there is no such thing
as a transpose, so you can't do without a dual. So, what is the gradient? It is, emphatically, a column vector. When we write something like

$$
f[x+h]=f[x]+(\partial f[x])\mathsf{T}[h]+o[h]
$$

we apply the dual of the gradient of $f$ at $x$ to the vector $h$. The following examples should make clear what that means. We look at the
following arbitrary functions.

$$
f:\mathbb{R}^n\text{-$>$ \mathbb{R} 

\phi :\mathbb{R}\text{-$>$ \mathbb{R}^m\quad 

F:\mathbb{R}^m\text{-$>$ \mathbb{R}^p 

G:\mathbb{R}^n\text{-$>$ \mathbb{R}^m
$$

$\partial f$ is a column vector, $\dot{x$is a row vector, $\text{DF$ is a $n\times p$-Matrix ($\partial F_j$ is column$j$). We cannot
apply $\partial f$ or DF, but only their duals, $\partial f\mathsf{T$ and $\text{DF}\mathsf{T$. Recall:

$$
\partial f=\left(
\begin{array}{c}
 \partial _1 
 . 
 \partial _n 
\end{array}
\right)f

\partial \phi =\left(
\begin{array}{ccc}
 \partial _1 & . & \partial _m 
\end{array}
\right)\phi 

\text{DF}=\left(
\begin{array}{ccc}
 \partial _1F_1 & . & \partial _1F_p 
 . & . & . 
 \partial _mF_1 & . & \partial _mF_p 
\end{array}
\right)=\left(
\begin{array}{ccc}
 \partial F_1 & . & \partial F_p 
\end{array}
\right)
$$

#### Abbreviations

$$
\partial f[x][h]=(\partial f[x])\mathsf{T}h=\partial f\mathsf{T}h

\partial \phi [t][s]=(\partial \phi [t])\mathsf{T}s=\partial \phi \mathsf{T}s

\text{DF}[x][h]=(\text{DF}[x])\mathsf{T}h=\text{DF}\mathsf{T}h
$$

#### Differentiating Linear Functions

$$
a[h]=a\mathsf{T}h

\partial a=a

\partial a\mathsf{T}h=a\mathsf{T}h
$$

$$
A[h]=A\mathsf{T}h

\text{DA}=A

\text{DA}\mathsf{T}h=A\mathsf{T}h
$$

#### The Chain Rule

$$
\partial (f [[\phi ]])\mathsf{T}=\partial f\mathsf{T}\cdot \dot{\phi }\mathsf{T}\text{   }(1\times 1)
$$

$$
\partial (F[\phi ])\mathsf{T}=\text{DF}\mathsf{T}\cdot \dot{\phi }\mathsf{T}\text{  }(p\times m)

D(F\circ G)\mathsf{T}=\text{DF}[G]\mathsf{T}\cdot \text{DG}\mathsf{T}\text{  }(p\times n)
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

### Notation 4 (1+3 Dimensions)

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

### Theorem 4 (Taylor in n Dimensions)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R}^1$and assume $\partial ^{\unicode{f3da}(k+1)}f$ continuous in an open environment of $x\in \mathbb{R}^n$.
Let $h\in \mathbb{R}^n$such that $x+h\in J$. Then there exists a $\xi \in [x,x+h]$ such that:

$$
f[x+h]=\sum _{j=0}^k \frac{1}{k!}\left\langle \partial ^{\unicode{f3da}j}f[x], h^{\unicode{f3da}j}\right\rangle +\frac{1}{(k+1)!}\left\langle \partial
^{\unicode{f3da}(k+1)}f[\xi ], h^{\unicode{f3da}(k+1)}\right\rangle 

\text{$\quad $       }=\sum _{j=0}^k \frac{1}{k!}\left\langle \partial ^{\unicode{f3da}j}f[x], h^{\unicode{f3da}j}\right\rangle +o\left[\| h\| ^k\right]
$$

Proof: It holds that, for j$\leq $k:

$$
\frac{d^j}{dt^j}f[x+\text{th}]=\left\langle \partial ^{\unicode{f3da}j}f[x+\text{th}], h^{\unicode{f3da}j}\right\rangle
$$

because:

$$
\frac{d}{dt}f[x+\text{th}]=\sum _{j=1}^n \partial _jf[x+\text{th}]h_j=\partial f[x+\text{th}]\mathsf{T}h=\langle \partial f[x+\text{th}],h\rangle

\frac{d^2}{dt^2}f[x+\text{th}]=\sum _{i=1}^n \sum _{j=1}^n \partial _i\partial _jf[x+\text{th}]h_ih_j=\left\langle \partial ^{\unicode{f3da}2}f[x+\text{th}],
h^{\unicode{f3da}2}\right\rangle
$$

and so on. Taylor in one dimension tells us, for $g[t] = f[x+\text{th}]$:

$$
g[1]=\sum _{j=0}^k \frac{g^{(j)}[0]}{j!}+\frac{g^{(k+1)}[\xi ]}{(k+1)!}
$$

for some $\xi \in [0,1]$. Rewriting this equation in terms of $f$gives the statement.

### Definition 3 (Stationary Points)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R$be a function, differentiable in $x$. The point x is a stationary point of f if

$$
\partial f[x]=0
$$

### Theorem 5 (Local Extrema)

Let $f:\mathbb{R}^n\text{-$>$ \mathbb{R$be a function, differentiable in $x$. If f has a local minimum or maximum in $x$, then $x$ is a
stationary point of $f$. 

Proof (for minimum only): Let h$\in $$\mathbb{R}^n$ be a small vector. Then:

$$
f[x]\leq f[x+h]=f[x]+\partial f[x]\mathsf{T}h+o[h]\text{   }(\text{works} \text{for} h \text{and} \text{-h})

0\leq \partial f[x]\mathsf{T}h+o[\| h\| ]

0\leq \frac{\partial f[x]\mathsf{T}h}{\| h\| }+\frac{o[\| h\| ]}{\| h\| }

0\leq -\frac{\partial f[x]\mathsf{T}h}{\| h\| }+\frac{o[\| h\| ]}{\| h\| }
$$

So, for small positive $\epsilon$ we get:

$$
\frac{\partial f[x]\mathsf{T}h}{\| h\| }-\epsilon \leq 0\leq \frac{\partial f[x]\mathsf{T}h}{\| h\| }+\epsilon
$$

$$
-\epsilon \leq -\frac{\partial f[x]\mathsf{T}h}{\| h\| }\leq +\epsilon
$$

which proves the statement.

### Theorem 6 (Derivative and Existence of the Inverse Function)

a) Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$be differentiable in x, and let $F^{-1}:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$be differentiable
in $F[x]$. Then:

$$
\left(D\left(F^{-1}\right)\right)[F[x]]=(\text{DF}[x])^{-1}
$$

which is the same as (setting $y=F[x]$)

$$
\left(D\left(F^{-1}\right)\right)[y]=\left(\text{DF}\left[F^{-1}[y]\right] \right)^{-1}
$$

which is the same as (omitting $x$)

$$
(\text{DF})^{-1}=D\left(F^{-1}\right)\circ F
$$

Proof: Immediate from the chain rule:

$$
I=D\left[F\circ F^{-1}\right][y] =\text{DF}\left[F^{-1}[y]\right]\circ \left(D\left(F^{-1}\right)\right)[y]
$$

b) Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$be continuously differentiable in an open environment of $x$, and let $\text{DF}[x]$ be invertible.

Then $F^{-1$ exists and is differentiable in an open environment $U$ of $x$. So, (a) applies on $U$.

Proof: Hard stuff.

### Theorem 7 (Derivative and Existence of Implicit Functions)

Let $F:\mathbb{R}^{n\times m}\text{-$>$ \mathbb{R}^m$be continuously differentiable in an open environment of$(a,b)$, with $a\in \mathbb{R}^n,b\in
\mathbb{R}^m$, and let $F[a,b] = 0$. $F$is a function of two vectors $x$ and $y$. The partial derivatives $\partial _xF$, $\partial _yF$
are defined as above (see Notation XX). Let $\partial _yF[a,b]$ be invertible.Then there is a function $G:A\text{-$>$\mathbb{R}^m$ (with $A\subset
\mathbb{R}^n$ open and $a\in A$) such that:

$$
F[x, G[x]]=0
$$

and the derivative of $G$ is given by

$$
\text{DG}=-\left(\partial _yF\right){}^{-1}\circ \partial _xF
$$

Proof: Let

$$
H[x,y]\text{:=}(x,F[x,y)])

H[a, F[a,b]]=(a,0)
$$

H is invertible. The inverse $H^{-1$is defined in an open environment $A\times B$ of $(a,0)$, with $A\subset \mathbb{R}^n$, $B\subset \mathbb{R}^m$),
and there is a function $K:A\times B\text{-$>$ \mathbb{R}^m$such that

$$
H^{-1}[x,y]=(x,K[x,y])
$$

on $A\times B$. So, for $x\in A$ and $y=0$ we get:

$$
(x,0)=H\left[H^{-1}[x,0]\right]=H[x,K[x,0]]=(x,F[x,K[x,0]])

\text{           }0=F[x, K[x,0]]
$$

Setting $G[x] = K[x,0]$ completes the proof. $K$ is defined on $A\times B$, $G$ is defined on $A$.
The derivative of $G$ is immediate from the chain rule.

### Theorem 8 (Tangent Planes)

Let $h:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be continuously differentiable, with $m<n$. Let $x^*\in \mathbb{R}^n$and $\text{Dh}\left[x^*\right]$have
full rank $m$ $\left(x^*\right.$ is called regular in this case). The surface S is defined by:

$$
S=\left\{\left.x\in \mathbb{R}^n\right|h[x]=0\right\}
$$

The tangent plane of $S$ at $x^*$ is defined by:

$$
T\left[x^*\right]=\left\{y\in \mathbb{R}^n|\exists \phi \in C^1\left[U[0],\mathbb{R}^m\right]:h[\phi [t]]=0,\phi [0]=x^* ,\dot{\phi }[0]=y \right\}
$$

That means: a vector $y$ is a tangent vector of $S$ in $x^*$ iff it is the tangent vector of a curve $\phi$ on $S$. This definition corresponds
to our intuitive understanding of a tangent plane, but it is unwieldy. The  tangent plane theorem provides an alternative, more manageable definition.
Here it is:

$\text{Dh}\left[x^*\right]$ is the normal of the tangent plane, or:

$$
T\left[x^*\right]=\left\{y\in \mathbb{R}^n|\text{Dh}\left[x^*\right]\mathsf{T}y=0\right\}
$$

Proof: (a) Let $y\in T\left[x^*\right]$, so $y = \dot{\phi }[0] \in  T\left[x^*\right]$, $\phi [0]=x^*$. For any $\epsilon >0$ we have:

$$
0=h[\phi [\epsilon ]]=h[\phi [0]]+\frac{d}{dt}h[\phi [0]]\epsilon +o[\epsilon ]=\text{Dh}\left[x^*\right]\mathsf{T}\dot{\phi }[0]\epsilon +o[\epsilon
]
$$

So:

$$
lim_{\epsilon \to 0} \text{Dh}\left[x^*\right]\mathsf{T}\dot{\phi }[0]+\frac{o[\epsilon ]}{\epsilon }=0
$$

thus:

$$
\text{Dh}\left[x^*\right]\mathsf{T}\dot{\phi }[0]= 0
$$

(b) Let $y$ be normal to $\text{Dh}\left[x^*\right]$. We construct a function $\phi $ that shows that $y\in T\left[x^*\right]$ by applying
the implicit functions theorem to:

$$
F[t,u]=h\left[x^*+t y+ \text{Dh}\left[x^*\right]u\right]
$$

We clearly have:

$$
F[0,0]=h\left[x^*\right]=0
$$

and: 

$$
\partial _uF[0,0]=\text{Dh}\left[x^*\right]\mathsf{T}\text{Dh}\left[x^*\right]
$$

This matrix is invertible ($A\mathsf{T}A$is invertible if $A$ has full rank). According to the implicit functions theorem, there exists a function
$u\in  C^1\left[U[0], \mathbb{R}^m\right]$ such that:

$$
F[t,u[t]]=h\left[x^*+t y+ \text{Dh}\left[x^*\right]u[t]\right]=0

F[0,u[0]]=F[0,0]=0
$$

so:

$$
u[0]=0
$$

because of (1). We define $\phi$by:

$$
\phi [t]=x^*+t y+ \text{Dh}\left[x^*\right]u[t]

\dot{\phi }[t]=y+ \text{Dh}\left[x^*\right]\dot{u}[t]

\dot{\phi }[0]=y+ \text{Dh}\left[x^*\right]\dot{u}[0]
$$

We have by definition

$$
h[\phi [t]]=0
$$

and:

$$
0=\frac{d}{dt}h[\phi [0]]=\text{DH}\left[x^*\right]y+\text{DH}\left[x^*\right]\mathsf{T}\text{DH}\left[x^*\right]\dot{u}[0]

=\text{DH}\left[x^*\right]\mathsf{T}\text{DH}\left[x^*\right]\dot{u}[0]
$$

which implies:

$$
\dot{u}[0]=0
$$

which implies:

$$
\dot{\phi }[0]=y
$$

### Theorem 9 (Lagrangian Multipliers)

Finding extrema essentially boils down to setting the first derivative to zero and to seeing what happens. But what about constraints? The idea is
to add an appropriate term to the target function and proceed as if nothing had happened. It sounds like magic, and it is. Let $h:\mathbb{R}^n\text{-$>$\mathbb{R}^m$and
$f:\mathbb{R}^n\text{-$>$\mathbb{R$be continuously differentiable, with $m<n$. We consider the problem to

$$
\max  f[x]

s.t. h[x]=0
$$

The function $f$is called the target function, $h$ the restraint function. We could as well minimize, just multiply the target by $-1$. Here
goes the theorem:

If x is a maximum of (2) and a regular point of h (i.e. $\partial h[x]$ has full rank), then

$$
\exists \lambda \in \mathbb{R}^m:\partial f[x]+\lambda \mathsf{T}\partial h[x]=0
$$

So, finding a maximum of problem (3) requires two steps: (a) Find solutions $x[\lambda ]$of equation (4). (b) Find solutions $\lambda ^*$ of
 

$$
h[x[\lambda ]]=0
$$

This gives you candidates x[$\lambda ^*$] for a solution of problem (5).The algorithm often works but not always: equation (6) can be unsolvable,
solutions of it can be nonregular, regular solutions need not be extrema of (7). Setting

$$
L[x,\lambda ]=f[x]+\lambda \mathsf{T}h[x]
$$

problem (8) can be concisely restated as

$$
\partial L=\left(
\begin{array}{c}
 \partial _x 
 \partial _{\lambda } 
\end{array}
\right)L=0
$$

Proof: Let x be a maximum of problem (9) and a regular point of $h$. We proceed in three steps: (a) Let $y\in \mathbb{R}^n$ and $\partial h[x]\mathsf{T}y=0$.
Then $\partial f[x]\mathsf{T}y=0$. Here is why:

$$
0=\frac{d}{dt}f[\phi [0]]=\partial f[x]\mathsf{T}\dot{\phi }[0]=\partial f[x]\mathsf{T}y
$$

The first equation holds because $f$ is a local extremum, the second is an application of the chain rule, and the third follows from the tangent
plane theorem that guarantees the existence of such a $\phi$. (b) Therefore, the linear problem

$$
\max  \partial f[x]\mathsf{T}y

s.t. \partial h[x]\mathsf{T}y=0
$$

is bounded. (c) Therefore, its dual problem

$$
\min  0

s.t. \partial h[x]\mathsf{T}\lambda =-\partial f[x]
$$

has a solution $\lambda $. 

Lagrangian multipliers are an essential element of optimization theory. Three deep results were necessary to understand them: The Implicit Functions
Theorem, the Tangent Plane Theorem, and the Duality Theorem of Linear Programming.

