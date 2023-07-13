#Michael Ellerkamp, NumAnalysis
#Exponential Data Transformation Regression file

#Converting a y=Ae^B into linear data so we can use linear regression.
#             y_prime = B_prime + M_Prime * x

# B_prime is LN(A) remember that when converting.
# M_prime = B

# x = x
# y = ln(y) in regard to formula as it becomes y_prime



#Our Data
x = [2,5,7,10,14,19,26,31,34,38,45,52,53,60,65]
#y is for raw data and graphing but is not used in any formula.
y = [54,50,45,37,35,25,20,16,18,13,8,11,8,4,6]
#y_prime the y used in all formula. y_prime = ln(y)
y_prime = log(y)

#Important that x and y have the same length, do not make me have to implement error detection!!!
disp("\nData!!!\n")
N = length(x)
#All of our sums
disp("\nSums:\n")
Sum_X = sum(x)
Sum_X2 = sum(x.^2)
Sum_Y = sum(y_prime)
Sum_Y2 = sum(y_prime.^2)
Sum_XY = sum(x.*y_prime)
#Means
disp("\nMeans!!\n")
Mean_X = mean(x)
Mean_Y = mean(y_prime)
#this uses the L sub AB functions.
disp("\nL functions!!!\n")
Lxy = N*Sum_XY - Sum_X*Sum_Y
Lxx = N*Sum_X2-power(Sum_X,2)
Lyy = N*Sum_Y2-power(Sum_Y,2)
#now for B, A, and the equation
disp("\nB,A, and Equation!!!!\n")
B = Sxy/Sxx #also M_prime for linear
B_prime = Mean_Y - (B * Mean_X)
A = exp(B_prime)
printf("Our linear question is: y = (%d)x+%d",B, B_prime)
printf("Our exponential equation is: y = %dE^%dx",A, B)
#now for R value
disp("\nR-Value:\n")
R = Sxy / (sqrt(Sxx)*sqrt(Syy))
#Now to add plotting this out.
#Even for testing I don't care to output this so it will have the ;
#y2 = B * x + B_prime #linear representation
y2 = A.*exp(B.*x);
#we are plotting the initial x,y data as red circles 'or'
#Our new equation will be plotted as a regular line x,y2
#plot(x,y,'or',x,exp(y2)) #linear representation
plot(x,y,'or',x,y2)
xlabel("X Units")
ylabel("Y Units")
title(sprintf("Exponential Regression. R = %d",R))
grid on
legend('data points', 'line derived')
set(gca, "linewidth", 2, "fontsize", 20)
