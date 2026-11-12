# Special Relativity in a Nutshell

*Johannes Siedersleben, November 2026*



## $t$ and $\tau$

```{math}
\tau^2 &= t^2 - x^2       \\
\tau &= \sqrt{t^2 - x^2}  \\
```

```{math}
x &= vt                   \\
\tau^2 &= t^2(1 - v^2)    \\
\tau &= t \sqrt{1 - v^2}  \\
v \tau &= x \sqrt{1 - v^2} < x
```


```{math}
\frac{dt}{d\tau} &= \frac{1}{\sqrt{1 - v^2}}  > 1 \\
\frac{d\tau}{dt} &= \sqrt{1 - v^2}  < 1           \\
d\tau &= dt \sqrt{1 - v^2}
dt &= \frac{d\tau}{\sqrt{1 - v^2}} 
```


```{math}
\gamma(v) &= \frac{1}{\sqrt{1 - v^2}} & \\
\gamma(v) &= \frac{t}{\tau} &> 1        \\
\frac{1}{\gamma(v)} &= \frac{\tau}{t} &< 1
```


## Fourvectors $x$, $v$, $u$

```{math}
x = \begin{bmatrix}
        x_0 = t \\  
        x_1 \\  
        x_2 \\ 
        x_3
\end{bmatrix}
```

```{math}
v &= \frac{dx}{dt}  \\
u &= \frac{dx}{d\tau} =  \frac{dx}{dt} \frac{dt}{d\tau} = \gamma(v) v
```

```{math}
v = \begin{bmatrix}
        v_0 = 0 \\  
        v_1 \\  
        v_2 \\ 
        v_3
\end{bmatrix}
```

```{math}
x_{\mu}x^{\mu} &= x_0^2 - (x_1^2 + x_2^2 + x_3^2) \\
v_{\mu}x^{\mu} &= 1 - (v_1^2 + v_2^2 + v_3^2)    \\ 
u_{\mu}x^{\mu} &= \gamma^2  v_{\mu}x^{\mu} = 1
```

## An Integral

```{math}
d\tau &= dt \sqrt{1 - v^2}            \\
\frac{dt}{d\tau} &= \frac{1}{\sqrt{1- v(t)^2}} \\
\tau(T) &= \int_{0}^T dt \sqrt{1 - v^2} &=  \int_{0}^{\tau(T)} d\tau \\ 
t(\mathcal{T}) &= \int_0^{\mathcal{T}} \frac{d\tau}{\sqrt{1- v(t)^2}}
```

## Lagrangians

Newtonian Lagrangian with an arbitrary constant $-m$ added.

```{math}
L(x,v) &= \frac{1}{2}mv^2 - m               \\
p &= \frac{\partial L}{\partial v} &= mv    \\ 
E &= pv - L &= \frac{1}{2}mv^2
```
An approximation

```{math}
\frac{1}{2}mv^2 - m \\
  &\approx -m + m\frac{1}{2}v^2) + m\frac{1}{8}v^3) + 0(v^4)  \\
  &= -m \sqrt{1-v^2}     
```

Relativistic Lagrangian

```{math}
L(x,v) &= -m \sqrt{1-v^2}               \\
p &= \frac{\partial L}{\partial v} &= m \frac{v}{\sqrt{1-v^2} &= m u    \\ 
E &= pv - L &= \frac{m}{\sqrt{1-v^2} &= m u_0
E^2 - p^2 &= p_{mu} p^{mu} &= m^2
```

