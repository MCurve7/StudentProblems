# Enter package manager with `]`
# `activate .`
# Leave package manager with `backspace`

2+3

x = 2+3

x

x+7

# Matrix multiplication
A = [1 2; 3 4]
B = [6 7; 8 9]

A*B
B*A

# Inverse matrix
# ex
A = [2 -6 -12; 3 -10 -20; 2 0 -17]

Ainv = inv(A)

A*Ainv

# Solve system of equations
# 2x − 6y − 12z = −20
# 3x − 10y − 20z = −38
# 2x - 0y − 17z = −40

A = [2 -6 -12; 3 -10 -20; 2 0 -17]
b = [-20, -38, -40]
#b = [-20; -38; -40]

Ainv = inv(A)

x = Ainv*b
# OR
x = A\b

#ex
# x + 2y + 3z = 1
# 2x − y +0z = 2
# x + 2y + 3z = 2
A = [1 2 3; 2 -1 0; 1 2 3]
b = [1, 2, 2]

# Instead of Ainv = inv(A)
x = A\b
det(A)

# Enter package manager with `]`
# add LinearAlgebra