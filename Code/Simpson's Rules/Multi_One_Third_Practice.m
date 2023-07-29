#Michael Ellerkamp, NumAnalysis
#Simpson Method file
#Multiple Application of 1/3 Rule

#Rules N must be even.

#This program will cover the Multiple application methods

#Equation
disp("\nEquation!!!\n")
disp("\ny = E^-x + 1\n")

#initial varibles: N and Range.
#Initial Guess
x = [1,5]
#Delta X is (B-A)/N
N = 9000
Delta_X = (x(2) - x(1))/N
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
Iter = 0;
do
  #printing off interation values that are important to me.
  printf("\nIteration #%d\n", Iter + 1)
#covers the intial point and makes it so later ifs do not use it.
  if(Iter == 0)
  I += exp( -x(1)) + 1
#Iter == N is second in the if list so that it automatically makes it so the
#odd and even ifs do not count
  elseif(Iter == N)
  I += exp( -x(2)) + 1
  elseif(mod(Iter,2) == 1 && Iter <= N-1)
    I += 4 * (exp( -(x(1) + (Delta_X * Iter))) + 1)
  elseif(mod(Iter,2) == 0 && Iter <= N-2)
    I += 2 * (exp( -(x(1) + (Delta_X * Iter))) + 1)
  else
    display("Error in the if statements in line 36")
  endif
  Iter += 1;
 until(Iter == N || E_a < E_s)
I = I * H
# E_s
