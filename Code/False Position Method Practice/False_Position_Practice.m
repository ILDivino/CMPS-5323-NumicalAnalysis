#Michael Ellerkamp, NumAnalysis
#False Position Method file

#Equation
disp("\nEquation!!!\n")
disp("\ny = (668.07/x)*(1-e^-0.1468437) - 40n")

#initial varibles: X_L, X_U, X_M Max_Iter, E_s.
disp("\nIteration #1\n")
#lower bound
X_L =0;
#upper bound
X_U = 1.3;
#mid point
F_X_L = power(X_L,10)-1;
F_X_U = power(X_U,10)-1;
X_R = X_U - ( F_X_U * (X_L - X_U) ) / (F_X_L - F_X_U);
#maximum # of iterations, default some large number
#as I don't want to be stuck in an infinite loop
#else, put in your desired number here, but always have a number here.
Max_Iter = 20

#These two are for graphing purposes later in the program.
x = [X_L, X_U];
#y = (668.07/x)*(1-e^-0.1468437) - 40;

#Important loop variables for exiting.
Iter = 0;
E_s = 0.05;
#For E_s calculations
E_a = 1;
do
  #printing off interation values that are important to me.
  Iter = Iter + 1;
  printf("\nIteration #%d\n", Iter)
  X_R_Old = X_R;

  X_L
  X_U
  X_R = X_U - ( F_X_U * (X_L - X_U) ) / (F_X_L - F_X_U)
  F_X_R = power(X_R,10)-1;
  if(Iter > 1)
    E_a = abs((X_R - X_R_Old)/X_R)
  endif
  if(F_X_L * F_X_R < 0)
    #X_L stays X_L
    X_U = X_R;
    F_X_U = power(X_U,10)-1;
  elseif(F_X_L * F_X_R > 0)
    #X_U stays X_U
    X_L = X_R;
    F_X_L = power(X_L,10)-1;
  else
    E_a = 0;
  endif
 until(Iter == Max_Iter || E_a < E_s)
 E_s
