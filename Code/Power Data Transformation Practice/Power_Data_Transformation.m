#Michael Ellerkamp, NumAnalysis
#Power Data Transformation Regression file

# x = ln(x)
# y = ln(y) in all instances except the raw data, when we think back to our formulas

#Our Data
x = [1,3,4,6,7]
y = [1,2,2,5,8]

#Important that x and y have the same length, do not make me have to implement error detection!!!
disp("\nData!!!\n")
N = length(x)
#All of our sums
disp("\nSums:\n")
Sum_LnX = sum(log(x))
Sum_LnX2 = sum(log(x).^2)
Sum_LnY = sum(log(y))
Sum_LnY2 = sum(log(y).^2)
Sum_LnXLnY = sum(log(x).*log(y))
#Means
disp("\nMeans!!\n")
Mean_LnX = Sum_LnX/N
Mean_LnY = Sum_LnY/N
#this uses the S sub AB functions. Remember replace all instaces of y with ln(y)
disp("\nS functions!!!\n")
Sxy = Sum_LnXLnY - N*Mean_LnX*Mean_LnY
Sxx = Sum_LnX2 - N*power(Mean_LnX,2)
Syy = Sum_LnY2 - N*power(Mean_LnY,2)
#now for B, A, and the Power equation
disp("\nB,A, and Equation!!!!\n")
B = Sxy/Sxx
A = exp(Mean_LnY - B*Mean_LnX)
printf("Our equation is: y = %dx^%d\n",A, B)
#now for b', m', x', and the linear equation
disp("\nB,A, and Equation!!!!\n")
m_prime = B  #m' and B are the exact same
b_prime = Mean_LnY - B*Mean_LnX #b' is the ln(A)
x_prime = log(x); #I don't care to show this off but important to know
printf("Our equation is: y = %dx' + %d",m_prime, b_prime)
#now for R value
disp("\nR-Value:\n")
R = Sxy / (sqrt(Sxx)*sqrt(Syy))
#Now to add plotting this out.
#Even for testing I don't care to output this so it will have the ;

#y2 = A.*power(x,B); #power version.
y2 = (m_prime * x_prime) + b_prime #linear version
#in the linear form x is actually x_prime and x_prime = log(x)

#we are plotting the initial x,y data as red circles 'or'
#Our new equation will be plotted as a regular line x,y2
#plot(x,y,'or',x,y2) #plotting power formula
plot(x,y,'or',x,exp(y2)) #plotting linear formula

xlabel("X Units")
ylabel("Y Units")
title(sprintf("Power Regression. R = %d",R))
grid on
legend('data points', 'line derived')
set(gca, "linewidth", 2, "fontsize", 20)
