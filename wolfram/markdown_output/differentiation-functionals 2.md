17.04.2025

## Calculus of Variations

### Definition 4 (Functional Derivatives)

Let H be a Hilbert space  with an inner product of $\phi $, $\psi \in $H denoted as $\langle \phi |\psi \rangle $. Often $H=L^2(\Omega )$ for
some region $\Omega \subset \mathbb{R}^n$ and:

$$
\langle \phi |\psi \rangle =\int _{\Omega }\phi [x]\psi [x]dx
$$

Let $\phi $, h$\in $H, and $F:H\text{-$>$\mathbb{R$ be a functional defined on an open environment of $\phi $. The directional derivative of
$F$ with respect to $h$ is defined as:

$$
\text{$\delta $F}[\phi ][h]=\frac{d}{d\epsilon }F[\phi +\epsilon  h]|_{\epsilon =0}
$$

If $\text{$\delta $F}[\phi ][h]$ can be expressed as an inner product:

$$
\text{$\delta $F}[\phi ][h]=\langle g[\phi ]|h\rangle
$$

then we write

$$
\text{$\delta $F}[\phi ]=g[\phi ]
$$

or

$$
\text{$\delta $F}=g
$$

### Definition 5 (Dirac Function)

The Dirac function $\delta $:

$$
\delta [x]= \begin{cases}
 \infty (x=0) 
 0 (x\neq 0) 
\end{cases}
$$

$$
\left\langle \left.\delta _y\right|\phi \right\rangle =\int _{\Omega } \delta [y-x]\phi [x]dx=\phi [y]
$$

### Easy Examples

$$
F[\phi ]=\left\langle \left.\delta _y\right|\phi \right\rangle =\phi [y]

\text{$\delta $F}[\phi ][h]=\left\langle \left.\delta _y\right|h\right\rangle 

\text{$\quad $          }=\frac{d}{d\epsilon }\int _{\Omega }(\phi [x]+\epsilon  h[x])\delta _y[x]dx|_{\epsilon =0}=\int _{\Omega } h[x]\delta _y[x]dx=h[y]\text{
                             }
$$

$$
F[\phi ]=\langle g|\phi \rangle =\int _{\Omega }\phi [x]g[x]dx

\text{$\delta $F}[\phi ][h]=\langle g|h\rangle 

\text{$\quad $          }=\frac{d}{d\epsilon }\int _{\Omega }(\phi [x]+\epsilon  h[x])g[x]dx=\int _{\Omega } h[x]g[x]dx

\text{                              }
$$

$$
F[\phi ]=\int _{\Omega }\phi ^n[x]dx

\text{$\delta $F}[\phi ]=n \phi ^{n-1}

\text{$\delta $F}[\phi ][h]=\left\langle \left.n \phi ^{n-1}\right|h\right\rangle 

\text{                   }=\int _{\Omega } n \phi [x]^{n-1}h[x]dx\text{                           }

\text{                   }=\frac{d}{d\epsilon }\int _{\Omega }(\phi [x]+\epsilon  h[x])^ndx=\int _{\Omega } n(\phi [x]+\epsilon  h[x])^{n-1}h[x]dx|_{\epsilon
=0}\text{                            }
$$

$$
F[\phi ]=c\int _{\Omega }\phi ^{\frac{5}{3}}[x]dx

\text{$\delta $F}[\phi ]=c\frac{5}{3} \phi ^{\frac{2}{3}}
$$

### Product Rule

$$
A[\phi ]=F[\phi ]G[\phi ]

\text{$\delta $A}=\text{$\delta $F} G+F \text{$\delta $G}
$$

$$
\text{$\delta $A}[\phi ]=\frac{d}{d\epsilon }(F[\phi +\text{$\epsilon $h}]G[\phi +\text{$\epsilon $h}])|_{\epsilon =0}=\text{$\delta $F}[\phi ]G[\phi
]+F[\phi ]\text{$\delta $G}[\phi ]
$$

### Chain Rule

$$
A[\phi ]=g[F[\phi ]]

\text{$\delta $A}=\left(\frac{d}{dx}g\circ F\right) \text{$\delta $F}
$$

$$
\text{$\delta $A}[\phi ]=\frac{d}{d\epsilon }g[F[\phi +\text{$\epsilon $h}]]|_{\epsilon =0}
$$

$$
=\frac{d}{dx}g[F[\phi +\text{$\epsilon $h}]]\frac{d}{d\epsilon }F[\phi +\text{$\epsilon $h}]|_{\epsilon =0}
$$

$$
=\frac{d}{dx}g[F[\phi ]]\text{$\delta $F}[\phi ]
$$

### Theorem (Vector Integration by Parts)

Let $G:\mathbb{R}^n\text{-$>$ \mathbb{R}^n$,$g:\mathbb{R}^n\text{-$>$ \mathbb{R$ be differentiable. Then:

$$
\int _{\partial \Omega }(G \cdot g)dS=\int _{\Omega }G\cdot \partial g dV +\int _{\Omega }(\partial \cdot G)gdV
$$

or, if G and g vanish outside of $\Omega $:

$$
\int _{\Omega }G\cdot \partial g dV =-\int _{\Omega }(\partial \cdot G)gdV
$$

Proof: Euler's theorem says:

$$
\int _{\partial \Omega }(G \cdot g)dS=\int _{\Omega }\partial \cdot (G \cdot g)dV
$$

The result follows from the product rule in its general form:

$$
\partial \cdot (G \cdot g)=G\cdot \partial g +(\partial \cdot G)g
$$

