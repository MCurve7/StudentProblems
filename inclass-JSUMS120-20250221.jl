include("JSUMS120-vscode.jl")

begin
	x = symbols("x", real = true)
	h = Sym("h")
	C = Sym("C")
	∞ = oo
end

### Your code goes below ########################################################
f(x) = 2x+3
functionplot(f(x), (-5,5))

f(x) = -5*x^3+7x^2-9x+3
functionplot(f(x), (-5,5))

f(x) = (x^2+5x+6)/(x+2)
functionplot(f(x), (-5,5))

f(x) = x/(x^2+2)
functionplot(f(x), (-5,5))

f(x) = 33/(x+7)^(2/5)
functionplot(f(x), (-10,5))

ans = lim(f(x), x, 24)
f(24)

l1(x) = 1/x
limittable(l1(x), oo; rows = 10, format="%2.12f")
limittable(l1(x), -oo; rows = 10, format="%2.12f")

l2(x) = 1/x^2
limittable(l2(x), ∞; rows = 10, format="%2.12f")
limittable(l2(x), -∞; rows = 10, format="%2.12f")
lim(l2(x), x, oo)

l3(x) = 1/(x-1)
lim(l3(x), x, -oo)
lim(l3(x), x, oo)

l4(x) = x/(x-1)
lim(l4(x), x, -oo)
lim(l4(x), x, oo)
limittable(l4(x), ∞; rows = 10, format="%2.12f")

l5(x) = (2x^2-3x)/(x^2+9)
lim(l5(x), x, -oo)
lim(l5(x), x, oo)

functionplot(l1(x), (-10,10), yrange=(-10,10))
functionplot(l2(x), (-10,10), yrange=(-10,10))
functionplot(l3(x), (-10,10), yrange=(-10,10))
functionplot(l4(x), (-10,10), yrange=(-10,10))
functionplot(l5(x), (-10,10), yrange=(-10,10))

