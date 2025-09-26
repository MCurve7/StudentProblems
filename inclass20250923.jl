using RowEchelon
using LinearAlgebra

A = [1 1; 2 2]
det(A)
Aaug = hcat(A, [1,2])

rref(Aaug)

A = [1 1 1; 2 1 1;3 2 2]
det(A)
Aaug = hcat(A, [1;2;3])
rref(Aaug)

# Ex 3
# x+y = 2
# x+y = -1
A = [1 1;1 1]
det(A)
Aaug = [1 1 2; 1 1 -1]
rref(Aaug)

# Ex 4
A = [1 2 1; 2 1 2; 3 3 3]
det(A)
Aaug = hcat(A, [2,1,3])
rref(Aaug)

# Ex 5
# A = [1 2 1; 2 1 2; 3 3 3]
A
A[1,3]
det(A)
Aaug[3,4] = 0
Aaug
rref(Aaug)

# 1.5.037
A = [.1 .18; 1 1]
det(A)
b = [20030, 145900]
x = A\b

# 1.5.44
A = [.55 .51; .45 .49]
det(A)
b = [2100, 1900]
x = A\b

# 1.5.051
A = [1 0 -1; 1 -5 0; 2 20 14]
det(A)
b = [0,0,100]
x = A\b