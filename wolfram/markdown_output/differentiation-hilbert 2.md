17.04.2025

## Differentiation on Hilbert Spaces

#### Definition

$>>>$ Let $F:U\text{-$>$ V$. The derivative DF of F at x is defined as $\text{DF}[x]:U\text{-$>$ V$ is the derivative of $F$ in $x$, iff

$$
\text{DF}[x]= lim_{h\to 0}\frac{1}{\| h\| }(F[x+h]-F[x])
$$

$$
F[x+h]-F[x]=\text{DF}[x][h]+o[h]=\text{DF}[x]\mathsf{T}h+o[\| h\| ]
$$

If such a mapping exists, $F$ is called differentiable in $x$. We say that $F$ is locally approximated by $\text{DF}[x]$. 

$>>>$ Chain rule, product rule

$$
\text{DF}[x][h]=\frac{d}{d\epsilon }F[x+\text{$\epsilon $h}]|_{\epsilon =0}
$$

#### Theorem 1 (Uniqueness of the Derivative)

The derivative is unique. 

Proof: Assume that

$$
F[x+h]-F[x]=D[h]+o[h]

F[x+h]-F[x]=E[h]+o[h]
$$

Then:

$$
\quad D[h]+o[h]=E[h]+o[h]
$$

which shows that $D= E$.

### Theorem 2 (Chain Rule)

Let $F:\mathbb{R}^n\text{-$>$ \mathbb{R}^m$be differentiable in x and $G:\mathbb{R}^m\text{-$>$ \mathbb{R}^n$differentiable in F[x]. 
Then $G\circ F:U\text{-$>$ W$is differentiable in $x$ and we have:

$$
D(G\circ F)[x]= \text{DG}[F[x]]\circ \text{DF}[x]
$$

or, omitting the argument:

$$
D(G\circ F)= \text{DG}[F]\circ \text{DF}\text{  }
$$

Note that:

$$
(\text{DG}[F]\circ \text{DF} )[h]=\text{DG}[F][\text{DF} [h]]=\text{DG}[F]\mathsf{T}\cdot \text{DF}\mathsf{T}h
$$

You have to multiply the transpose of DG[F] and DF; DG[F] and DF cannot multiplied.
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

