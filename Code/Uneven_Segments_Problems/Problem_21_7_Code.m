#Michael Ellerkamp
#CMPS5323 Numerical Analysis
#Project - Unequal Segments.
#Problem example 21.7
#Write code that performs the equation for example 21.7 in the book.
#Code calls Function_X.m
#This code is not streamlined, it is verbose as it is for learning the problem.
#Instructions will follow a logical flow rather than bundling operations together.


display("Starting data.\n")
display("f(x) = .02 + 25x - 200x^2 + 675x^3 - 900x^4 + 400x^5\n")
display("Find the area, I, from the x values of 0.0 to 0.80.\n")
display("Real value of I is 1.594801. For error evaluation at the end.\n")

display("Our goal is to use the following equation to solve for I.\n")
display("I = h_1*(fx(1)+fx(2))/2 + h_2*(fx(2)+fx(3))/2 h_3*(fx(3)+fx(4))/2 + ... + h_n*(fx(n)+fx(n+1))/2\n")

#I will want three matrices, which all call tables.
#Table x, y, and h.
display("All x values are given to us as to ensure we have uneven segments.\n")
x = [0.0, 0.12, 0.22, 0.32, 0.36, 0.40, 0.44, 0.54, 0.64, 0.70, 0.80]
y = [];
h = [];
display("We ought to put each of these into our starting equation to get our f(x), y, values.\n")
#filling up our f(x), y table
for i = 1:length(x)
  printf("f(x_%d) = \n", i)
  F_X = Function_X(x(i))
  y = [y F_X];
endfor
display("The f(x), y value, table is as such:\n")
y
#now we want our h value table.
display("Height is our delta x for each interval, each consecutive pair of x values.\n")
display("h_n) = x(n+1) - x(n)\n")
for i = 2:length(x)
  printf("h_%d = x(%d) - x(%d)\n", (i-1), i, (i-1))
  x(i)
  x(i-1)
  H = x(i) - x(i-1)
  h = [h H];
endfor
display("Our h table is now complete.\n")
h
display("Now we plug in our h and our f(x) values into our equation to solve for I.\n")
display("For learning sake we will do this per interval.\n")
I = 0;
#our equation is very simple and can be processed in chunks that is what this is doing.
#processing an interval at a time until we process all intervals.
for i = 1:length(h)
  Interval_Area = h(i) * (y(i) + y(i+1))/2
  I = I + Interval_Area
endfor
display("Now to check our error.\n")
display("Error = |(Real - approximated)/Real|*100\n")
Real = 1.640533
Error = abs((Real-I)/Real)*100
