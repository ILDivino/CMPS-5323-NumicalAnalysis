#Michael Ellerkamp, NumAnalysis
#Linear Interpolation

#Equation
disp("\nEquation!!!\n")
disp("\ny = ln(x)")

#initial varibles: N and Range.
#Initial Guess
x = [14,20]

#X = target value for interpolation
X = 19

#F(x) = F(x_0) + ((F(x_1) - F(x_0))/ (x_1 - x_0) )*(x - x_0)
F_x_0 = 400
F_x_1 = 220
#x(1) is x_0, x(2) is x_1
F_x = F_x_0 + ((F_x_1 - F_x_0)/(x(2) - x(1)) ) * (X - x(1))
#Error checking.
X_Actual = log(X)
Error = ((X_Actual - F_x)/X_Actual)*100
