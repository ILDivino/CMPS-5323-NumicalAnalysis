#Michael Ellerkamp, NumAnalysis
#Simpson Method file
#3/8's Rule

#Equation
disp("\nEquation!!!\n")
disp("\ny = E^-x + 1\n")

#initial varibles: N and Range.
#Initial Guess
x = [0,0.8]
#Delta X is (B-A)/N
Delta_X = (x(2) - x(1))/ 3
#H is height
H = ( x(2) - x(1) )/8
#in case I want to graph later.
y = .2 + 25 * x - 200 * x.^2 + 675 * x.^3 - 900 * x.^4 + 400 * x.^5

#The variable 'I' will be our area.
I = 0;

#Implement Error checking later
E_s = 0;
#For E_s calculations
E_a = 1;

j = x(1)
y = .2 + 25 * j - 200 * j^2 + 675 * j^3 - 900 * j^4 + 400 * j^5
j = x(1) + Delta_X
y2 = .2 + 25 * j - 200 * j^2 + 675 * j^3 - 900 * j^4 + 400 * j^5
j = x(1) + Delta_X * 2
y3 = .2 + 25 * j - 200 * j^2 + 675 * j^3 - 900 * j^4 + 400 * j^5
j = x(2)
y4 = .2 + 25 * j - 200 * j^2 + 675 * j^3 - 900 * j^4 + 400 * j^5
I += y + 3 * (y2 + y3) + y4


I = I * H
# E_s
