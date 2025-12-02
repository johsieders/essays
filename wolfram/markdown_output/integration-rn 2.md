\begin{doublespace}
\noindent$\pmb{\text{                                                                                                                          
                                                                                      $
\end{doublespace}

26.04.2025

## Riemann Integrals in $\mathbb{R^n$

### Step Functions

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
\hspace*{55.5ex} 
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

=\sum _n^{k=1} f\left[\phi \left[u_k\right]\right]\frac{\left| Q_k\right| }{\left| R_k\right| }\left| R_k\right| 

\approx \sum _n^{k=1} f\left[\phi \left[u_k\right]\right]\left| \text{Det}\left[\partial \phi \left[u_k\right]\right]\right| \left| R_k\right| 

\approx \int _{\phi ^{-1}[Q]}f\circ \phi | \text{Det}[\partial \phi ]|  d^mu\text{                                }
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

## Integral Theorems

### Path Integrals

#### Measure, Weight, Length

$$
\gamma  \subset \mathbb{R}^m, \gamma  \approx \left[x_0,x_1,\text{..},x_n\right], \text{$\Delta $x}_k=x_k-x_{k-1}

f:\mathbb{R}^m \to \mathbb{R}, F:\mathbb{R}^m \to \mathbb{R}^m\text{                         }(f:\text{density}, F:\text{field})

\int _{\gamma }fds\approx \sum _{k=1}^n f\left[x_k\right]\left\| \text{$\Delta $x}_k\right\| \text{                         }(\text{measure} \text{or}
\text{weight} \text{of} \gamma ) 

\int _{\gamma }ds\approx \sum _{k=1}^n \left\| \text{$\Delta $x}_k\right\| \text{                                         }(\text{length} \text{of}
\gamma ) \text{  }
$$

#### Work along a Path

$$
f= F\cdot \hat{t}

\hat{t}_k=\frac{\text{$\Delta $x}_k}{\left\| \text{$\Delta $x}_k\right\| }

\int _{\gamma }F\cdot \hat{t}ds\approx \sum _{k=1}^n F\left[x_k\right]\cdot \frac{\text{$\Delta $x}_k}{\left\| \text{$\Delta $x}_k\right\| }\left\|
\text{$\Delta $x}_k\right\| \text{     }

\text{                  }= \sum _{k=1}^n F\left[x_k\right]\cdot \text{$\Delta $x}_k\text{                     }(\text{work} \text{along} \gamma 
\text{given} \text{field} F)
$$

#### Path Independence: Path to Points

Set $F=\partial f$. 
For small $\text{$\Delta $x}_k$, local path independence means:

$$
\partial f\left[x_k\right]\cdot \text{$\Delta $x}_k \approx  f\left[x_k\right]-f\left[x_{k-1}\right]\text{        }
$$

Telescope sum:

$$
\sum _{k=1}^n \partial f\left[x_k\right]\cdot \text{$\Delta $x}_k = \sum _{k=1}^n \left(f\left[x_k\right]-f\left[x_{k-1}\right]\right)
$$

Global path independence:

$$
\int _{\gamma }\partial f\cdot \hat{t}ds= f\left[x_n\right]-f\left[x_0\right]\text{                    }
$$

#### Path Given by Explicit Function

$$
\phi :[a, b] \text{-$>$ \mathbb{R}^n, [a, b] \approx \left[u_0,u_1,\text{..},u_n\right], \text{$\Delta $u}_k=u_k-u_{k-1}

g:[a, b] \text{-$>$ \mathbb{R}

\hat{t}=\frac{\dot{\phi }}{\left\| \dot{\phi }\right\| }\text{                                                      }(\text{tangent} \text{vector}
\text{of} \gamma )

$$

$$
\int _{\gamma }f[x]ds\approx \sum _{k=1}^n f\left[x_k\right]\left\| \text{$\Delta $x}_k\right\| 

\text{                    }=\sum _{k=1}^n f\left[\phi \left[u_k\right]\right]\frac{\left\| \Delta \phi \left[u_k\right]\right\| }{\text{$\Delta $u}_k}\text{$\Delta
$u}_k

\text{                    }\approx \int _a^bf[\phi [u]]\left\| \dot{\phi }[u]\right\| du
$$

$$
\int _{\gamma }ds=\int _a^b\left\| \dot{\phi }[u]\right\| du\text{                                  }(\text{length} \text{of} \gamma  )\text{ 
           }\int _{\gamma }F\cdot \hat{t}ds=\int_a^b F[\phi [u]]\cdot \dot{\phi }[u] \, du\text{             }\int _{\gamma }\partial f\cdot \hat{t}ds=\int_a^b
\partial f[\phi [u]]\cdot \dot{\phi }[u] \, du\text{   }\text{                      }=f[\phi [b]]-f[\phi [a]]
$$

### Surface Integrals

$$
|a\cdot b|=\| a\| \| b\|  \cos  \alpha 

\| a\times b\| \text{   }=\| a\| \| b\|  \sin  \alpha \text{        }

\phi :R \text{-$>$ \mathbb{R}^3

S=\phi [R]
$$

Normal vector of S:

$$
\hat{n}=\frac{\partial _u\phi \times \partial _v\phi }{\left\| \partial _u\phi \times \partial _v\phi \right\| }\text{
                                                      }
$$

### Measure, Weight, Surface

$$
\text{  }\text{$\Delta $x}_{\text{jk}}=\left(x_{\text{jk}}-x_{j-1\text{jk}}\right)\times \left(x_{\text{jk}}-x_{\text{jk}-1}\right)\left|S_{\text{jk}}\right|=
\left\| \text{$\Delta $x}_{\text{jk}}\right\|
$$

Measure or weight of S

$$
\int _SfdS\approx \sum _{j,k=1}^n f\left[x_{\text{jk}}\right]\left\| \text{$\Delta $x}_{\text{jk}}\right\| \text{         }
$$

Surface of S

$$
\int _SdS\approx \sum _{j,k=1}^n \left\| \text{$\Delta $x}_{\text{jk}}\right\| \text{                                                    }
$$

#### Flow

Flow density through S

$$
f= F\cdot \hat{n}
$$

Flow through S

$$
\int _SF\cdot \hat{n}dS\approx \sum _{j,k=1}^n F\left[x_k\right]\cdot \frac{\text{$\Delta $x}_{\text{jk}}}{\left\| \text{$\Delta $x}_{\text{jk}}\right\|
}\left\| \text{$\Delta $x}_{\text{jk}}\right\| \text{     }

= \sum _{j,k=1}^n F\left[x_{\text{jk}}\right]\cdot \text{$\Delta $x}_{\text{jk}}\text{                              }
$$

#### Stokes: Surface to Line

Replace F with $\partial \times F$

$$
(\partial \times F)\left[x_{\text{jk}}\right]\cdot \text{$\Delta $x}_{\text{jk}} \approx  \int _{\partial S_{\text{jk}}} F\cdot \hat{t}ds\text{
                          }\left(\text{for} \text{small} S_{\text{jk}},\text{local} \text{Stokes}\right)

\sum _{j,k = 1}^n (\partial \times F)\left[x_{\text{jk}}\right]\cdot \text{$\Delta $x}_{\text{jk}} = \sum _{j,k = 1}^n \int _{\partial S_{\text{jk}}}
F\cdot \hat{t}ds\text{       }(\text{telescope} \text{sum})

\int _S(\partial \times F)\cdot \hat{n}dS =\int _{\partial S} F\cdot \hat{t}ds\text{                                      }(\text{global} \text{Stokes})
$$

#### Surface Given by Explicit Function

$$
R = \cup R_{\text{jk}}\text{  }

x_{\text{jk}}=\phi \left[u_j, v_k\right]

 S_{\text{jk}}=\phi \left[R_{\text{jk}}\right]

 \phi ^{-1}\left[ S_{\text{jk}}\right]=R_{\text{jk}}

\left|R_{\text{jk}}\right|=\left(u_j-u_{j-1}\right)\left(v_k-v_{k-1}\right)
$$

$$
\left.\left.\left|S_{\text{jk}}\right|=\left\| \phi \left[u_j,v_k\right]-\phi \left[u_{j-1},v_k\right]\right\| \right\|
\phi \left[u_j,v_k\right]-\phi \left[u_j,v_{k-1}\right]\right\| \sin \left[\alpha _{\text{jk}}\right] 

\frac{\left|S_{\text{jk}}\right|}{\left|R_{\text{jk}}\right|}=\frac{\left\| \phi \left[u_j,v_k\right]-\phi \left[u_{j-1},v_k\right]\right\|
\left\| \phi \left[u_j,v_k\right]-\phi \left[u_j,v_{k-1}\right]\right\| \sin \left[\alpha _{\text{jk}}\right]}{\left(u_j-u_{j-1}\right)\left(v_k-v_{k-1}\right)}

\text{                }\approx \left\| \partial _u\phi \left[u_j,v_k\right]\right\| \left\| \partial _v\phi \left[u_j,v_k\right]\right\|
\sin \left[\alpha _{\text{jk}}\right]

\text{                }=\left\| \partial _u\phi \left[u_j,v_k\right]\times \partial _v\phi \left[u_j,v_k\right]\right\| 
$$

$$
\int _s fdS\approx \sum _{j,k=1}^n f\left[x_{\text{jk}}\right]\left|S_{\text{jk}}\right|
$$

$$
=\sum _{j,k=1}^n f\left[x_{\text{jk}}\right]\frac{\left|S_{\text{jk}}\right|}{\left|R_{\text{jk}}\right|}\left|R_{\text{jk}}\right|
$$

$$
=\sum _{j,k=1}^n f\left[\phi \left[u_j,v_k\right]\right]\left\| \partial _u\phi \left[u_j,v_k\right]\times \partial
_v\phi \left[u_j,v_k\right]\right\| \left|R_{\text{jk}}\right|
$$

$$
=\int _R f[\phi [u,v]]\left\| \partial _u\phi [u,v]\times \partial _v\phi [u,v]\right\| d(u,v)
$$

$$
=\int _R f[\phi ]\left\| \partial _u\phi \times \partial _v\phi \right\| d(u,v)
$$

$$
\text{}
$$

$$
\int _s F\cdot \hat{n}dS\approx \sum _{j,k=1}^n F\left[x_{\text{jk}}\right]\hat{n}_{\text{jk}}\left|S_{\text{jk}}\right|
$$

$$
=\int _R F[\phi ]\frac{\partial _u\phi \times \partial _v\phi }{\left\| \partial _u\phi \times \partial _v\phi \right\|
}\left\| \partial _u\phi \times \partial _v\phi \right\| dudv
$$

$$
=\int _R F[\phi ]\left(\partial _u\phi \times \partial _v\phi \right)d(u,v)
$$

#### Surface Given by Implicit Function

$$
S = \left\{\left.x \in \mathbb{R}^3\right| G[x]= 0\right\}
$$

There is a $\phi $ such that :

$$
G\left[x_1,x_2,x_3\right]= 0\text{   }\Longleftrightarrow \text{   }\phi \left[x_1,x_2\right]= x_3

G\left[x_1,x_2, \phi \left[x_1,x_2\right]\right]= 0 

\partial G = \left(
\begin{array}{c}
 \partial _1G+\partial _3G\partial _1\phi  
 \partial _2G+\partial _3G\partial _2\phi  
\end{array}
\right)=\left(
\begin{array}{c}
 0 
 0 
\end{array}
\right)

\partial _1\phi  = -\frac{\partial _1G}{\partial _3G} =\partial _u\phi  

\partial _2\phi  = -\frac{\partial _2G}{\partial _3G}=\partial _v\phi 
$$

### Volume Integrals

#### Gauss: Volume to Surface

Let f be a gradient:  $f = \partial \cdot F$.

$$
(\partial \cdot F)\left[x_{\text{ijk}}\right]\left| V_{\text{ijk}}\right| \approx \int _{\partial V_{\text{ijk}}} F\cdot \hat{n}dS\text{      
                  }\left(\text{for} \text{small} V_{\text{ijk}},\text{local} \text{Gauss}\right)

\sum _{i,j,k=1}^n (\partial \cdot F)\left[x_{\text{ijk}}\right]\left| V_{\text{ijk}}\right| \approx \sum _{i,j,k=1}^n \int _{\partial V_{\text{ijk}}}
F\cdot \hat{n}dS\text{       }(\text{telescope} \text{sum})

\int _v (\partial \cdot F)dV =\int _{\partial V} F\cdot \hat{n}dS\text{        }

\text{                                 }
$$

#### Local Gauss Explained

Let C be a small cube with lower left corner $\left[x_1\right.$, $x_2$, $x_3$] and side lengths $\Delta _1, \Delta _2, \Delta _3$. The following
calculates the flow through $\partial $C along $x_1,$ orthogonal to $x_2, x_3$:

$$
\int _{\partial C} F_1\hat{n}_1dS\approx \left(F_1\left[x_1+\Delta _1, x_2, x_3\right]-F_1\left[x_1, x_2, x_3\right]\right)\Delta _2\Delta _3
$$

$$
=\frac{F_1\left[x_1+\Delta _1, x_2, x_3\right]-F_1\left[x_1, x_2, x_3\right]}{\Delta _1}\Delta _1\Delta _2\Delta _3
$$

$$
\approx \partial _1F_1| C|
$$

This works for the other two directions as well. Summing up gives:

$$
\int _{\partial C}\text{  }F_1\hat{n}_1+ F_2\hat{n}_2+ F_3\hat{n}_3dS=\left(\partial _1F_1+\partial _2F_2+\partial _3F_3\right)| C|
$$

$$
\int _{\partial C} F\cdot \hat{n}dS=(\partial \cdot F)\left[x_1, x_2,x_3\right]| C|
$$

#### Green{'s Formula}

Immediate consequence from Gauss: Apply Gauss to $f \partial g$ and $g\partial f$.

$$
f,g :\mathbb{R}^n\text{-$>$\mathbb{R}

\partial \cdot (f\partial g) =f \partial ^2g+\partial f\partial g

\int _v f \partial ^2g+\partial f\partial gdV =\int _{\partial V} f\partial g\cdot \hat{n}dS =\int _{\partial V} f\frac{\partial g}{\partial \hat{n}}dS

\int _v g \partial ^2f+\partial g\partial fdV =\int _{\partial V} g\partial f\cdot \hat{n}dS =\int _{\partial V} g\frac{\partial f}{\partial \hat{n}}dS

\int _v f \partial ^2g-g \partial ^2fdV =\int _{\partial V} f\frac{\partial g}{\partial \hat{n}}- g\frac{\partial f}{\partial \hat{n}}dS\text{  
                   }(\text{Green}'s \text{Formula})

\text{                                         }
$$

#### Integration by Parts

$$
F:\mathbb{R}^n\text{-$>$\mathbb{R}^n

g:\mathbb{R}^n\text{-$>$\mathbb{R}

\int _{\partial V} F g\cdot \hat{n}dS =0\text{                                   }(\text{Assumption}:F g \text{vanishes} \text{outside} \text{of}
\partial V)

\partial \cdot (F g) =(\partial \cdot F)g+F\cdot \partial g\text{            }(\text{straightforward})

\int _v \partial \cdot (F g)dV =\int _v((\partial \cdot F)g+F\cdot \partial g )dV=0\text{     }

\int _v(\partial \cdot F)gdV=-\int _vF\cdot \partial g dV\text{            }(\text{integration} \text{by} \text{parts})

\text{                                         }
$$

#### Continuity Equation

$$
\rho :\mathbb{R}^{1+3}\text{-$>$\mathbb{R}\text{          }(\text{charge} \text{density} \text{or} \text{density} \text{of} \text{any} \text{other}
\text{stuff})

v:\mathbb{R}^{1+3}\text{-$>$\mathbb{R}^3\text{         }(\text{velocity})

j = \rho  v\text{                  }(\text{current} \text{density})

J = \left(
\begin{array}{c}
 \rho  
 j 
\end{array}
\right)\in \mathbb{R}^{1+3}
$$

$$
P[t] =\int _V \rho dV\text{           }(\text{total} \text{charge} \text{in} V \text{at} \text{time} t)
$$

lhs = change of $P$, rhs = flow into $V$ = -flow from $V$

$$
\dot{P}=\int _V \dot{\rho }dV =-\int _{\partial V}\rho  v\cdot \hat{n}dS\text{                                                       }

\text{                      }=-\int _V\partial \cdot (\rho  v) dV\text{                               }(\text{Gauss}; \text{true} \text{for} \text{any}
\text{volume} V)

\dot{\rho } = -\partial \cdot (\rho  v)=-\partial \cdot j

\dot{\rho } +\partial \cdot j=0\text{                                                                 }(\text{continuity} \text{equation})

\partial \cdot J=0\text{                                            }

\text{                                         }
$$

