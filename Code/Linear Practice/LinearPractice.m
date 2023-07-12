#Michael Ellerkamp, NumAnalysis
#Linear Regression file

# x = x
# y = y

#Our Data
x = [1.1,2.2,3.3,4.4,5.5,6,7.1,8,9]
y = [2.2,0.8,4.2,3.5,4.9,6,6.7,7.5,7.9]
#Important that x and y have the same length, do not make me have to implement error detection!!!
disp("\nData!!!\n")
N = length(x)
#All of our sums
disp("\nSums:\n")
Sum_X = sum(x)
Sum_X2 = sum(x.^2)
Sum_Y = sum(y)
Sum_Y2 = sum(y.^2)
Sum_XY = sum(x.*y)
#Means
disp("\nMeans!!\n")
Mean_X = mean(x)
Mean_Y = mean(y)
#this uses the L sub AB functions.
disp("\nL functions!!!\n")
Lxy = N*Sum_XY - Sum_X*Sum_Y
Lxx = N*Sum_X2-power(Sum_X,2)
Lyy = N*Sum_Y2-power(Sum_Y,2)
#now for B, M, and the equation
disp("\nB,M, and Equation!!!!\n")
M = Lxy / Lxx
B = Mean_Y - (M * Mean_X)
printf("Our equation is: y = %dx + %d",B, A)
#now for R value
disp("\nR-Value:\n")
R = Lxy / (sqrt(Lxx)*sqrt(Lyy))

