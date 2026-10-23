using Markdown

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
# This didn't save so I'm trying to recreate what I think I did in class.
#Ch 8.1,3#################################################################################
# Ex 17
# X = # of properties sold
# n = 18, p = 0.3
# P(X ≥ 5) = 1 - P(X ≤ 4)
# P(X ≤ 4) =
0.3327 # Read from table or use binomial_cdf(4; n=18, p=0.3)
binomial_cdf(4; n=18, p=0.3)
# P(X ≥ 5) =
1 - binomial_cdf(4; n=18, p=0.3)

# Ex 18
# X = # defective bulbs
# n = 13, p = 0.2
# Fails inspection if X ≥ 1
# P(Fails) = P(X ≥ 1) = 1 - P(X ≤ 0) = 1 - P(X = 0)
# Table lookup or binomial_pmf(0; n=13, p=0.2)
0.0550
binomial_pmf(0; n=13, p=0.2)
# P(Fails) = P(X ≥ 1) =
1-binomial_pmf(0; n=13, p=0.2)

# Ex 19
# X = # survive
# n = 9, p = 0.3 (Note the problem gives probability of being killed (70%), so probability of surviving is 1-0.7 = 0.3)
# P(X = 4) = table or binomial_pmf(4; n=9, p=0.3)
0.1715
binomial_pmf(4; n=9, p=0.3)

#Ch 9.1###################################################################################
s(t) = t^2

v_avg(t) = (s(t) - 4)/(t - 2)
v_avg(2)
# We are getting NaN since s(2) = 4, so we are dividing by 0. Let's try some values of t that are close to 2.
v_avg(1)
v_avg(1.5)
v_avg(1.9)
v_avg(1.99)
v_avg(1.999)
# This is a bit tedious, so let's use a vector of values for t that are close to 2.
tl = [1, 1.5, 1.9, 1.99, 1.999, 1.9999]
# and ujsing broadcasting, we can calculate the average velocity for all of these values of t at once.
v_avg.(tl)

# Now from the right:
tr = [3, 2.5, 2.1, 2.01, 2.001, 2.0001]
v_avg.(tr)
# We can see that as t approaches 2 from the left, the average velocity approaches -4, and as t approaches 2 from the right, the average velocity approaches -4. 
# Therefore, we can conclude that the instantaneous velocity at t = 2 is -4.

##########################################################################################
# Let's find limit of s(t)=t^2 as t approaches 2 from the left and right.
# Defined s(t)=t^2 above
tl=[1, 1.5, 1.9, 1.99, 1.999]
s(tl)
# We got an error since the function s only knows how to handle a single value of t, not a vector of values. 
# We can fix this by using broadcasting, which is done by adding a dot after the function name and before the parentheses. 
# This tells Julia to apply the function to each element of the vector individually.
s.(tl)
# Note the pattern.
# Let's predict that s(1.9999) = 3.99960001
s(1.9999)

tr=[3.0, 2.5, 2.1, 2.01, 2.001]
s.(tr)
# Let's predict that s(2.0001) = 4.00040001
s(2.0001)
# Yep, so the limit of s(t)=t^2 as t approaches 2 is 4.

##########################################################################################
# Let 
# f(x) = 
# x^2  , x ≤ 2
# 3x-1 , x > 2
# Let's find the limit of f(x) as x → 2.
function f(x)
    if x ≤ 2
        return x^2
    elseif x > 2
        return 3x-1
    end
end

xl=[1.0, 1.5, 1.9, 1.99, 1.999, 1.9999]
f.(xl)
# We probably know the limit if we can predict f(1.99999).
# f(1.99999) =? 3.9999600001
f(1.99999)
# With rounding (because of floating point arithmetic) 3.9999600000999997 = 3.9999600001 that checks out.

xr=[3.0, 2.5, 2.1, 2.01, 2.001, 2.0001]
f.(xr)
# We probably know the limit if we can predict f(2.00001).
# f(2.00001) =? 5.000030000
f(2.00001)
# With rounding (because of floating point arithmetic) 5.000030000000001 = 5.000030000 that checks out.

# Since the limit from the left is 3.9999600001 and the limit from the right is 5.000030000, 
# we know that the limit of f(x) as x → 2 does not exist.
##########################################################################################