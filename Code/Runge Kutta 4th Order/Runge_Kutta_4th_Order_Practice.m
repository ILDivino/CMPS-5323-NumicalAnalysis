#Michael Ellerkamp, NumAnalysis
#Runge Kutta 4th Order Method file
#Differential Equations
#Getting into Octave functions

#used to solve partial differential equations
#dy/dx + 0.4y = 3e^{-x} ; given value: y(0) = 5
#dy/dx = 3e^{-x} - 0.4y ;; target:find y(x) =
#H = step size.
#I like the interval method so take target x - given x divide by number of
#intervals to get H.

display("y_{i+1} = y_i + f(x_i , y_i) * H\n")

N = 2

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
  result = Function_XY(X(Iter),Y(Iter));
  K_1 = result
  result = Function_XY(X(Iter)+.5*H,Y(Iter)+.5*H*K_1);
  K_2 = result
  result = Function_XY(X(Iter)+.5*H,Y(Iter)+.5*H*K_2);
  K_3 = result
  result = Function_XY(X(Iter)+H,Y(Iter)+K_3*H);
  K_4 = result
  x = H * Iter
  y = Y(Iter) + (1/6)*(K_1 + 2*K_2 + 2*K_3 + K_4) * H
  Y = [Y y];
  X = [X x];
until (Iter >= MaxIter)
X
Y
