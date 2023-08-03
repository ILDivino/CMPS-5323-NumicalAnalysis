#Michael Ellerkamp, NumAnalysis
#Euler's Method file
#Differential Equations
#Getting into Octave functions
a = 1;
b = 0;
function result = Euler_Method (a, b)
    result = 3* exp(-a) - 0.4 * b;
endfunction
#used to solve partial differential equations
#dy/dx + 0.4y = 3e^{-x} ; given value: y(0) = 5
#dy/dx = 3e^{-x} - 0.4y ;; target:find y(x) =
#H = step size.
#I like the interval method so take target x - given x divide by number of
#intervals to get H.

display("y_{i+1} = y_i + f(x_i , y_i) * H\n")

N = 5

#equation, given, and target.
#These matrices are where I will store all my x and y values for recall.
X = [];
Y = [];

display("Given Values!\n")
x = 0;
y = 5;
X = [X x]
Y = [Y y]

x = 3;
printf("Target Value! f(%d) = ?\n", x)

H = (x-X(1)) / N
Iter = 0;
MaxIter = N;

do
  Iter += 1;
  printf("Iteration #%d!\n", Iter)
  result = Euler_Method(X(Iter),Y(Iter))
  x = H * Iter
  y = Y(Iter) + result * H
  Y = [Y y];
  X = [X x];

until (Iter >= MaxIter)
X
Y
