#Michael Ellerkamp, NumAnalysis
#AB Exponential Regression file

# x = x
# y = ln(y) in all instances except the raw data, when we think back to our formulas

#Our Data
x = [0,5,8,11,15,18,22,25,30,34,38,42,45,50]
y = [179.5,168.7,158.1,149.2,141.7,134.6,125.4,123.5,116.3,113.2,109.1,105.7,102.2,100.5]

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
B = exp(Sxy/Sxx)
A = exp(Mean_LnY - log(B)*Mean_X)
#below works as well thanks to the exp and log cancelling out.
#A = exp(Mean_LnY - (Sxy/Sxx)*Mean_X)
printf("\nOur equation is: y = (%d)(%d)^x\n",A, B)
#now for R value
disp("\nR-Value:\n")
R = Sxy / (sqrt(Sxx)*sqrt(Syy))
#Now to add plotting this out.
#Even for testing I don't care to output this so it will have the ;
y2 = A*power(B,x);
#we are plotting the initial x,y data as red circles 'or'
#Our new equation will be plotted as a regular line x,y2
plot(x,y,'or',x,y2)
xlabel("X Units")
ylabel("Y Units")
title(sprintf("AB Exponential Regression. R = %d",R))
grid on
legend('data points', 'line derived')
set(gca, "linewidth", 2, "fontsize", 20)
