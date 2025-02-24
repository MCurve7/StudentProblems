include("JSUMS120-vscode.jl")

begin
	x = symbols("x", real = true)
	h = Sym("h")
	C = Sym("C")
	∞ = oo
end

### Your code goes below ########################################################
f(x) = x^2
f(3)
functionplot(f, (-3, 3))