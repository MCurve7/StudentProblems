include("JSUMS120-vscode.jl")

begin
	x = symbols("x", real = true)
	h = Sym("h")
	C = Sym("C")
	∞ = oo
end

### Your code goes below ########################################################
D(x) = 100+36x-0.03x^2
D(101)
D(100)
D(101)-D(100)
AC(x)=D(x)/x
AC(100)