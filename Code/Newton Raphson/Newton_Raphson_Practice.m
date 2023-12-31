#Michael Ellerkamp, NumAnalysis
#Newton Raphson Method file

#Equation
disp("\nEquation!!!\n")
disp("\ny = E^-x - x\n")

#initial varibles: X_L, X_U, X_M Max_Iter, E_s.
disp("\nIteration #1\n")
#Initial Guess
x = [0]
#X is put into a matrix as I plan to add to the matrix and call the iterations

#maximum # of iterations, default some large number
#as I don't want to be stuck in an infinite loop
#else, put in your desired number here, but always have a number here.
Max_Iter = 5

#Important loop variables for exiting.
Iter = 0;
E_s = 0;
#For E_s calculations
E_a = 1;
do
  #printing off interation values that are important to me.
  Iter = Iter + 1;
  printf("\nIteration #%d\n", Iter)
  FX = exp(-x(Iter)) - x(Iter)
  F_X = -exp(-x(Iter)) - 1
  X = x(Iter) - FX/F_X
  x = [x X]
  if(Iter > 1)
    E_a = abs((x(Iter) - x(Iter - 1))/x(Iter))
  endif
 until(Iter == Max_Iter || E_a < E_s)
 x
 E_s
