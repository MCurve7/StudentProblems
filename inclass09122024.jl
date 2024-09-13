using LinearAlgebra

A = [1 1; 1 -1]
det(A)
b = [57; 17]
x,y = A\b
# If you want to run a block of code you can surround it in a begin-end block.
# If you execute any line of code in the block it will execute the entire block.
begin
    A = [1 1; 1 -1]
    det(A)
    b = [57; 17]
    x,y = A\b    
end
x
y

#KAU 11.1.068
# n = number of new releases
# f = number of favorites
A = [3.25 6; 2 -1]
det(A)
b = [838.75; 0]
f,n = A\b
f
n
# Number of new releases n = 110
# Number of favorites f = 55

# 1.5.039
A = [10 3; 50 40]
det(A)
b = [2290; 20700]
P1, P2 = A\b
# The number of product one's is P1 = 118
# The number of product two's is P2 = 370

# 1.5.44
A = [.4 .1; 1 1]
det(A)
b = [.22*25; 25]
x, y = A\b
x
y
# The amount of 40% soultion is x = 10
# The amount of 10% soultion is y = 15