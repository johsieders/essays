10.05.2025

## Equations of Motion

### Euler-Lagrange 

Th Euler-Lagrange equation describes how particles move in  a field. They include the particle's position $x$, its velocity $\dot{x$, and
the action given by the Lagrangian $L$. Here we are concerned with V1 which applies to Newtonian physics where position $x$ and time $t$ are
independent. 

### Euler-Lagrange V 1

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

and the task is to find an itinerary $x$ that minimizes the action $A[x]$. The Euler-Lagrange equation, or equation of motion, in its simplest
form is:

$$
\partial _xL=\partial _t\partial _{\dot{x}}L
$$

or {``}force = time derivative of momentum{''}: 

$$
F=\dot{P}
$$

Solution of (1) are stationary points of the problem of the minimizing of the action (2). 

#### Observations

Every local minimum of A is a stationary point (a solution of Euler-Lagrange), but the reverse is not true. 
A stationary point can be:

a local minimum (second derivative of A positive definite)

a local maximum (second derivative of A negative definite)

a saddle-point (second derivative of A indefinite)

You can do a lot to the Lagrangian without affecting the stationary points:

adding or subtracting a constant

multiplying with a constant

adding a gradient, because the integral over a gradient is a path-independent constant:

$$
A[x]=\int _a^bL\left[x[t],\dot{x}[t]\right]+ \partial f\left[\dot{x}[t]\right]dt\text{  }= \int_a^b L\left[x[t],\dot{x}[t]\right] \, dt +(f[b]-f[a])
$$

So, a stationary point is, emphatically, only a necessary condition for a local minimum. Conditions o the second derivative of the action A allow
us to identify local minima, but need empirical evidence to achieve certainty.

### Newtonian Fields

Let T[$\dot{x$] be the kinetic energy and $V[x]$ the potential energy (or potential) of a particle travelling at position $x$ with velocity
$\dot{x$. The Lagrangian is:

$$
L\left[x,\dot{x}\right]=T\left[\dot{x}\right]-V[x]
$$

with:

$$
F\text{:=} \partial _xL=-\partial V\text{       }(\text{force})

P\text{:=}\partial _{\dot{x}}L =\partial T\text{             }(\text{momentum})
$$

Note that force and momentum are defined in terms of the Lagrangian. In classical physics, the kinetic energy is always:

$$
T\left[\dot{x}\right]=\frac{1}{2} m \dot{x}^2,\partial T\left[\dot{x}\right]=m \ddot{x}
$$

where $m$ is the particle's mass, so, the equation of motion boils down to:

$$
m \ddot{x}=F
$$

#### Constant Force, Free Fall

With $F= -\partial V =\text{const$we get:

$$
m \ddot{x}=\text{const}
$$

With $F=0$, this is Newton's first law: {``}if there is no force, acceleration is zero and velocity is constant.{''} In the case of free fall
down the $x_2$-axis, we have:

$$
m \ddot{x}=-\left(
\begin{array}{c}
 0 
 m g 
\end{array}
\right)
$$

or

$$
\ddot{x}=\left(
\begin{array}{c}
 0 
 - g 
\end{array}
\right)
$$

#### Harmonic Oscillator

Force is proportional to the deflection (spring, pendulum)

$$
V =\frac{k}{2}x^2

F= -\partial V=-k x
$$

which gives:

$$
m \ddot{x}=-k x\text{             }
$$

Setting $\omega ^2=\frac{k}{m$, we get the solution:

$$
x[t]=a \text{Cos}[\omega  t]+b \text{Sin}[\omega  t]
$$

#### Electric Fields

The Lagrangian is 

$$
L\left[x,\dot{x}\right]=\frac{1}{2}m\dot{x}^2+e V[x]
$$

where $V:\mathbb{R}^3\to \mathbb{R$ is the electric potential, $m$ the mass and $e$ the charge of the moving particle. The force $F$exerted
on a particle of charge $e$ is

$$
F=-e \partial V
$$

The Euler - Lagrange equation for electric fields is

$$
m \ddot{x}=-e \partial V
$$

#### Work along a Gradient

Let $f:\mathbb{R}^n\to \mathbb{R$ be differentiable. Then the gradient $\partial f:\mathbb{R}^n\to \mathbb{R}^n$ is integrable, and the integral
over it is famously path independent: the work depends on where you start and where you end, but not on the path you take. If you go from 1000m in
the valley to 2000m at the summit, the difference in altitude is 1000m, regardless of the path you take. This is expressed in the following equation:

$$
W[x]= \int _{\gamma }\partial f[x]\mathsf{T}\cdot \hat{x}ds=\int _0^s\dot{x}[t]\partial f[x[t]]dt=f[x[s]]-f[x[0]]
$$

where $W[x]$ is the work required to go all the way along $\gamma $, from x[0] to x[s]. This corresponds to the Lagrangian:

$$
L\left[x,\dot{x}\right]=\dot{x}\partial f[x]
$$

Recall one of the observations: Adding a gradient to the Lagrangian doesn't change anything.

#### Catenary

We are given a chain of length $c>2 s$, suspended at $\left(
\begin{array}{c}
 -s 
 0 
\end{array}
\right)$ and  $\left(
\begin{array}{c}
 s 
 0 
\end{array}
\right)$ . The catenary $\gamma $ is given by:

$$
x[t]=\left(
\begin{array}{c}
 t 
 y[t] 
\end{array}
\right), \dot{x}[t]=\left(
\begin{array}{c}
 1 
 \dot{y}[t] 
\end{array}
\right), \left\| \dot{x}\right\| =\sqrt{1+\dot{y}^2}
$$

It minimizes the potential energy $A[y]$:

$$
A[y]=\int _{\gamma }y[t]ds=\int _{-s}^sy[t]\sqrt{1+\dot{y}^2}dt
$$

subject to the length constraint:

$$
B[y]=\int _{\gamma }ds=\int_{-s}^s \sqrt{1+\dot{y}^2} \, dt=c
$$

The solution is:

$$
y[t]=a \text{Cosh}\left[\frac{t}{a}\right]-a \text{Cosh}\left[\frac{s}{a}\right]
$$

where $a$ is a solution of:

$$
2a \text{Sinh}\left[\frac{s}{a}\right]=c
$$

Here is a plot of the function $y$ for $s=1$, and $c\in \{3,4,5,6\$. The longer the rope ($c$ large), the more it will sag.

\begin{doublespace}
\noindent$\pmb{\text{catenary}[\text{c$\_$]\text{:=}\text{Module}[\{\},}
\pmb{f[\text{x$\_$,\text{a$\_$]\text{:=}a \text{Cosh}[x/a];}
\pmb{y[\text{x$\_$,\text{a$\_$]\text{:=} f[x,a]-f[1,a];}
\pmb{\text{tmp} =\text{Solve}[2a \text{Sinh}[1/a]-c\text{==}0 \&\& a>0,a, \text{Reals}];}
\pmb{\text{aa} = \text{First}[a\text{/.}N[\text{tmp}]];}
\pmb{y[\#,\text{aa}]\&]$
\end{doublespace}

\begin{doublespace}
\noindent$\pmb{\text{Plot}[\{\text{catenary}[3][x],\text{catenary}[4][x],\text{catenary}[5][x],\text{catenary}[6][x]\},\{x,-1,1\}]$
\end{doublespace}

\includegraphics{temp_gr1.eps}

\pmb{ Proof}: Assuming the solution correct, we first determine the coefficient $a$. It is plain that $y[-s]=y[s]=0$. We have:

$$
\dot{y}= \text{Sinh}\left[\frac{t}{a}\right]
$$

The arc length is:

$$
B[y]=\int_{-s}^s \sqrt{1+\dot{y}^2} \, dt

=\int_{-s}^s \sqrt{1+\left(\text{Sinh}\left[\frac{t}{a}\right]\right)^2} \, dt

=\int_{-s}^s \text{Cosh}\left[\frac{t}{a}\right] \, dt=2a \text{Sinh}\left[\frac{s}{a}\right]=c
$$

We now derive the solution. The Lagrangian is:

$$
L_A\left[x,\dot{x}\right]=y\sqrt{1+\dot{y}^2}
$$

To take account for the constraint, we add:

$$
L_B\left[x,\dot{x}\right]=-\lambda \sqrt{1+\dot{y}^2}
$$

and get:

$$
L\left[x,\dot{x}\right]=(y-\lambda )\sqrt{1+\dot{y}^2}
$$

We apply the Beltrami identity:

$$
L-\dot{y}\partial _{\dot{x}}L = L-\dot{y}\frac{(y-\lambda )\dot{y}}{\sqrt{1+\dot{y}^2}}\text{      }
$$

$$
= (y-\lambda )\sqrt{1+\dot{y}^2}-\text{  }\frac{(y-\lambda )\dot{y}^2}{\sqrt{1+\dot{y}^2}} =\frac{y-\lambda }{\sqrt{1+\dot{y}^2}}
$$

and obtain  the differential equation:

$$
\frac{y-\lambda }{\sqrt{1+\dot{y}^2}}\text{  }=a, \dot{y}=\sqrt{\left(\frac{y-\lambda }{a}\right)^2-1}
$$

for some constant $a$. Separation of variables gives:

$$
\int \frac{dy}{\sqrt{\left(\frac{y-\lambda }{a}\right)^2-1}}=\int dx
$$

Setting $z=(y - \lambda )/a$ (and $dy=a dz$) gives:

$$
\int \frac{adz}{\sqrt{z^2-1}}=x - b
$$

for some constant $b$, so:

$$
\text{ArcCosh}[z]=\frac{x-b}{a}
$$

$$
z= \text{Cosh}\left[\frac{x-b}{a}\right]=\frac{y-\lambda }{a}
$$

$$
y=a \text{Cosh}\left[\frac{x-b}{a}\right]+\lambda
$$

We have $b=0$ because $y[-s]=y[s]$.

#### Snell{'s Law}

The speed of light depends on the medium. We are given two regions $R_0, R_1$ and two velocities $v_{0,}v_1$ indicating the speed of light on
each of them.
To get from $\left(
\begin{array}{cc}
 0 & 0 
\end{array}
\right)$ to $\left(
\begin{array}{cc}
 2 & 2 
\end{array}
\right)$, the light will take the path that minimizes the travel time $T[a]$which depends on the point $\left(
\begin{array}{cc}
 1 & y 
\end{array}
\right)$ where the light passes from $R_0$ to region $R_1$.

$$
T[y]=\frac{\sqrt{1+y^2}}{v_0}+\frac{\sqrt{1+(2-y)^2}}{v_1}
$$

$$
\frac{d}{dy}T[y]=\frac{y}{v_0\sqrt{1+y^2}}-\frac{2-y}{v_1\sqrt{1+(2-y)^2}}=0
$$

$$
=\frac{\text{Sin}\left[\theta _0\right]}{v_0}-\frac{\text{Sin}\left[\theta _1\right]}{v_{01}}
$$

So:

$$
\frac{\text{Sin}\left[\theta _0\right]}{v_0}=\frac{\text{Sin}\left[\theta _1\right]}{v_1}
$$

Generalizing the above we consider $n$ regions $R_0,\text{..},R_{n-1$ and $n$ velocities $v_{0,}\text{..},v_{n-1$ indicating the speed
of light on each of them. To get from $\left(
\begin{array}{cc}
 0 & 0 
\end{array}
\right)$ to $\left(
\begin{array}{cc}
 x_n & y_n 
\end{array}
\right)$, the light will take the path that minimizes the travel time $T\left[y_1,\text{..},y_n\right]$which depends on the points $\left(
\begin{array}{cc}
 x_j & y 
\end{array}
_j\right)$ where the light passes from $R_{j-1$ to region $R_j$.

$$
T[y]=\text{  }\sum _{j=0}^{n-1} \frac{\sqrt{\left(x_{j+1}-x_j\right){}^2+\left(y_{j+1}-y_j\right){}^2}}{v_j}
$$

$$
\partial _jT[y]=\frac{y_j-y_{j-1}}{v_{j-1}\sqrt{\left(x_j-x_{j-1}\right){}^2+\left(y_j-y_{j-1}\right){}^2}}-\frac{y_{j+1}-y_j}{v_j\sqrt{\left(x_{j+1}-x_j\right){}^2+\left(y_{j+1}-y_j\right){}^2}}=0
$$

So:

$$
\frac{\text{Sin}\left[\theta _{j-1}\right]}{v_j-1} =\frac{\text{Sin}\left[\theta _j\right]}{v_j}
$$

and:

$$
\frac{\text{Sin}\left[\theta _0\right]}{v_0}\text{=.}.=\frac{\text{Sin}\left[\theta _j\right]}{v_j} \text{=.}.=\frac{\text{Sin}\left[\theta _{n-1}\right]}{v_{n-1}}
$$

Generalizing the above we consider a scalar function $f:\mathbb{R}^n\to \mathbb{R$ which, for each point $x$, gives the action $f[x]$ required
to pass through $x$. What was $1/v$ in the previous example is now $f$. We want to compute a path $\gamma $ from $a$ to $b$ that minimizes
the action along that path. We assume that $\gamma $ is given by a function $x : [0, s] \text{-$>$\mathbb{R}^n$ with $x[0]=a$, $x[s]=b$. The
total action to be minimized is:

$$
A[x]=\text{  }\sum _{j=0}^{n-1} f\left[x_j\right]\left\| x_{j+1}-x_j\right\| =\sum _{j=0}^{n-1} f\left[x_j\right]\frac{\left\| x_{j+1}-x_j\right\|
}{t_{j-1}-t_j}\left(t_{j-1}-t_j\right)

\approx \int _0^sf[x[t]]\left\| \dot{x}[t]\right\| dt
$$

With the Lagrangian

$$
L\left[x,\dot{x}\right]=f[x]\left\| \dot{x}\right\|
$$

we get 

$$
L_x=\partial f[x]\left\| \dot{x}\right\|
$$

$$
L_{\dot{x}}=f[x]\frac{\dot{x}}{\left\| \dot{x}\right\| }
$$

$$
\frac{d}{dt}L_{\dot{x}}=\partial f[x]\frac{\dot{x}^2}{\left\| \dot{x}\right\| }+f[x]\left(\dot{x}-x \frac{\dot{x}\ddot{x}}{\left\| \dot{x}\right\|
^2}\right)
$$

and the Euler-Lagrange equation

$$
\partial f[x]\left\| \dot{x}\right\| ^2=\partial f[x]\dot{x}^2+f[x]\left\| \dot{x}\right\| \left(\dot{x}-x \frac{\dot{x}\ddot{x}}{\left\| \dot{x}\right\|
^2}\right)

\partial f[x]\left(\left\| \dot{x}\right\| ^2-\text{           }=\partial f[x]\dot{x}^2+f[x]\left\| \dot{x}\right\| \left(\dot{x}-x \frac{\dot{x}\ddot{x}}{\left\|
\dot{x}\right\| ^2}\right)\right.
$$

todo: Polarkoordinaten; f=1 -$>$ Gerade als k{\" u}rzesten Weg.

### Magnetic Field

The Lagrangian is 

$$
L\left[x,\dot{x}\right]=\frac{1}{2}m\dot{x}^2+e \dot{x}A[x]
$$

where $A:\mathbb{R}^3\to \mathbb{R}^3$ is the vector potential, $m$ the mass and $e$ the charge of the moving particle. We introduce

$$
B= \partial \times A
$$

as the magnetic field and the Lorentz force $F$exerted on a particle of charge $e$ as

$$
F=-e \left(\dot{x}\times B\right) =-e \partial _x\left(\dot{x}A[x]\right)
$$

The Euler - Lagrange equation for magnetic fields is:

$$
m \ddot{x}=-e \left(\dot{x}\times B\right)
$$

Proof: We compute the components:

$$
\partial _xL=e\partial _x\left(\dot{x}A[x]\right)=e\dot{x}\text{DA}[x]\mathsf{T}

\partial _{\dot{x}}L=m \dot{x}+e\partial _{\dot{x}}\left(\dot{x}A[x]\right)=m \dot{x}+e A[x]

\frac{d}{dt} \partial _{\dot{x}}L=m \ddot{x}+e \dot{x}\text{DA}[x]
$$

and plug them into Euler-Lagrange:

$$
\frac{d}{dt} \partial _{\dot{x}}L=\partial _xL

m \ddot{x}+e \dot{x}\text{DA}[x]=e\dot{x}\text{DA}[x]\mathsf{T}

m \ddot{x}=e \dot{x}(\text{DA}[x]\mathsf{T}- \text{DA}[x])
$$

Setting

$$
G =\text{DA}[x]\mathsf{T}- \text{DA}[x]=\left(
\begin{array}{ccc}
 . & . & . 
 . & \partial _iA_j-\partial _jA_i & . 
 . & . & . 
\end{array}
 \right)_{i=1,\text{..},nj=1,\text{..},n}=\left(
\begin{array}{ccc}
 0 & B_3 & -B_2 
 -B_3 & 0 & B_1 
 B_2 & -B_1 & 0 
\end{array}
\right)
$$

we get:

$$
m \ddot{x}=-e G\dot{x}=-e \dot{x}\times B
$$

Same procedure with indices: We compute the components

$$
L\left[x,\dot{x}\right]=\frac{m}{2}\sum _{j=1}^n \dot{x_j}{}^2+e\sum _{j=1}^n \dot{x}_jA_j[x]

\partial _{x_i}L=e\sum _{j=1}^n \dot{x}_j\partial _iA_j[x]\text{         }(i=1,\text{..},n)

\partial _{\dot{x}_i}L=m \dot{x}_i+e A_i[x]\text{            }(i=1,\text{..},n)

\frac{d}{dt} \partial _{\dot{x}_i}L=m\ddot{x}_i+e \sum _{j=1}^n \dot{x}_j\partial _jA_i[x]=e\sum _{j=1}^n \dot{x}_j\partial _iA_j[x]
$$

and plug them into Euler-Lagrange:

$$
m\ddot{x}_i=e\sum _{j=1}^n \dot{x}_j\partial _iA_j[x]-e \sum _{j=1}^n \dot{x}_j\partial _jA_i[x]

=e\sum _{j=1}^n \dot{x}_j\left(\partial _iA_j[x]-\partial _jA_i[x]\right)\text{   }(i=1,\text{..},n)
$$







$>>>$ todo

We are given a medium where the speed (of light or anything else) at point $x$ is given by $v[x]$.
We are to find a path $\phi$ from $\left(
\begin{array}{c}
 0 
 0 
\end{array}
\right)$ to $\left(
\begin{array}{c}
 1 
 1 
\end{array}
\right)$ that minimizes the travelling time $T[\phi ]$.

$$
T[\phi ]= \int _{\gamma }\frac{ds}{v}=\int_0^s \frac{\left\| \dot{\phi }[t]\right\| }{v[\phi [t]]} \, dt
$$

$$
A[\phi ]= \int _{\gamma }ads=\int _0^sa[\phi [t]]\left\| \dot{\phi }[t]\right\| dt
$$

