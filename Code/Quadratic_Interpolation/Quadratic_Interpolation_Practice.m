#Michael Ellerkamp, NumAnalysis
#Quadratic Interpolation

#Equation
disp("\nEquation!!!\n")
disp("\ny = ln(x)")

#Matrix quick fix
#Matrix A = [x(1)^0, x(1)^1, x(1)^2; x(2)^0, x(2)^1, x(2)^2; x(3)^0, x(3)^1, x(3)^2]
#Matrix C = [f(x(1); f(x(2)); f(x(3))]
#Matrix B = inv(A) * C
#B(1) = a(0), B(2) = a(1), B(3) = a(2)
#initial varibles: N and Range.
#Initial Guess
x = [1,4,6]

#X = target value for interpolation
X = 2
#Bunch of handy starting variables.
F_x_0 = log(x(1))
F_x_1 = log(x(2))
F_x_2 = log(x(3))
#All equations.
#F_2(x) = a_0 + a_1 * x + a_2 * x^2

#remember the x(#) variables start at index 1 in Octave but subtract one for the math on paper.
#The B's equations.
b_0 = F_x_0
b_1 = (F_x_1 - F_x_0)/(x(2) - x(1))
b_2 = ( (F_x_2 - F_x_1)/(x(3) - x(2)) - (F_x_1 - F_x_0)/(x(2)-x(1)) )/(x(3) - x(1))
#The A's equations.

a_0 = b_0 - b_1*x(1) + b_2*x(1)*x(2)
a_1 = b_1 - b_2*x(1) - b_2*x(2)
a_2 = b_2
#x(1) is x_0, x(2) is x_1
F_x = a_0 + a_1 * X + a_2 * X^2
#Error checking.
X_Actual = log(X)
Error = ((X_Actual - F_x)/X_Actual)*100

