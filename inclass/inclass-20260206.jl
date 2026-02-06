using LinearAlgebra
using RowEchelon

# HarMathAp12 3.3.013
A = [2 -6 -12; 3 -10 -20; 2 0 -17]
b = [-10, -21, -25]
det(A)
x = A\b

# HarMathAp12 3.3.015
A = [1 -2 3 1; 1 -3 1 -1;1 -1 0 0;1 0 1 1]
b = [-2, -7, -2, 2]
det(A)
x = A\b

# HarMathAp12 3.3.023.MI
A = [1 1 1; 4 -1 -1; -1 4 4]
b = [0, 0, 0]
det(A)
Aaug = hcat(A, b)
rref(Aaug)

# HarMathAp12 3.3.025
A = [3 2 1; 1 1 2; 2 1 -1]
b = [0, 2, -1]
det(A)
Aaug = hcat(A, b)
rref(Aaug)