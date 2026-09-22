using LinearAlgebra
using RowEchelon

# Worked/Seen on test sections

#======================================
= Be sure you can work these by hand. =
======================================#

# Problem 1
# 6x	 + 	2y	 + 	z	 = 	2
# y	 - 	z	 = 	-1
# -x	 - 	y	 - 	3z	 = 	-2

# (a)
A = [6 2 1; 0 1 -1; -1 -1 -3]
b = [2; -1; -2]

# (b)
# 3x3 or fancy version 3×3 (type 3 \times TAB 3)

# (c)
# (I) 3
# (II) 3

# (d)
3

# (e)
v1 = [6, 0, -1]
v2 = [2, 1, -3]
v3 = [1, -1, -3]
# or the lazy method while programming (be able to do by hand):
v1=A[:,1]
v2=A[:,2]
v3=A[:,3]

# (f)
det(A)
# Since the determinant is not 0, the column vectors are independent.

# (g)
# 3

# (h)
# (I) yes
# (II) no

# (i)
# NA

########################################################################

# Problem 2
# -x	 + 	2y	 + 	5z	 = 	2
# x			 - 	2z	 = 	0
# 4x	 - 	2y	 - 	11z	 = 	7

# (a)
A = [-1 2 5; 1 0 -2; 4 -2 -11]
b = [2; 0; 7]


# (b)
# 3x3 or fancy version 3×3 (type 3 \times TAB 3)

# (c)
# (I) 3 
# (II) 3

# (d) 3

# (e)
v1 = [-1, 1, 4]
v2 = [2, 0, -2]
v3 = [5, -2, -11]
# or the lazy method while programming (be able to do by hand):
v1=A[:,1]
v2=A[:,2]
v3=A[:,3]

# (f)
det(A)
# No since det(A) = 0, the column vectors are dependent.

# (g)
rref(A)
# Since the largest identity matrix in the rref is 2x2, it is 2.

# (h)
# NA


# (i)
rref([A b])
# No since there is a row of zeros followed by a non-zero value.
# II best represents the geometry.

########################################################################

# Problem 3
# x	 - 	2y	 + 	z	 = 	3
# 2x	 - 	5y	 + 	6z	 = 	7
# 2x	 - 	3y	 - 	2z	 = 	5

# (a)
A = [1 -2 1; 2 -5 6; 2 -3 -2]
b = [3; 7; 5]


# (b)
# 3x3 or fancy version 3×3 (type 3 \times TAB 3)

# (c)
# (I) 3 
# (II) 3

# (d) 3

# (e)
v1 = [1; 2; 2]
v2 = [-2; -5; -3]
v3 = [1, 6, -2]
# or the lazy method while programming (be able to do by hand):
v1=A[:,1]
v2=A[:,2]
v3=A[:,3]

# (f)
det(A)
# No since det(A) = 0, the column vectors are dependent.

# (g)
rref(A)
# Since the largest identity matrix in the rref is 2x2, it is 2.

# (h)
# NA

# (i)
rref([A b])
# Yes since the row of zeros is followed by a zero value.
# I best represents the geometry.