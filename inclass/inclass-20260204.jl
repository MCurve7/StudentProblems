A = [1 2 3; 2 -1 0; 1 2 3]
b = [1,2,2]

x = A\b

using LinearAlgebra
det(A)

A = [1 -1 1; 3 0 2; 1 -4 2]
b = [5,13,7]

x = A\b
det(A)

A = [2 -6 -12; 3 -10 -20; 2 0 -17]
det(A)

x = A\b

A = [1 1; 1 2]
b = [2,-1]

det(A)
x,y = A\b
x
y

A = [1 1; 2 2]
b = [1,2]
det(A)

A = [1 1; 1 1]
b = [2,-1]
det(A)

using RowEchelon

A = [1 1 2; 1 2 -1]
rref(A)

# Ex 2
A = [1 1; 2 2]
det(A)
b = [1,2]
hcat(A,b)
rref(hcat(A,b))

# Ex 3
A = [1 1; 1 1]
b = [2, -2]
det(A)
rref(hcat(A,b))

# Ex 4
A = [1 2 1; 2 1 2; 3 3 3]
b = [2,1,3]
det(A)
Aaug = [1 2 1 2; 2 1 2 1; 3 3 3 3]
rref(Aaug)

# 3.3.013
A = [2 -6 -12; 3 -10 -20; 3 0 -17]
b = [6, 5, -4]
det(A)
x = A\b
x,y,z = A\b
x
y
z
# (15.00, -1.76, 2.88)

# 3.3.025
A = [3 2 1; 1 1 2; 2 1 -1]
b = [0,2,-1]
det(A)
A\b # fake solution
Aaug = hcat(A,b)
rref(Aaug)
# No solution