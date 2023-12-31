#Michael Ellerkamp, NumAnalysis
#Bisection Method file

#Equation
disp("\nEquation!!!\n")
disp("\ny = x^2")

#initial varibles: X_L, X_U, X_M Max_Iter, E_s.
disp("\nInitial Variables!!!\n")
#Test 3 boundaries.
# [-1, 5], [-5, 1], [2,2]
#lower bound
X_L = -1
#upper bound
X_U = 5
#mid point
X_M = (X_L + X_U)/2
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
Root = false;
#For E_s calculations
X_M_Old = 0;
E_a = 0;

do
  X_M = (X_L + X_U)/2;
  F_X_L = power(X_L,2);
  F_X_M = power(X_M,2);
  if(F_X_L * F_X_M < 0)
    #X_L stays X_L
    X_U = X_M;
  elseif(F_X_L * F_X_M > 0)
    #X_U stays X_U
    X_L = X_M;
  else
    Root = true
  endif
  X_M_Old = X_M;
#printing off interation values that are important to me.
  Iter = Iter + 1;
  printf("\nIterations #%d\n", Iter)
  X_L
  X_U
  X_M = (X_L + X_U)/2
  E_a = abs((X_M - X_M_Old)/X_M) * 100
 until(F_X_L * F_X_M == 0 || Iter == Max_Iter || E_a < E_s)
E_s
