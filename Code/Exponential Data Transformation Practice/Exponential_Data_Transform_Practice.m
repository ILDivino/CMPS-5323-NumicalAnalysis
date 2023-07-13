#Michael Ellerkamp, NumAnalysis
#Exponential Data Transformation Regression file

#Converting a y=Ae^B into linear data so we can use linear regression.

#NOT COMPLETE
#To finish in the evening!!!

# x = x
# y = ln(y) in all instances except the raw data, when we think back to our formulas



#Our Data
x = [2,5,7,10,14,19,26,31,34,38,45,52,53,60,65]
y = [54,50,45,37,35,25,20,16,18,13,8,11,8,4,6]

#Important that x and y have the same length, do not make me have to implement error detection!!!
disp("\nData!!!\n")
N = length(x)
#All of our sums
disp("\nSums:\n")
Sum_X = sum(x)
Sum_X2 = sum(x.^2)
Sum_LnY = sum(log(y))
Sum_LnY2 = sum(log(y).^2)
Sum_XLnY = sum(x.*log(y))
#Means
disp("\nMeans!!\n")
Mean_X = Sum_X/N
Mean_LnY = Sum_LnY/N
#this uses the S sub AB functions. Remember replace all instaces of y with ln(y)
disp("\nS functions!!!\n")
Sxy = Sum_XLnY - N*Mean_X*Mean_LnY
Sxx = Sum_X2 - N*power(Mean_X,2)
Syy = Sum_LnY2 - N*power(Mean_LnY,2)
#now for B, A, and the equation
disp("\nB,A, and Equation!!!!\n")
B = Sxy/Sxx
A = exp(Mean_LnY - B*Mean_X)
printf("Our equation is: y = %dE^%dx",A, B)
#now for R value
disp("\nR-Value:\n")
R = Sxy / (sqrt(Sxx)*sqrt(Syy))
#Now to add plotting this out.
#Even for testing I don't care to output this so it will have the ;
y2 = A.*exp(B.*x);
#we are plotting the initial x,y data as red circles 'or'
#Our new equation will be plotted as a regular line x,y2
plot(x,y,'or',x,y2)
xlabel("X Units")
ylabel("Y Units")
title(sprintf("Exponential Regression. R = %d",R))
grid on
legend('data points', 'line derived')
set(gca, "linewidth", 2, "fontsize", 20)
