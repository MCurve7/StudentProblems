"""
    binomial_pmf(x; n, p, digits = 4)

Calculates the probability of `x` from the Binomial distribution with parameters

# Arguments
- `x`: input
- `n`: number of trials
- `p`: probability of success for each trial
- `digits`: number of digits to round the answer to
"""
binomial_pmf(x; n, p, digits = 4) = round(binomial(n, x)*p^x*(1-p)^(n-x), digits=digits)

function binomial_cdf(x; n, p, digits = 4)
    sum = 0
    for i in 0:x
        sum += binomial_pmf(i; n, p, digits=10)
    end
    round(sum, digits=digits)
end

# Ex 9
n=2
p=0.5
binomial_pmf.(0:2; n, p)
binomial_cdf.(0:2; n, p)

# Ex 10
n=3
p=1/3
binomial_pmf.(0:n; n, p)
binomial_cdf.(0:n; n, p)

# Ex 11
n=5
p=0.75
binomial_pmf.(0:n; n, p)
binomial_cdf.(0:n; n, p)