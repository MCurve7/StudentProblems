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

# 1.6.049.EP

# Demand
# (104, 325)
# (144, 275)

m_D = (325-275)//(104-144)
# p=mq+b
# p=-5/4q+b
# -5/4q + b = p
# b = p+5/4q
# Using this point: (104, 325) = (q,p)
b_D = 325+5/4*104
# p = -5/4q+455

# Supply
# (84,255)
# (164,345)

m_S = (345-255)//(164-84)
# p=mq+b
# p=9/8q+b
# 9/8q+b = p
# b = p - 9/8q
# Using this point: (84, 255) = (q,p)
b_S = 255 - 9/8*84
# p = 9/8q+160.5

# 5/4q + p = 455
# 9/8q - p = -160.5
A = [5/4 1; 9/8 -1]
b = [455, -160.5]
det(A)
q,p = A\b
q
p

# KAUFACS10 11.1.061
# x+y = 57
# x-y = 17
A = [1 1; 1 -1]
b = [57;17]
det(A)
x,y = A\b

# KAUFACS10 11.1.068
# 3.25f +6n = 838.75
# -2f + n = 0
A = [3.25 6; -2 1]
b = [838.75, 0]
det(A)
f,n = A\b