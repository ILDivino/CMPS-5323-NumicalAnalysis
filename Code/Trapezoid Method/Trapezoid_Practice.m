#Michael Ellerkamp, NumAnalysis
#Trapezoid Method file

#This program will cover the Multiple application methods
#Use N = 1 to simulate the normal trapezoid rule.
#Where N is the number of segments.

#Equation
disp("\nEquation!!!\n")
disp("\ny = E^-x + 1\n")

#initial varibles: N and Range.
#N, number of segments. Must be 1+
N = 9000
#Initial Guess
x = [1,5]
#Delta X is (B-A)/N
Delta_X = (x(2) - x(1))/ N
#H is height
H = Delta_X/2
#in case I want to graph later.
y = exp(-x) + 1;

#The variable 'I' will be our area.
I = 0;

#Important loop variables for exiting.
Iter = 0;
#Implement Error checking later
E_s = 0;
#For E_s calculations
E_a = 1;
do
  #printing off interation values that are important to me.
  Iter = Iter + 1;
  printf("\nIteration #%d\n", Iter)
  x(1) + (Delta_X * (Iter - 1))
  y = exp( -(x(1) + (Delta_X * (Iter - 1) ))) + 1
  x(1) + (Delta_X * Iter)
  y2 = exp( -(x(1) + (Delta_X * Iter)) ) + 1
 I += y + y2
#  if(Iter > 1)
#    E_a = abs((x(Iter) - x(Iter - 1))/x(Iter))
#  endif
 until(Iter == N || E_a < E_s)
 I = I * H
# E_s
