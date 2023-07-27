#Michael Ellerkamp, NumAnalysis
#Simpson Method file
#1/3 Rule

#This program will cover the Multiple application methods

#Equation
disp("\nEquation!!!\n")
disp("\ny = E^-x + 1\n")

#initial varibles: N and Range.
#Initial Guess
x = [1,5]
#Delta X is (B-A)/N
Delta_X = (x(2) - x(1))/ 2
#H is height
H = Delta_X/3
#in case I want to graph later.
y = exp(-x) + 1;

#The variable 'I' will be our area.
I = 0;

#Implement Error checking later
E_s = 0;
#For E_s calculations
E_a = 1;

x(1) + Delta_X
y = exp( -(x(1) + (Delta_X))) + 1
x(1) + Delta_X
y2 = exp( -(x(1) + (Delta_X * Iter)) ) + 1
x(2)
y3 = exp( -x(2) ) + 1
I += y + (4*y2) + y3

I = I * H
# E_s
