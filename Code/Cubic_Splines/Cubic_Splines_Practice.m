#Michael Ellerkamp, NumAnalysis
#Euler's Method file
#Differential Equations
#Getting into Octave functions

#used to solve partial differential equations
#dy/dx + 0.4y = 3e^{-x} ; given value: y(0) = 5
#dy/dx = 3e^{-x} - 0.4y ;; target:find y(x) =
#H = step size.
#I like the interval method so take target x - given x divide by number of
#intervals to get H.

display("Given Data!!!\n")
X = [3, 4.5, 7.0, 9.0]
Y = [2.5, 1.0, 2.5, 0.5]

display("Target value!!\n")
x = 5

F_double_derivation_X_1 = 0;

#x(2)
K = (6/(X(3)-X(2))*(Y(3)-Y(2))) + (6/(X(2)-X(1))*(Y(1)-Y(2)))
#x(3)
K2 = (6/(X(4)-X(3))*(Y(4)-Y(3))) + (6/(X(3)-X(2))*(Y(2)-Y(3)))

#A = f''(x(2))
#B = f''(x(3))
#we know f''(x(1)) and f''(x(4)) are both equal to 0.

A = [2*(X(3)-X(1)),(X(3)-X(2)); (X(3)-X(2)), 2*(X(4)-X(2))]
C = [K;K2]
B = A\C

F_double_derive = [0, B(1), B(2), 0]

#target is in the first interval.
if(x<X(2))
F_X = Base_Function(F_double_derive, X, Y, 5, 1)
#target is in the second interval
elseif(x<X(3))
F_X = Base_Function(F_double_derive, X, Y, 5, 2)
#target is in the last interval
else
F_X = Base_Function(F_double_derive, X, Y, 5, 3)
endif
