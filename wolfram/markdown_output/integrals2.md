12.2.2025 Volume of sphere added

## Integrals 2: Riemann Integrals in $\mathbb{R^n$

### 
Step Functions

Consider a closed cube $C = \left[a_1,b_1\right]\times \left[a_2,b_2\right]\times \text{..} \times \left[a_n,b_n\right]$ $\subset $ $\mathbb{R}^n$.
A partition of $C$ is a finite set $\mathcal{C$ of pairwise disjoint cubes $C_k$
such that $C=$ $\cup  C_k$. Th granularity of $\mathcal{C$ is $\text{g = max$ $\left| C_k\right|$.

The characteristic function $\chi _K$ of a set $K\subset \mathbb{R}^n$ is defined as

$$
\chi _K[x]=
\begin{array}{ll}
 \{ & 
\begin{array}{ll}
 1 & x\in K 
 0 & \text{otherwise} 
\end{array}
 
\end{array}
$$

K is called Riemann-measurable, if $\chi _K$ is Riemann-integrable

### Integrals over Intervals, Rectangles, Cubes

$$
f:\mathbb{R}^m \to \mathbb{R}
$$

$f$ is a measure, or a weight, or a density. We assume that $\text{tr}[f]$ is compact.
We

Integral over Q $\subset $ $\mathbb{R}^m$:

$$
\text{tr} Q \approx  \cup Q_k , x_k \in Q_k\text{                                     }
$$

This generalizes intervals ($m=1$), rectangles ($m=2$) and cubes ($m=3$).
The $Q_k$, the patches, can be rectangular or not. But we assume we know what $|$$Q_k$$|$ is. 

Measure or weight of $Q$:

$$
\int _Qfd^mx\approx \sum _{k=1}^n f\left[x_k\right]\left| Q_k\right| \text{  }
$$

The approximate-sign ($\approx $) means: For any $\epsilon  >0$ we can divide $Q$ in a number n of small patches $Q_k$ such that the approximate
equality is accurate up to $\epsilon$.

Volume of $Q$:

$$
\int _Qd^mx\approx \sum _{k=1}^n \left| Q_k\right| \text{                                                  }
$$

So, we can write

$$
\int _Qfd^mx=\int _C\chi _Qfd^mx\text{  }
$$

for any superset $C$ of $Q$, and in particular for large cubes.

#### Volume under linear transformations

The unit cube:

$$
C^m\text{=[}\text{0,1}]^m\text{                                             }

\left| C^m\right| = 1
$$

The main formula (obvious for $m=1$, easy for $m=2, 3$, not easy in general) :

$A:\mathbb{R}^m\text{-$>$\mathbb{R}^m \text{linear}, \text{then}:$

$$
\left| A\left[C^m\right]\right| = | \text{Det}[A]|
$$

and more generally, for any set Q $\subset $ $\mathbb{R}^m$ 

$$
\frac{| A[Q]| }{| Q| }= | \text{Det}[A]| \text{        }

\text{               }
$$

#### Substitution Rule

$$
Q = \cup Q_k , x_k \in Q_k\text{                                      }

R = \cup R_k , u_k \in R_k\text{                                           }

\phi :\mathbb{R}^m\text{-$>$\mathbb{R}^m

Q=\phi [R], \phi ^{-1}[Q]=R

Q_k=\phi \left[R_k\right], \phi ^{-1}\left[Q_k\right]=R_k
$$

For small cubes it approximately holds

$$
\frac{\left| Q_k\right| }{\left| R_k\right| }\approx \left| \text{Det}\left[\partial \phi \left[u_k\right]\right]\right| \text{               
                          }
$$

So, substituting $u =\phi [x]$ amounts to this:

$$
\int _Q fd^mx\approx \sum _n^{k=1} f\left[x_k\right]\left| Q_k\right| 

\text{              }=\sum _n^{k=1} f\left[\phi \left[u_k\right]\right]\frac{\left| Q_k\right| }{\left| R_k\right| }\left| R_k\right| 

\text{             }\approx \sum _n^{k=1} f\left[\phi \left[u_k\right]\right]\left| \text{Det}\left[\partial \phi \left[u_k\right]\right]\right|
\left| R_k\right| 

\text{             }\approx \int _{\phi ^{-1}[Q]}f\circ \phi | \text{Det}[\partial \phi ]|  d^mu\text{                                }
$$

Example: Volume of the sphere using spherical coordinates.
Let $S_R$ be the unit sphere with radius $R$.

$$
\left(
\begin{array}{c}
 x 
 y 
 z 
\end{array}
\right)=\left(
\begin{array}{c}
 r \sin [\theta ]\cos [\phi ] 
 r \sin [\theta ]\sin [\phi ] 
 r \cos [\theta ] 
\end{array}
\right)

\text{with} \theta  \in [0, \pi ]; \phi  \in [0, 2\pi ]; r \in [0, R];
$$

$$
J = \left(
\begin{array}{ccc}
 \partial _rx & \partial _{\theta }x & \partial _{\phi }x 
 \partial _ry & \partial _{\theta }y & \partial _{\phi }y 
 \partial _rz & \partial _{\theta }z & \partial _{\phi }z 
\end{array}
\right)=\left(
\begin{array}{ccc}
 \sin [\theta ]\cos [\phi ] & r \cos [\theta ]\cos [\phi ] & -r \sin [\theta ]\sin [\phi ] 
 \sin [\theta ]\sin [\phi ] & r \cos [\theta ]\sin [\phi ] & r \sin [\theta ]\cos [\phi ] 
 \cos [\theta ] & -r \sin [\theta ] & 0 
\end{array}
\right)

\det  J = r^2\sin [\theta ]

\left| S_R\right| =\int _{S_R}d(x, y, z)=\int _0^{2\pi }\int _0^{\pi }\int _0^Rr^2\sin [\theta ]d\phi d\theta dr = \frac{4\pi }{3}R^3
$$

#### Fubini{'s Theorem}

Integral over an interval ($m=1$)

$$
[a,b] =\text{  }\cup I_k , x_k \in I_k
$$

Measure or weight of $[a,b]$

$$
\int_a^b f[x] \, dx\approx \sum _{k=1}^n f\left[x_k\right]\text{$\Delta $x}_k
$$

Integral over a rectangle ($m=2$)

$$
R =\text{  }\cup R_k , x_k \in R_k
$$

Measure or weight of $R$

$$
\int _Rf[x]dx\approx \sum _{j,k=1}^n f\left[x_{\text{jk}}\right]\left|R_{\text{jk}}\right|
$$

