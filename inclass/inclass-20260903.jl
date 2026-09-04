# Make sure that you have opened the folder that your code lives in.

# If you haven't added the package LinearAlgebra yet (you will only need to do this once for each project):
# Goto REPL 
## To get to the REPL if you are using VS Code and have added the Julia Language Support extension...
## Type ALT-j ALT-o (or just execute a line of code) and that will start the REPL
# In the REPL, type `]` and you'll see `(your_directory_name) pkg>`
# (your_directory_name) pkg> add LinearAlgebra
# type `BACKSPACE` to get out of the package manager
# To get access to the functions in the LinearAlgebra package you will need to run `using LinearAlgebra` in your code (or in the REPL, but it is best to place it at the top of your code file) each time you start a new Julia session.
using LinearAlgebra #needed for det function

# Ex 1_1_5
# x+ y= 2
# x-2y=-1

A1_1_5 = [1 1; 1 -2]
det(A1_1_5)
b1_1_5 = [2,-1]
#b1_1_5 = [2;-1]
x1_1_5 = A1_1_5\b1_1_5

# Ex 2_1_5
# x+y=2
# x+y=-1
A2_1_5 = [1 1; 1 1]
det(A2_1_5)
inv(A2_1_5)
# ERROR: SingularException(2) 
# I'll come back and explain (for 3x3s)

# Ex 3_1_5
# x+ y=2
#2x+2y=2
A3_1_5 = [1 1; 2 2]
det(A3_1_5)

# Ex 1
# 2x-6y-12z=-20
# 3x-10y-20z=-38
# 2x+0y-17z=-40
A1 = [2 -6 -12; 3 -10 -20; 2 0 -17]
det(A1)
b1=[-20, -38, -40]
x1 = A1\b1
# Therefore this system is consistent and independent

# Ex 2
# x+2y+3z=1
# 2x-y+0z=2
# x+2y+3z=2
A2=[1 2 3;2 -1 0;1 2 3]
det(A2)

# We need the rref() in the RowEchelon package.
# Goto REPL 
# type `]` see `(your_directory_name) pkg>`
# (your_directory_name) pkg> add RowEchelon
# type `BACKSPACE`
using RowEchelon

# Restart example:
# Ex 2
# x+2y+3z=1
# 2x-y+0z=2
# x+2y+3z=2
A2=[1 2 3;2 -1 0;1 2 3]
det(A2)

# choice 1: Just type the elements in a matrix
Aaug2 = [1 2 3 1; 2 -1 0 2; 1 2 3 2]
rref(Aaug2)
# Inconsistent so it has 0 solutions

# choice 2: Use the `hcat` function
b2 = [1,2,2]
Aaug2 = hcat(A2, b2)
# or 
hcat(A2,[1,2,2])
rref(Aaug2)

# choice 3: Slick notation trick
Aaug2 = [A2 b2]
rref(Aaug2)


# Ex 3
#  x-y+z=5
# 3x+0y+2z=13
#  x-4y+2z=7
A3 = [1 -1 1; 3 0 2; 1 -4 2]
det(A3)
Aaug3 = hcat(A3, [5,13,7])
rref(Aaug3)
# Consistent but dependent so ∞ many solutions

# For symbols, look up LaTeX symbols, e.g.\infty `TAB` gives ∞
# or \alpha `TAB` α
# The page https://docs.julialang.org/en/v1/manual/unicode-input/ has every symbol (that has a shortcut) you could ever want to use in Julia 

x(z)=2//3*z+13//3 # Recall that `//` is the rational number operator in Julia.  So `2//3` is the rational number 2/3, not the floating point number 0.6666666666666666...
y(z)=1//3*z-2//3
# First specific solution
z=0
(x(z), y(z),z)
# Second specific solution
z=1
(x(z), y(z),z)