using GTPSA
using DifferentialEquations

function drift(u, p, t)
  rel_pc = 1.0 + u[6]
  px_rel = u[2] / rel_pc
  py_rel = u[4] / rel_pc
  pxy2 = px_rel^2 + py_rel^2
  ps_rel = sqrt(1.0 - pxy2)

  utyp = typeof(u[1])
  du = Vector{utyp}(undef, length(u))

  du[1] = px_rel / ps_rel
  du[2] = utyp(0)
  du[3] = py_rel / ps_rel
  du[4] = utyp(0)
  du[5] = utyp(0)
  du[6] = utyp(0)

  return du
end

tspan = (0.0, 2.0)
d = Descriptor(6,2)
vec0 = @vars(d)

p2 = ODEProblem(drift, vec0, tspan)
sol = solve(p2, Tsit5())
