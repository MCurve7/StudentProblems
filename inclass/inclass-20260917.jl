using LinearAlgebra
using RowEchelon

# x+y=2
# x-2y=-1
# We will write this as Av=b
A = [1 1;1 -2]
b = [2,-1]
det(A)
v = A\b
# Using the same A:
A
# v=[1,1]
A*v # This maps back to the vector b = [2,-1]

# Let's let u be the vector:
u=[-2,3]
b = A*u

# Now let's solve Ax=b for the vector [x,y]:
# Still using A from above and the b=[1,-8] calculated above:
x,y = A\b
# [x,y] = [-2,3] = u

###########################################################################
# Basis ###################################################################
# Recall that identity matrices look like:
# 2x2
# [1 0]
# [0 1]
Matrix(I, 2, 2)
# 3x3
# [1 0 0] 
# |0 1 0|
# [0 0 1]
Matrix(I, 3, 3)
# etc

# Ex #####################################################################
# Is c_1 = [1,1] and c_2 = [1,-2] a basis for R^2
# Make c_1 and c_2 into a matrix
Ais=[1 1; 1 -2]
det(Ais)
# Since det(A) ≠ 0, c_1 and c_2 are basis vectors
# Another view:
rref(Ais)
# since rref(Ais) is the identity matrix, c_1 and c_2 are basis vectors.

# Ex "not" ################################################################
Anot = [1 1; 2 2]
det(Anot)
# Since det(A) = 0, c_1 and c_2 are not basis vectors
# or
rref(Anot)
# since rref(A) is not the identity matrix, c_1 and c_2 are not basis vectors.

# Ex inclass1 #################################################################
# Let c_1=[1,-3] and c_2=[7,8]
# Which is the correct matrix made from these column vectors?
A1 = [1 -3; 7 8]
A2 = [1 7; -3 8]
# A2 is the correct matrix for colum vectors c_1 and c_2.
# Do vectors c_1 and c_2 form a basis for R^2 given that:
det(A2)
rref(A2)

# Interestingly...
det(A1)
rref(A1)

# Ex inclass2 ##################################################################
# Let c_1=[1,-3, 1], c_2=[2,1,3], and c_3 = [4, -5, 5]
# Which is the correct matrix made from these column vectors?
A1 = [1 2 4; -3 1 -5; 1 3 5]
A2 = [1 -3 1; 2 1 3; 4 -5 5]
# A1 is the correct matrix for colum vectors c_1, c_2, c_3.
# Do vectors c_1, c_2, c_3 form a basis for R^3 given that:
det(A1)
rref(A1)
# no, because det(A1) = 0 or because rref(A1) is not the identity matrix.
c_1 = [1, -3, 1]
c_2 = [2, 1, 3]
c_3 = [4, -5, 5]
2*c_1+c_2 # = c_3 so c_3 is a linear combination of c_1 and c_2

# Interestingly...
det(A2)
rref(A2)

# Ex ############################################################################
# x+y-z = -8
# x+2y+3z = -13
# 2x-y-13z = 2
c_1 = [1, 1, 2]
c_2 = [1, 2, -1]
c_3 = [-1, 3, -13]
A = [c_1 c_2 c_3]
b = [-8, -13, 2]
det(A)
rref(A)
x,y,z = A\b
# why is [x,y,z] = [12, -17, 3] the solution to the system of equations?
d = [x, y, z]
A*d