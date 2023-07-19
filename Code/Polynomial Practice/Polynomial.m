#Michael Ellerkamp, NumAnalysis
#Polynomial Regression file

#Our Data
x = [0,1,2,3,4,5]
y = [2.1,7.7,13.6,27.2,40.9,61.1]

#Important that x and y have the same length, do not make me have to implement error detection!!!
disp("\nData!!!\n")
N = length(x)
M = 2 #polynomial degree
disp("\nSums:\n")
Sum_X = sum(x)
Sum_X2 = sum(x.^2)
Sum_X3 = sum(x.^3)
Sum_X4 = sum(x.^4)
Sum_Y = sum(y)
Sum_XY = sum(x.*y)
Sum_X2Y = sum(y.*(x.^2))
#All of our meansq
Mean_Y = mean(y)/N
#Finding Matrix A, C, and B
A = [N, Sum_X, Sum_X2; Sum_X, Sum_X2, Sum_X3; Sum_X2, Sum_X3, Sum_X4]
C = [Sum_Y;Sum_XY;Sum_X2Y]
B = A\C #left division, inv(A)/C, useful as it creates a minimum norm solution
#Equation
printf("Our equation is: y = %d + %dx + %dx^2\n",B(1), B(2), B(3))
#Finding Sr
Sr = 0;
for i = 1:N
  Sr += power(y(i) - B(1) - (B(2) * x(i)) - (B(3) * power(x(i),2)),2);
endfor
Sr
#Finding SYX
SYX = sqrt(Sr/(N-(M+1)))
#Finding R^2 and R
#R2 = (power((N*sum(y)-power(Sum_Y,2)),2)-Sr)/power((N*sum(y)-power(Sum_Y,2)),2) #using linear L(Y,Y) fails
R2 = (power((sum(y)-N*power(Mean_Y,2)),2)-Sr)/power(sum(y)-N*power(Mean_Y,2),2) #using S(Y,Y)
R = sqrt(R2)
#Now to add plotting this out.
#Even for testing I don't care to output this so it will have the ;

y2 = B(1) + (B(2) * x) + (B(3) * power(x,2)); #power version.

#we are plotting the initial x,y data as red circles 'or'
#Our new equation will be plotted as a regular line x,y2
plot(x,y,'or',x,y2)
xlabel("X Units")
ylabel("Y Units")
title(sprintf("Power Regression. R = %d",R))
grid on
legend('data points', 'line derived')
set(gca, "linewidth", 2, "fontsize", 20)
