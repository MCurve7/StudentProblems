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

# The code from class didn't save, so I will try to recreate it here.

# HarMathAp12 3.3.023.MI
# x + y + z = 0
# 4x − y − z = 0
# −x + 4y + 4z = 0

A = [1 1 1; 4 -1 -1; -1 4 4]
b = [0,0,0]
det(A)
# Since det(A) = 0, we must use the rref function to determine the solutions (if they exist).
# x = A\b will give a SingularException(3) Error
Aaug = [A b]
# hcat(A,b) # This is another way to create the augmented matrix.
rref(Aaug)
# Since the last row is all 0s, the system is consistent, dependent.
# So ∞ many solutions (∞ is \infty TAB)

# The rref form of Aaug is
# 1.0  0.0  0.0  0.0 => x = 0
# 0.0  1.0  1.0  0.0 => y + z = 0 => y = -z
# 0.0  0.0  0.0  0.0 => z is the free variable (it can be whatever value we want)
# because if we rewrite Aaug as a system of equations, we get
# x = 0
# y + z = 0
# 0 = 0

# All solutions are of the form [x, y, z] = [0, -z, z]
# 2 specific solutions are:
# letting z = 0, we get   [0,0,0] and 
# letting z = 1, we get   [0,-1,1]

# Checking the solutions:
A*[0,0,0]
A*[0,-1,1]
# Since they both equal the zero vector b from the original system, 2 solutions are correct.

