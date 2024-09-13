# Let's multiply the following matrices
A1 = [1 2; 3 4]
B1 = [6 7;8 9]
# Note that the order you multiply teh matrices makes a difference
A1*B1
B1*A1

# Solve
# 2x -  6y - 12z = -20 \\
# 3x - 10y - 20z = -38 \\
# 2x       - 17z = -40\\
# Coefficient matrix
A = [2 -6 -12;3 -10 -20;2 0 -17]
Ainv = inv(A)
A*Ainv
# This results in an identity matrix

A*A

I = [1 0 0; 0 1 0; 0 0 1]
A
A*I
I*A

# Constant vector
b = [-20; -38; -40]
# To solve
x = Ainv*b

# 1.5.Ex1
A = [1 1; 1 -2]
b = [2; -1]
x = inv(A)*b

# 1.5.Ex9
A = [1 -3 1; 0 1 -1; 0 0 1]
b = [0; 3; -2]
x = inv(A)*b

# WRONG!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
b*inv(A)

# Ex next
A = [1 2 3; 2 -1 0; 1 2 3]
b = [1; 2; 2]
x = inv(A)*b

# 1.5.Ex 2 Parallel lines
A = [1 1;1 1 ]
b = [2; -1]
x = inv(A)*b

# 1.5.Ex 3 Same line
A = [1 1;2 2]
b = [1;2]
x = inv(A)*b

# 1.5.Ex9 again
A = [1 -3 1; 0 1 -1; 0 0 1]
b = [0; 3; -2]
x = A\b

# determinant
using LinearAlgebra # Needed for the determinant function: det(A)
A = [1 -3 1; 0 1 -1; 0 0 1]
det(A)

A = [1 1;1 1 ]
det(A)

A = [1 1;2 2]
det(A)

# 1.5.Ex9 Part deux
A = [1 -3 1; 0 1 -1; 0 0 1]
det(A)
# if det(A) ≠ 0 then proceed
b = [0; 3; -2]
x = A\b

# 1.6.044
A = [1 2;1 -8]
det(A)
b = [318; 1]
x = A\b

# 1.6.049.EP
A = [5 4; 9 -8]
det(A)
b = [1820; -1284]
q, p = A\b
q
p