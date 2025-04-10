include("JSUMS120-vscode.jl")

begin
	x = symbols("x", real = true)
	h = Sym("h")
	C = Sym("C")
	∞ = oo
end

### Your code goes below ########################################################
f(x) = x^2
int(f(x), x)

f(x) = x^1.5
int(f(x), x)

f(x) = x^(3/2)
int(f(x), x)

f(x) = x^(3//2)
int(f(x), x)

f(x) = x^2
int(f(x), x, 0, 2)

f(x) = x^2
int(f(x), x, 0, 2.0)