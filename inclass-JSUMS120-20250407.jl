include("JSUMS120-vscode.jl")

begin
	x = symbols("x", real = true)
	h = Sym("h")
	C = Sym("C")
	∞ = oo
end

### Your code goes below ########################################################
f(x) = x^3
functionplot(f(x), (-2,2))
signcharts(f(x); domain = "[-2, 2]")
plot_function_sign_chart(f(x), (-2,2))

f(x) = x^3+x^2-x+6
signcharts(f(x); domain = "[-3,1]")
f(-3)
diff(f(x))

R(x) = 44x-.01x^2
signcharts(R(x))
R(2200)
# max hammers = 1600
R(1600)
functionplot(R(x), (0, 3000))