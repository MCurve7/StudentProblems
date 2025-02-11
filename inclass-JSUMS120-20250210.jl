include("JSUMS120-vscode.jl")

begin
	x = symbols("x", real = true)
	h = Sym("h")
	C = Sym("C")
	∞ = oo
end

### Your code goes below ########################################################
f(x) = 1/x
limittable(f, 0; dir = "-", rows = 12)
limittable(f, 0; dir = "+", rows = 12)

lim(f, x, 0) # missing = DNE because
lim(f, x, 0; dir = "-")
lim(f, x, 0; dir = "+")
# and they do NOT agree

g(x) = 1/x^2
limittable(g, 0; dir = "-", rows = 12)
limittable(g, 0; dir = "+", rows = 12)
limittable(g, 0;rows = 12)

lim(g(x), x, 0) # because
lim(g, x, 0; dir = "-")
lim(g, x, 0; dir = "+")
# and they do agree