permutation(n, r)::Int = factorial(n) / factorial(n - r) # the ::Int makes the return type an integer

combinations(n, r)::Int = binomial(n, r) # the ::Int makes the return type an integer

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

"""
    binomial_cdf(x; n, p, digits = 4)

Calculates the cumulative probability for `X ≤ x` from the Binomial distribution with parameters

# Arguments
- `x`: input
- `n`: number of trials
- `p`: probability of success for each trial
- `digits`: number of digits to round the answer to
"""
function binomial_cdf(x; n, p, digits = 4)
    sum = 0
    for i in 0:x
        sum += binomial_pmf(i; n, p, digits=10)
    end
    round(sum, digits=digits)
end

##########################################################################################
factorial(5)

permutation(5,2)
combinations(5,2)
binomial_pmf(2; n=4, p=0.25)
binomial_cdf(2; n=4, p=0.25)

R = Set([1,2])
O = Set([1,3,5,7,9])
union(R, O) 
R ∪ O # \cup TAB
intersect(R, O)
R ∩ O # \cap TAB

##########################################################################################
# Ex 4
binomial_pmf(4; n=6, p=0.2)
binomial_pmf(0; n=6, p=0.2)
1-binomial_pmf(0; n=6, p=0.2)

# Ex 5
#1
binomial_pmf(2; n=7, p=0.3)
#2
binomial_pmf(7; n=7, p=0.7)
#3
binomial_pmf(5; n=7, p=0.7)+binomial_pmf(6; n=7, p=0.7)+binomial_pmf(7; n=7, p=0.7)

#4
binomial_pmf(1; n=2, p=0.5)
binomial_pmf(2; n=2, p=0.5)

#5
binomial_pmf(2; n=10, p=0.1)
binomial_pmf(0; n=10, p=0.1)
binomial_pmf(0; n=10, p=0.1)+binomial_pmf(1; n=10, p=0.1)+binomial_pmf(2; n=10, p=0.1)

#6
binomial_pmf(4; n=6, p=0.267)
binomial_pmf(5; n=6, p=0.267)+binomial_pmf(6; n=6, p=0.267)

#9
binomial_pmf(0; n=2, p=0.5)
binomial_pmf(1; n=2, p=0.5)
binomial_pmf(2; n=2, p=0.5)

binomial_cdf(0; n=2, p=0.5 )
binomial_cdf(1; n=2, p=0.5 )
binomial_cdf(2; n=2, p=0.5 )

#10
binomial_pmf(0; n=3, p=1/3)
binomial_pmf(1; n=3, p=1/3)
binomial_pmf(2; n=3, p=1/3)
binomial_pmf(3; n=3, p=1/3)

binomial_cdf(0; n=3, p=1/3)
binomial_cdf(1; n=3, p=1/3)
binomial_cdf(2; n=3, p=1/3)
binomial_cdf(3; n=3, p=1/3)

#15
0.9891-0.9295
1-0.9590

#16
0.0834-0.0196