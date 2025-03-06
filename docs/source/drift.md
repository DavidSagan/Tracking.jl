# Drift Tracking

The exact map for a `Draft` element is
```{math}
:label: drift_map
\begin{align}
  x_2    &= x_1 + \frac{L \, p_{x1}}{p_l} \\ 
  p_{x2} &= p_{x1}  \\
  y_2    &= y_1 + \frac{L \, p_{y1}}{p_l} \\
  p_{y2} &= p_{y1}  \\
  z_2    &= z_1 + \left( \frac{\beta}{\beta_{ref}} - \frac{1 + p_{z1}}{p_l} \right) \, L \\
         &= z_1 + \left[ 
          s_{q1} \left( \frac{m^2 \, (2 \, p_{z1} + p_{z1}^2)}{E_{ref}^2} \right) +
          s_{q1} \left( \frac{-p_{xy}}{p_l} \right)
         \right] \, L \\
  p_{z2} &= p_{z1}
\end{align}
```
where {math}`\beta` is the normalized particle velocity, {math}`\beta_{ref}` is the reference particle's
normalized velocity, {math}`E_{ref}` is the reference energy, 
and {math}`p_l` is the normalized longitudinal momentum
```{math}
:label: pl
  p_l \equiv \frac{P_l}{P_0} = \sqrt{(1 + p_z)^2 - p_{xy2}}
```
with {math}`P_l` being the longitudinal momentum, {math}`P_0` being the reference momentum,
```{math}
:label: pxy2
  p_{xy2} \equiv  p_x^2 + p_y^2
```
and
```{math}
:label: sq1
  s_{q1}(x) \equiv  \sqrt{1 + x} - 1
```
The problem with the first equation for {math}`z_2` above is that it is subject to round off error
so in practice the second {math}`z_2` equation is used.