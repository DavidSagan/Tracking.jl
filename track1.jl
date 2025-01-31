using GTPSA
using DifferentialEquations

tspan = (0.0, 1.0)
d = Descriptor(6,2)
vec0 = @vars(d)
g(u, p, t) = 1.01 * u
p2 = ODEProblem(g, vec0, tspan)
sol = solve(p2, Tsit5())
