include("JSUMS120-vscode.jl")

begin
	x = symbols("x", real = true)
	h = Sym("h")
	C = Sym("C")
	∞ = oo
end

### Your code goes below ########################################################
f(x) = x^3-5x^2+3x+2
g(x)=diff(f(x))
signchart(g(x))
functionplot(f(x), (-2,5))

f(3)
f(0.33)
f(6)

functionplot(f(x), (0,4); domain="[0,4]")