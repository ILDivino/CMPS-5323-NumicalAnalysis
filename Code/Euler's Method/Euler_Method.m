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

display("y_{i+1} = y_i + f(x_i , y_i) * H\n")

N = 3

#equation, given, and target.
#These matrices are where I will store all my x and y values for recall.
X = [];
Y = [];

display("Given Values!\n")
x = 0;
y = 1;
X = [X x]
Y = [Y y]

x = 1.5;
printf("Target Value! f(%d) = ?\n", x)

H = (x-X(1)) / N
Iter = 0;
MaxIter = N;

do
  Iter += 1;
  printf("Iteration #%d!\n", Iter)
  result = Function_XY(X(Iter),Y(Iter))
  x = H * Iter
  y = Y(Iter) + result * H
  Y = [Y y];
  X = [X x];

until (Iter >= MaxIter)
X
Y
