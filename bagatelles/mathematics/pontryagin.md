## Pontryagin's Principle
(Claude Sonnet 4.6)


````{prf:definition} Tensors
:label: def-problem

We are given

$A$ the set of actions  
$L: \mathbb{R}^n \times A \to \mathbb{R}$ the rate of cost of exerting control $a$ in state $x$ 
$f: \mathbb{R}^n \times A \to \mathbb{R}^n$ the transition function  
$\Psi: \mathbb{R}^n \times A \to \mathbb{R}$ the terminal cost if the process ends up in state $x$

In the interval [0, T] we can choose at time $t$ in state $x(t)$  an action $a(t)$ at the cost rate of $L(x(t), a(t))$. 
So, we have two functions

$a: [0, T] \to A$
$x: [0, T] \to \mathbb{R}^n$

with $x$ determined by $a$ through

$\dot{x} = f(x, a)$

The objective is to minimize

$J[a] = \int_0^T L(x(t), a(t)) \, dt + \Psi(x(T))$

over $a \in A$ and $T \ge 0$ subject to the boundary conditions

$x(0) = X_0$
$x(T) = X_T$
````

We introduce the function

$p: [0, T] \to \mathbb{R}^n$ 

and define the Hamiltonian as

$H(x, p, a) = p f(x, a) + L(x, a)$

The Hamiltonian equations are:

```{math}
- \dot{p} &= \partial_x H = p \partial_x f(x, a) + \partial_x L(x, a) \\
\dot{x} &= \partial_p H = f(x, a)
```
