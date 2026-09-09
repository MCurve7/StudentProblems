# Start by making sure that you have opened the folder that your code lives in.

# Make a new file and make sure that the extension is `.jl` (for example, `inclass-20260908.jl`).

# Next we need to activate the project environment for this directory.
# Goto the REPL 
#> To get to the REPL if you are using VS Code and have added the Julia Language Support extension...
#> Type ALT-j ALT-o (or you can just execute a line of code but the key-chord is better) and that will start the REPL
# In the REPL, type `]` and you'll see `(@1.12) pkg>` (or whatever your current Julia version is).
# Enter the project environment for this directory by typing `activate .` (the dot is important) and hitting ENTER.
# Since my folder is called `Julia` I will see `(Julia) pkg>`,
# you will see `(your_directory_name) pkg>`.

# Since LinearAlgebra is a standard library, you do not need to add it to your project. 
# You only need to run `using LinearAlgebra` in your code 
# (or in the REPL, but it is best to place it at the top of your code file) 
# each time you start a new Julia session.
using LinearAlgebra #needed for det function

# We need the rref() function in the RowEchelon package.
# If you haven't added the package RowEchelon yet (you will only need to do this once for each project):
# Goto the REPL (ALT-j ALT-o) - hold down ALT and press j and while still holding down ALT, press o.
# type `]` you should see `(your_directory_name) pkg>` (if you don't see your_directory_name, you need to activate the project environment `activate .`)
# (your_directory_name) pkg> add RowEchelon
# type BACKSPACE to exit the package manager
# If you have already added the package RowEchelon, you do not need to add it again.
# Just run the following line in your code each time you start a new Julia session..
using RowEchelon

# TL;DR
# Open folder that your code lives in.
# Activate the project environment for this directory.
# Add the RowEchelon package (only need to do this once for each project).
# Run `using LinearAlgebra` and `using RowEchelon` in your code each time you start a new Julia session.

#################################################################################################################################
# NOTE: Due to how floating point numbers are stored in a computer, you may see some very small numbers that are not exactly 0. #
# For example, you may see 1.0e-16 instead of 0. This is normal and is due to the limitations of floating point arithmetic.     #
# Also since your hardware may be different than mine, you may see different numbers than I do.                                 #
# This is also normal and is due to the limitations of floating point arithmetic.                                               #
#################################################################################################################################

# HarMathAp12 3.3.013
# 2x − 6y − 12z = 18
# 3x − 10y − 20z = 25
# 2x − 17z = 13

A = [2 -6 -12; 3 -10 -20; 2 0 -17]
b = [18, 25, 13]
#b = [18; 25; 13]
det(A)
# Since det(A) ≠ 0 (≠ \neq TAB), the system is consisitent and dependent.
x = A\b
# On the test it will be presented in the form output from the rref() function.
Aaug = [A b]
rref(Aaug)

# HarMathAp12 3.3.015
# x − 2y + 3z + w = −14
# x − 3y + z − w = −25
# x − y = −8
# x + z + w = 2
A = [1 -2 3 1; 1 -3 1 -1; 1 -1 0 0; 1 0 1 1]
b = [-14, -25, -8, 2]
det(A)
# Since det(A) ≠ 0 (≠ \neq TAB), the system is consistent and dependent.
x = A\b

# On the test it will be presented in the form output from the rref() function.
Aaug = [A b]
# hcat(A, b) # This is another way to create the augmented matrix.
rref(Aaug)

# HarMathAp12 3.3.023.MI
# x + y + z = 0
# 4x − y − z = 0
# −x + 4y + 4z = 0

A = [1 1 1; 4 -1 -1; -1 4 4]
b = [0,0,0]
det(A)
# Since det(A) = 0, we must use the rref function to determine the solutions (if they exist).
# x = A\b Will give a SingularException(3) Error
Aaug = [A b]
# hcat(A,b) # This is another way to create the augmented matrix.
rref(Aaug)
# Since the last row is all 0s, the system is consistent, dependent.
# So ∞ many solutions (∞ is \infty TAB)
# All solutions are of the form [0, -z, z]
# 2 specific solutions are [0,0,0] and [0,-1,1]
# Checking the solutions:
x_1 = [0,0,0]
A*x_1
x_2 = [0, -1, 1]
A*x_2
soln(k) = [0, -k, k] # this is a function that will give you a specific solution for any value of k
soln(13) # I picked k=13 at random, but you can pick any value of k and it will give you a specific solution.
# Checking the solution:
A*soln(13)

# HarMathAp12 3.3.025
# 4x + 3y + 3z = −4
# x + y + 2z = 0
# 2x + y − z = −3
A = [4 3 3; 1 1 2; 2 1 -1]
b = [-4; 0; -3]
det(A)
Aaug = [A b]
rref(Aaug)
# Since the last row is all 0s followed by a non-zero, the system is inconsistent.
# Therefore there are no solutions.

# Number separator is underscore:
20_700

# Ex 1.5.039 
# 10P_1 + 3P_2 = 2290
# 50P_1 + 40P_2 = 20_700
A = [10 3; 50 40]
b = [2290, 20_700]
det(A)
x = A\b
# Product 1: 118 units
# Product 2: 370 units
# To check
10*(118)+3*(370) # Should equal 2290: 10P_1 + 3P_2 = 2290
50*(118)+40*(370) # Should equal 20_700: 50P_1 + 40P_2 = 20_700
A*x

# Ex 1.5.044
# x+y=25
# 0.4x+0.1y = 0.22(25) = 5.5
0.22*25 # calculated this ^^^

A = [1 1; 0.4 0.1]
b = [25; 5.5]
det(A)
x = A\b
# Checking:
x[1]+x[2]
0.4*x[1]+0.1*x[2]
# x is a vector of length 2.
# Vectors in Julia are 1-indexed, so x[1] is the first element of the vector x and x[2] is the second element of the vector x.
# NOTE: this is different from Python and C++ which are 0-indexed, 
# so x[0] is the first element of the array x and x[1] is the second element of the array x.


# Ex 1.6.044
# 2q+p=318
# 8q-p=-1
# Note the order of the variables is q, p.
# This is because the question specifies the order of the variables in the equations as: (q, p).
A = [2 1; 8 -1]
b = [318, -1]
det(A)
#LATE addition to the notes that I will try top remember to mention in class:
# Since we know that there are 2 solutions to this system we can store the results of A\b in a ordered pair (q, p) as follows:
q, p = A\b
# Now we can get the value of q as:
q
# and p as:
p
# Therefore q = 31.7, p = 254.6 OR
# (31.7, 254.6)

# If you prefer to store the results in a vector, you can still do that as follows:
x = A\b
# but you must keep track of the order of the variables in the equations as: (q, p).