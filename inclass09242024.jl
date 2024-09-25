using LinearAlgebra

A = [1 1; 1 -2]
b = [2; -1]
det(A)
x,y = A\b

A = [1 1; 2 2]
det(A)


A = [1 1; 1 1]
det(A)

using RowEchelon
#Ex 1
A = [1 1 2; 1 -2 -1] # augmented matrix
rref(A)

# Ex 2
A = [1 1; 2 2]
det(A)
b = [1; 2]
x,y = A\b

# Ex 3
A = [1 1 1; 2 2 2]
rref(A)

A = [1 1; 1 1]
det(A)

A = [1 1 2; 1 1 -1]
rref(A)

# Ex 4
A = [1 2 1; 2 1 2; 3 3 3]
det(A)

A = [1 2 1 2; 2 1 2 1; 3 3 3 3]
rref(A)

# Ex 5
A = [1 2 1; 2 1 2; 3 3 3]
det(A)

A = [1 2 1 2; 2 1 2 1; 3 3 3 0]
rref(A)

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