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