#Michael Ellerkamp, NumAnalysis
#Bisection Method file

#Equation
disp("\nEquation!!!\n")
disp("\ny = (668.07/x)*(1-e^-0.1468437) - 40n")

#initial varibles: X_L, X_U, X_M Max_Iter, E_s.
disp("\nInitial Variables!!!\n")
#lower bound
X_L = 12;
#upper bound
X_U = 16;
# E_s is an error tolerance in percentages.
E_s = .05
#maximum # of iterations, default some large number
#as I don't want to be stuck in an infinite loop
#else, put in your desired number here, but always have a number here.
Max_Iter = 1000

#These two are for graphing purposes later in the program.
x = [X_L, X_U];
#y = (668.07/x)*(1-e^-0.1468437) - 40;

#Important loop variables for exiting.
Iter = 0;
E_s = 0.05;
#For E_s calculations
X_M = (X_L + X_U)/2;
F_X_L = (668.07/X_L)*(1-e^-0.1468437) - 40;
E_a = 100;
do
  X_M_Old = X_M;
  #printing off interation values that are important to me.
  Iter = Iter + 1;
  printf("\nIteration #%d\n", Iter)
  X_L
  X_U
  X_M = (X_L + X_U)/2
  F_X_M = (668.07/X_M)*(1-e^-0.1468437) - 40;
  if(Iter > 1)
    E_a = abs((X_M - X_M_Old)/X_M) * 100
  endif
  if(F_X_L * F_X_M < 0)
    #X_L stays X_L
    X_U = X_M;
  elseif(F_X_L * F_X_M > 0)
    #X_U stays X_U
    X_L = X_M;
    #F_X_L only updates on this conditional, no point in recalculating it every iteration.
    F_X_L = (668.07/X_L)*(1-e^-0.1468437) - 40;
  else
    E_a = 0;
  endif
 until(Iter == Max_Iter || E_a < E_s)
 E_s
