using LinearAlgebra
using RowEchelon

"""
To summarize how to solve the homework probelms:
1) Make coefficient matrix and check determinant:
    A = [1 1; 2 2]
    det(A)

2) if det(A) ≠ 0 make constant vector b and solve:
    b = [1; 2]
    x,y = A\b

3) if det(A) = 0 make augmented matrix and use rref. Two cases:
3a) All zero row:
    A = [1 1 1; 2 2 2]
    rref(A)
    >
    2×3 Matrix{Float64}:
    1.0  1.0  1.0
    0.0  0.0  0.0
    
    Then the system is consistant but dependent and has an infinite number of solutions

3b) There is a row with all zeros except the last column which is non-zero:
    A = [1 1 2; 1 1 -1]
    rref(A)
    >
    2×3 Matrix{Float64}:
    1.0  1.0  0.0
    0.0  0.0  1.0

    Then the system is inconsistant and has no solutions.
"""
# EX pg 85
A = [2 -6 -12; 3 -10 -20; 2 0 -17]
det(A) 
# consistent, independent, 1
b = [-20; -38; -40]
x, y, z = A\b
x
y
z
# (14, 0, 4)

# Ex 4
A = [1 2 1; 2 1 2; 3 3 3]
det(A)
A = [1 2 1 2; 2 1 2 1; 3 3 3 3] #augmented matrix
rref(A)
# consistent, dependent, infinite number of solutions
# x+z = 0 => x = -z
# y = 1
# z = z
# (-z, 1, z) or Kaufmann (-k, 1, k)

# Ex 5
A = [1 2 1; 2 1 2; 3 3 3]
det(A)

A = [1 2 1 2; 2 1 2 1; 3 3 3 0]
rref(A)
# inconsistent, no solutions