factorial(4)

function binom(x; n=5, p=0.5)
    q = 1-p
    binomial(n,x)*p^x*q^(n-x)
end

n=6
p=0.2
binom(4; n=6, p=0.2)

collect(0:6)

b = [binom(x; n=n, p=p) for x in 0:6]

b = round.(b, digits = 4)

b[1]
b[2]
b[3]
b[4]
b[5]
b[6]
b[7]

n=6
p=0.5
b = round.([binom(x; n=n, p=p) for x in 0:6], digits = 4)

n=6
p=0.2
b = round.([binom(x; n=n, p=p) for x in 0:6], digits = 4)

# the dot broadcasts over the vector
b = [binom(x; n=n, p=p) for x in 0:6]
round.(b; digits=2)
b.^2

n=7
p=0.3
binom(2; n=n, p=p)
b = round.([binom(x; n=n, p=p) for x in 0:6], digits = 4)

n=7
p=0.7
binom(7; n=n, p=p)

binom(5; n=n, p=p)+binom(6; n=n, p=p)+binom(7; n=n, p=p)
sum([binom(x; n=n, p=p) for x in 5:7])

n=2
p=0.5
binom(1; n=n, p=p)
binom(2; n=n, p=p)

n=10
p=0.1
binom(2; n=n, p=p)
binom(0; n=n, p=p)
binom(0; n=n, p=p)+binom(1; n=n, p=p)+binom(2; n=n, p=p)
sum([binom(x; n=n, p=p) for x in 0:2])

n=6
p=0.267
binom(4; n=n, p=p)
[binom(x; n=n, p=p) for x in 5:n]
sum([binom(x; n=n, p=p) for x in 5:n])

n = 2
p = .5
b = [binom(x; n=n, p=p) for x in 0:n]
b

b[1]
b[1:2]
b[1:3]

v = collect(1:10)
v[2:5]  