#Michael Ellerkamp, NumAnalysis
#Logarithmic Regression file

# x = ln(x) in all instances except the raw data, when we think back to our formulas
# y = y

#Our Data
x = [1,2,3,4,5,6,7,8,9,10,11]
y = [6,9.5,13,15,16.5,17.5,18.5,19,19.5,19.7,19.8]
#Important that x and y have the same length, do not make me have to implement error detection!!!
disp("\nData!!!\n")
N = length(x)
#All of our sums
disp("\nSums:\n")
Sum_lnX = sum(log(x))
Sum_y = sum(y)
Sum_Y2 = power(Sum_y,2)
Sum_lnX2 = power(Sum_lnX,2)
Sum_YlnX = sum(log(x).*y)
#Means
disp("\nMeans!!\n")
Mean_lnX = Sum_lnX/N
Mean_y = Sum_y/N
#this uses the S sub AB functions. Remember replace all instaces of x with ln(x)
disp("\nS functions!!!\n")
Sxx = Sum_lnX2 - N*power(Mean_lnX,2)
Syy = Sum_Y2 - N*power(Mean_y,2)
Sxy = Sum_YlnX - N*Mean_lnX*Mean_y
#now for B, A, and the equation
disp("\nB,A, and Equation!!!!\n")
B = Sxy / Sxx
A = Mean_y - B*Mean_lnX
printf("Our equation is: y = %dln(x) + %d",B, A)
#now for R value
disp("\nR-Value:\n")
R = Sxy/(Sxx * Syy)
#Now to add plotting this out.
#Even for testing I don't care to output this so it will have the ;
y2 = B.*log(x) + A;
#we are plotting the initial x,y data as red circles 'or'
#Our new equation will be plotted as a regular line x,y2
plot(x,y,'or',x,y2)
xlabel("X Units")
ylabel("Y Units")
title(sprintf("Logarithmic Regression. R = %d",R))
grid on
legend('data points', 'line derived')
set(gca, "linewidth", 2, "fontsize", 20)
