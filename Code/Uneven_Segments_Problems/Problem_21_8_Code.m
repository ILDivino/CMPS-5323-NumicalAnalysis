#Michael Ellerkamp
#CMPS5323 Numerical Analysis
#Project - Unequal Segments.
#Problem example 21.8
#Write code that performs the equation for example 21.8 in the book.
#Code calls Function_X.m
#This code is not streamlined, it is verbose as it is for learning the problem.
#Instructions will follow a logical flow rather than bundling operations together.

#We will be combining the Trapezoid rule, simpson's 1/3 rule, and simpson's 3/8 rule to get the area of this data.

display("Starting data.\n")
display("f(x) = .02 + 25x - 200x^2 + 675x^3 - 900x^4 + 400x^5\n")
display("Find the area, I, from the x values of 0.0 to 0.80.\n")
display("Real value of I is 1.594801. For error evaluation at the end.\n")

display("Our goal is to use the following equation to solve for I.\n")
display("I = h_1*(fx(1)+fx(2))/2 + h_2*(fx(2)+fx(3))/2 h_3*(fx(3)+fx(4))/2 + ... + h_n*(fx(n)+fx(n+1))/2\n")

#I will want three matrices, which all call tables.
#Table x, y, and h.
display("All x values are given to us as to ensure we have uneven segments.\n")
x = [0.00, 0.12, 0.22, 0.32, 0.36, 0.40, 0.44, 0.54, 0.64, 0.70, 0.80]
y = [];
h = [];
display("We ought to plus each of these into our starting equation to get our f(x), y, values.\n")
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
display("Now we need to check our h table for consecutive patterns.\nFor each 3 consecutive matching heights we will perform the 3/8 rule.\nFor each 2 consecutive heights we will perform the 1/3 rule.\nFor all others we will use the trapezoid rule.\n")
#We need an area Matrix now to hold all our area values, I.
display("I am creating an area, I, matrix to hold the area values we find.\n")
I = [];
#j will keep track of my consecutive matching heights.
#k is for looking into the future.
i = 1;
#comparisons are weird and I am getting extremely small errors causing comparisons to fail.
#so I am adding a tolerance to remove this.
TOLERANCE = 0.000001
#we are going to process our intervals using the h table as our main focus.
#this is important as we now have to look into the future h values to see if we find matching.
#values as that will determine what kind of equation we use to process the area of the intervals involved.
#if we find a 3/8 or 1/3 rule we will increase the value of i more than once in order to move past the matching values
#we have already processed.
#k is to index future h values.
#j is to keep track of how many matching consecutive values we find.
while i <= length(h)
  i
  current_h = h(i);
  k = i + 1;
  j = 1;
  while k <= length(h) && abs(current_h - h(k)) < TOLERANCE
    h(k);
    j = j+1;
    k = k+1;
  endwhile
  if j >= 3
    i = i + 3;
    #do 3/8 rule
    display("3/8!!!\n")
    Delta_X = (x(i) - x(i-3))/3;
    Area = (Delta_X * (3/8))*(y(i)+3*y(i-1)+3*y(i-2)+y(i-3))
    I = [I Area];
  elseif j == 2
    i = i + 2;
    Delta_X = (x(i) - x(i-2))
    Area = (Delta_X/6)*(y(i)+4*y(i-1)+y(i-2))
    I = [I Area];
    #do 1/3 rule
    display("1/3!!!\n")
  else
    Delta_X = (x(i+1) - x(i));
    Area = (Delta_X/2)*(y(i+1)+y(i))
    I = [I Area];
    #do trapezoid rule
    display("Trapezoid!!!!\n")
    i = i+1;
  endif
endwhile
display("In the end we get these areas for different collections of intervals.\n")
I
printf("The grand total area is: %d\n", sum(I))

display("\nNow to check our error.\n")
display("Error = |(Real - approximated)/Real|*100\n")
Real = 1.640533
Error = abs((Real-sum(I))/Real)*100
