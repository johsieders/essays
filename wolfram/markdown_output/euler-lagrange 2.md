17.04.2025

## Equations of Motion

### Euler-Lagrange 

This is about the Euler-Lagrange equations which describe how particles move in  a field. They include the particle's position $x$, its velocity
$\dot{x$, and the action given by the Lagrangian $L$. V1 applies to Newtonian physics where position $x$ and time $t$ are independent. V2,
V3 and V4 apply to relativistic physics where position and time are coupled by the Lorentz transformation. We present the equations first and give
the proofs later. The proofs require integration by parts (simple and generalized as shown) and some notational challenges.

#### Euler-Lagrange V 1

Let L: $\mathbb{R}^n$$\times $$\mathbb{R}^n$$\to $$\mathbb{R$ be differentiable on a region $\Omega \subset $$\mathbb{R}^{n\times n$ with
$L[x,y]=0$ for large arguments. Here is the idea: The function $x:\mathbb{R}\text{-$>$\mathbb{R}^n$ describes the itinerary of one or many particles,
$\dot{x}:\mathbb{R}\text{-$>$\mathbb{R}^n$ their velocity. The function L is called the Lagrangian. $L\left[x,\dot{x}\right]$is interpreted
as the action that occurs when a particle moves with velocity $\dot{x$ at position $x$. The physical quantities of force and momentum are defined
in terms of $L$ as:

$$
F=\partial _xL\text{          }(\text{force})

P=\partial _{\dot{x}}L \text{      }(\text{momentum})
$$

The action is given by :

$$
A[x]=\int _a^bL\left[x[t],\dot{x}[t]\right]dt\text{   }
$$

and the task is to find an itinerary $x$ that minimizes the action $A[x]$. The Euler-Lagrange equation in its simplest form is:

$$
\partial _xL=\partial _t\partial _{\dot{x}}L
$$

or {``}force = time derivative of momentum{''}: 

$$
F=\dot{P}
$$

We know that every local minimum of A is a stationary point (a solution of Euler-Lagrange), but the reverse is not true. 

#### Beltrami Identity

$$
\frac{\mathbf{d}}{\text{$\mathbf{d$t}}\left(L-\dot{x}\partial _{\dot{x}}L\right)=\partial _tL
$$

or, if $\partial _tL=0$:

$$
L-\dot{x}\partial _{\dot{x}}L=\text{const}
$$

which can be written as:

$$
L+\text{const}=\dot{x}P
$$

#### Euler-Lagrange V2

What used to be time $t$ and position $x$ are now combined into one variable, the time-space position, which is again called $x$ (sorry for
the confusion). So, we have $L:\mathbb{R}^n\times \mathbb{R}\times \mathbb{R}^n\to \mathbb{R$ differentiable on a region $\Omega $ with $L[x,
y, z] = 0$ for large arguments. The Lagrangian now includes the function $\phi :\mathbb{R}^n\to \mathbb{R$ of $x$, and $L[x,\phi [x],\partial
\phi [x]]$ is the action that occurs when a particle is at  time-space position x. In this variant V2, $\phi $ is a scalar; in V3 it will be a
vector. V2 is an intermediate result with little practical relevance. Force and momentum are defined as:

$$
F=\partial _{\phi }L\text{                                               }(\text{force})

P=\partial _{\partial \phi }L  =\left(
\begin{array}{c}
 \partial _{\partial _1\phi } 
 . 
 \partial _{\partial _n\phi } 
\end{array}
\right)L\text{  }\text{     }(\text{momentum})
$$

Note that $F\in$$\mathbb{R$$,P\in$$\mathbb{R}^n$. The Euler - Lagrange functional is defined as :

$$
A[\phi ]=\int _{\Omega }L[x,\phi [x],\partial \phi [x]]dx
$$

and the task is to find a function $\phi$ that minimizes the action $A[\phi ]$. The Euler-Lagrange equation becomes:

$$
\partial _{\phi }L=\partial \cdot \partial _{\partial \phi }L
$$

or {``}force = divergence of momentum{''}: 

$$
F=\partial \cdot P
$$

As before, every Euler-Lagrange solution is only a candidate for a minimum.

#### Euler-Lagrange V 3

We keep the setting of V2, with the only difference that $\phi $ is now a vector-valued function of $m$ dimensions. So we have  $L:\mathbb{R}^n\times
\mathbb{R}^m\times \mathbb{R}^{n\times m}\to \mathbb{R$ differentiable on a region $\Omega $ with $L[x, y, z] = 0$ on $\partial \Omega $, and
what used to be $\partial \phi$ (gradient) becomes $\text{D$\phi $$ (Jacobian): the Lagrangian is now $L[x,\phi [x],\text{D$\phi $[x]]$.
V3 is ubiquitous in relativistic physics. Force and momentum are defined as:

$$
F=\partial _{\phi }L\text{  }=\left(
\begin{array}{c}
 \partial _{\phi _1} 
 . 
 \partial _{\phi _m} 
\end{array}
\right)\text{  }L\text{                                                }(\text{force})

P=\partial _{\text{D$\phi $L \text{  }=\left(
\begin{array}{ccc}
 . & . & . 
 . & \partial _{\partial _j\phi _i} & . 
 . & . & . 
\end{array}
\right)_{j=1,\text{..}ni=1,\text{..}m}\text{  }L\text{       }(\text{momentum})
$$

Note that $F\in$$\mathbb{R}^m$, $P\in$$\mathbb{R}^{n\times m$. The action is given by:

$$
A[\phi ]=\int _{\Omega }L[x,\phi [x],\text{D$\phi $[x]]dx
$$

and the task is to find a function $\phi$ that minimizes the action $A[\phi ]$. Euler-Lagrange becomes m equations, one for each component of
$\phi $:

$$
\partial _{\phi _i}L=\partial \cdot \partial _{\partial \phi _i}L
$$

which can be combined into one, stretching the meaning of our notation:

$$
\partial _{\phi }L=\partial \cdot \partial _{\text{D$\phi $L
$$

or, again: {``}force = divergence of momentum{''}: 

$$
F=\partial \cdot P
$$

#### Euler-Lagrange V 4

We keep the setting of V3, with the only difference that L now depends not only on $\text{D$\phi $ =\partial \unicode{f3da}\phi$, but also on
higher derivatives $\partial ^{\unicode{f3da}k$$\unicode{f3da}\phi $. So we have  $L:\mathbb{R}^n\times \mathbb{R}^m\times \mathbb{R}^{n\times
m\times \text{..}\times m}\to \mathbb{R$ differentiable on a region $\Omega $ with $L\left[x, y, 
\begin{array}{cc}
 z_1,. & .,z_q 
\end{array}
\right] = 0$ on $\partial \Omega $.  V4 is mainly a notational challenge of little physical interest. The action is given by:

$$
A[\phi ]=\int _{\Omega }L\left[x,\phi [x],\text{D$\phi $[x], D^2\phi [x],\text{..},D^q\phi [x]\right]dx
$$

and the Euler-Lagrange equation becomes

$$
\partial _{\phi }L=\partial \cdot \partial _{\text{D$\phi $L -(\partial \cdot )^2\partial _{\text{D$\phi $L+(\partial \cdot )^3\partial _{\text{D$\phi
$L-\text{...}

=\sum _{k=1}^q (-1)^{k-1}\partial ^k\cdot \partial _{\text{D$\phi $L
$$

#### Proofs

$$
\pmb{\text{V1}}: A[x]=\int _a^bL\left[x[t],\dot{x}[t]\right]dt\text{               }
$$

$$
\text{$\delta $A}[x][h]=\frac{d}{d\epsilon }\int_a^b L\left[x+\epsilon  h,\dot{x}+\epsilon  \dot{h}\right] \, dt|_{\epsilon =0}

=\int _a^b\partial _xL\left[x+\epsilon  h,\dot{x}+\epsilon  \dot{h}\right]h+\partial _{\dot{x}}L\left[x+\epsilon  h,\dot{x}+\epsilon  \dot{h}\right]\dot{h}dt|_{\epsilon
=0}
$$

$$
=\int _a^b\partial _xL\left[x+\epsilon  h,\dot{x}+\epsilon  \dot{h}\right]h-\partial _t\left(\partial _{\dot{x}}L\left[x+\epsilon  h,\dot{x}+\epsilon
 \dot{h}\right]\right)hdt|_{\epsilon =0}
$$

$$
=\int _a^b\left(\partial _xL\left[x,\dot{x}\right]-\partial _t\left(\partial _{\dot{x}}L\left[x,\dot{x}\right]\right)\right)hdt
$$

$$
=\left\langle \left.\partial _xL-\partial _t\partial _{\dot{x}}L\right|h\right\rangle
$$

\pmb{ 
Beltrami:}

$$
\partial _xL\dot{x}=\partial _t\partial _{\dot{x}}L\dot{x}\text{                         }\left(\text{Euler$\_$Lagrange} \text{times} \dot{x}\right)
$$

$$
\partial _xL \dot{x}=\frac{\mathbf{d}}{\text{$\mathbf{d$t}}L-\partial _{\dot{x}}L \ddot{x}-\partial _tL\text{   }(\text{chain} \text{rule})
$$

$$
\partial _t\partial _{\dot{x}}L\dot{x} =\frac{\mathbf{d}}{\text{$\mathbf{d$t}}L-\partial _{\dot{x}}L \ddot{x}-\partial _tL
$$

$$
\frac{\mathbf{d}}{\text{$\mathbf{d$t}}L-\partial _{\dot{x}}L \ddot{x}-\partial _t\partial _{\dot{x}}L\dot{x}=\partial _tL (\text{rearrangement})
$$

$$
\frac{\mathbf{d}}{\text{$\mathbf{d$t}}\left(L-\dot{x}\partial _{\dot{x}}L\right)=\partial _tL\text{            }(\text{product} \text{rule})
$$

$$
\pmb{}\pmb{\text{V2}}: A[\phi ]=\int _{\Omega }L[x,\phi [x],\partial \phi [x]]dx
$$

We integrate the action $A[\phi ]$ by parts, using that $L$vanishes on $\partial \Omega$:

$$
\frac{d}{d\epsilon }\int _{\Omega }L[x,\phi +\text{$\epsilon $h},\partial \phi +\epsilon \partial h]dV|_{\epsilon =0}
$$

$$
=\int _{\Omega }\left(\left(\partial _{\phi }\right)\mathsf{T}L h+\left(\partial _{\partial \phi }L \right)\mathsf{T}\partial h\right)dV

=\int _{\Omega }\left(\partial _{\phi }L-\left(\partial \cdot \partial _{\partial \phi }L\right)hdV\text{    }(\text{integration} \text{by} \text{parts})\right.
$$

$$
=\left\langle \left.\partial _{\phi }L-\left(\partial \cdot \partial _{\partial \phi }L\right)\right|h\right\rangle
$$

$$
\pmb{\text{V3}}: A[\phi ]=\int _{\Omega }L[x,\phi [x],\text{D$\phi $[x]]dx
$$

We proceed as in V2, noting that:

$$
\left(\partial _{\phi }L\right)\mathsf{T}h=\sum _{i=1}^m \partial _{\phi _i}L h_i
$$

$$
\left(\partial _{\text{D$\phi $L\right)\mathsf{T}\cdot \text{Dh} =\sum _{i=1}^m \partial _{\partial \phi _i}L\cdot \partial h_i
$$

We apply the one-dimensional version (V 2) to $\phi _i$ for $i=1,\text{..},m$ (note that $h:\mathbb{R}^n\to \mathbb{R}^m$) and get:

$$
\frac{d}{d\epsilon }\int _{\Omega }L[x,\phi +\text{$\epsilon $h},\text{D$\phi $+\text{$\epsilon $Dh}]dV|_{\epsilon =0}
$$

$$
=\sum _{i=1}^m \int _{\Omega }\left(\partial _{\phi _i}L\cdot h_i+\partial _{\partial \phi _i}L\cdot \partial h_i\right)dV\text{              
       }(\text{integration} \text{by} \text{parts})
$$

$$
=\sum _{i=1}^m \int _{\Omega }\left(\partial _{\phi _i}L\cdot h_i-\left(\partial \cdot \partial _{\partial \phi _i}L\right)h_i\right)dV\text{ 
}
$$

$$
=\sum _{i=1}^m \left\langle \partial _{\phi _i}L-\partial \cdot \left(\partial _{\partial \phi _i}L \right)|h_i\right\rangle
$$

$$
=\left\langle \left.\partial _{\phi }L-\partial \cdot \left(\partial _{\text{D$\phi $L \right)\right|h\right\rangle
$$

$$
\pmb{\text{V4}}: A[\phi ]=\int _{\Omega }L\left[x,\phi [x],\text{D$\phi $[x],D^2\phi [x],\text{..}, D^q\phi [x]\right]dx
$$

$$
\partial _{D^2\phi }L=\left(
\begin{array}{cccc}
 \partial _{\partial _1\text{D$\phi $ & . & . & \partial _{\partial _n\text{D$\phi $ 
\end{array}
\right)L
$$

$$
D^2h=\left(
\begin{array}{cccc}
 \partial _1D & . & . & \partial _1D 
\end{array}
\right)h
$$

We prove only the case $q=2$ and get for $A$:

$$
\frac{d}{d\epsilon }A[\phi +\text{$\epsilon $h}]|_{\epsilon =0}=\partial _{\phi }L h+\partial _{\text{D$\phi $L \cdot \text{Dh}+\partial _{D^2\phi
}L \cdot D^2h
$$

The first two terms are known from V3. It is the last (third) term we have to compute. We assume initially $\phi $ and $h$ to be scalars as in
V2.

$$
\partial _{\partial ^2\phi }L=\left(
\begin{array}{cccc}
 \partial _{\partial _1\partial \phi } & . & . & \partial _{\partial _n\partial \phi } 
\end{array}
\right)L
$$

$$
\left(\partial _{\partial ^2\phi }L\right)\mathsf{T}\cdot \partial ^2h=\sum _{k=1}^n {}_{\Omega }\partial _{\partial _k\partial \phi }L\cdot \partial
_k\partial h=\sum _{k=1}^n {}_{\Omega }\partial _{\partial _k\partial \phi }L\cdot \partial \partial _kh
$$

Integrating over $\Omega $ and integrating by parts twice gives:

$$
\sum _{k=1}^n {}_{\Omega }\int _{\Omega }\partial _{\partial _k\partial \phi }L\cdot \partial \partial _khdV =-\sum _{k=1}^n {}_{\Omega }\int _{\Omega
}\partial \cdot \left(\partial _{\partial _k\partial \phi }L\right)\cdot \partial _khdV\text{                         }(\text{vector} \text{integration}
\text{by} \text{parts})
$$

$$
=\sum _{k=1}^n {}_{\Omega }\int _{\Omega }\partial _k\left(\partial \cdot \left(\partial _{\partial _k\partial \phi }L\right)\right)\cdot hdV\text{
                    }(\text{scalar} \text{integration} \text{by} \text{parts})
$$

$$
=\int _{\Omega }\partial \cdot \left(\partial \cdot \left(\partial _{\partial ^2\phi }L\right)\right)\cdot hdV
$$

$$
=\int _{\Omega }(\partial \cdot )^2\left(\partial _{\partial ^2\phi }L\right)\cdot hdV\text{                                 }
$$

So, for scalar valued $\phi$ we have arrived at

$$
\int _{\Omega }\left(\partial _{\partial ^2\phi }L\right)\mathsf{T}\cdot \partial ^2hdV=\int _{\Omega }(\partial \cdot )^2\left(\partial _{\partial
^2\phi }L\right)\cdot hdV
$$

which implies

$$
\int _{\Omega }\left(\partial _{D^2\phi }L\right)\mathsf{T}\cdot \partial ^2hdV=\int _{\Omega }(\partial \cdot )^2\left(\partial _{D^2\phi }L\right)\cdot
hdV
$$

for valued-valued $\phi$ exactly as it did for V3. The general case requires integration by parts q times. 

