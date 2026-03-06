comb(n,x) = factorial(n)/(factorial(n-x)*factorial(x))

function bin(x, n, p)
    comb(n, x)*p^x*(1-p)^(n-x)
end

bin(5, 6, 0.267)+bin(6, 6, 0.267)

bin.([0,1,2], 2, .5)

collect(0:3)
bin.(0:3, 3, 1/3)