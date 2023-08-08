## Problem 21.8
### Michael Ellerkamp
#### Inclusion of Simpson's Rules in the Evaluation of Uneven Data

## Base Data from example 21.1.
$f(x)=0.2+25x-200x^{2}+675x^{3}-900x^{4}+400x^{5}$
From x = 0 to x=0.8
Exact value is 1.640533

### Old Equation!!
$I = h_1 * (\frac{f(x_0)+f(x_1)}{2}) + h_2 * (\frac{f(x_1)+f(x_2)}{2}) + h_3 * (\frac{f(x_2)+f(x_3)}{2}) +....+ h_n * (\frac{f(x_{n-1})+f(x_n)}{2})$ 

### New tools
We will be taking this old equation and adding two new features to it.
1. When we run across 2 consecutive heights, h values, we will use Simpson's 1/3 rule to get the area of those 2 intervals.
2. When we run across 3 consecutive heights, h values, we will use Simpson's 3/8 rule to get the area of those 3 intervals.
All other intervals will use the Trapezoid rule.
We will then add up all these areas to get our total area.

## Step by Step

### New Table:
Solve the f(x) of each x value by plugging it into our equation.
$f(x)=0.2+25x-200x^{2}+675x^{3}-900x^{4}+400x^{5}$
x and f(x) table:
|i|x|f(x)|
|-|-|-|
|0|0.00|0.200000|
|1|0.12|1.309729|
|2|0.22|1.305241|
|3|0.32|1.743393|
|4|0.36|2.07493|
|5|0.40|2.456000|
|6|0.44|2.842985|
|7|0.54|3.507297|
|8|0.64|3.181929|
|9|0.70|2.363000|
|10|0.80|0.232000|

a few examples:  
$f(0) = 0.2 + 25(0) - 200(0)^2 + 675(0)^3 - 900(0)^4 + 400(0)^5$  
$f(0) = 0.2  
$f(0.12) = 0.2 + 25(0.12) - 200(0.12)^2 + 675(0.12)^3 - 900(0.12)^4 + 400(0.12)^5$  
$f(0.12) = 0.2 + 3 - 2.88 + 1.1664 - 0.186624 + 0.009953$  
$f(0.12) = 1.309729$  
Repeat to populate table for easier referencing.  

Now we have our heights (x's) and our f(x) values.  
We need our height values now.  
Note that $\huge h = \Delta x$  
Now that height is not uniform we have to create multiple instances of height, h.
$h_1 = \Delta x$ of the first interval. First two x values.  
$h_2 = \Delta x$ of the second interval. Second and third x value.  
$h_3 = \Delta x$ of the third interval. Third and fourth x value.  
Repeat for all x values.
h table:  

|$h_i$|$\Delta X$|  
|-|-|  
|1|0.12|  
|2|0.10|  
|3|0.10|  
|4|0.04|  
|5|0.04|  
|6|0.04|  
|7|0.10|  
|8|0.10|  
|9|0.06|  
|10|0.10|  

$h_1 = .12 - 0.0$ $h_1 = .12$    
$h_2 = .22 - 0.12$ $h_2 = .10$  
$h_3 = .32 - 0.22$ $h_3 = .10$  
$h_4 = .36 - 0.32$ $h_4 = .04$  
etc...  

## Time to start solving.
Now that we have all the variables we need to run the equation we now need to see if we have any sets of repeating heights, 2 consecutive for 1/3 rule or 3 consecutive for 3/8 rule. Use our h table for easy reference.

### Using our new tools
We have 2 sets of 2 repeats and 1 set of 3 repeats.
Simpson 1/3 rule for the following intervals:
2 and 3.
7 and 8.
Simpson 3/8 rule for the following intervals:
4, 5, and 6.
Trapezoide Rule for the remaining intervals:
1, 9, and 10.

### 1/3 Rule
$\Delta x = (x_2 - x_1)/2$  
$h = \Delta x/6$  
$I = h * (f(x_0) + 4f(x_0 + \Delta x) + f(x_1))$   
##### Interval (2,3)  
$\Delta x = (x_3 - x_1)/2$  
$\Delta x = (0.32 - 0.12)/2 = 0.2$  
$I = h * (f(1) + 4f(2) + f(3))$  
$I = \frac{.2}{6} * (1.743393 + 4(1.305241) + 1.309729)$  
$I_1 = 0.275803$   
#### Interval (7,8)  
$\Delta x = (x_8 - x_6)/2$  
$\Delta x = (0.64 - 0.44)/2 = 0.2$  
$I = h * (f(x_6) + 4f(x_7) + f(x_8))$  
$I = \frac{.2}{6} * (2.842985 + 4(3.507297) + 3.181929)$  
$I_2 = 0.668470$  
### 3/8 Rule
$\Delta x = (b-a)/3$  
$H = 3/8 * \Delta x = (b-a)/8$  
$I = H * (f(a) + 3f(a + \Delta x) + 3f(a + \Delta x * 2) + f(a * \Delta x * 3))$  
$a + \Delta x * 3 = b$     
#### Interval (4, 5, 6)
$\Delta x = (x_6 - x_3)/3$  
$\Delta x = (0.44 - 0.32)/3 = 0.4$  
$H = (3 * 0.4)/8 = .12/8
$I = H * (f(x_3) + 3f(x_4) + 3f(x_5) + f(x_6))$  
$I = \frac{.12}{8} * (1.743393 + 3(2.074903) + 3(2.456000) + 2.842985)$  
$I_3 = 0.272686$  
### Trapezoid Rule
$h_n = \Delta x of the interval.  
$I = h_1 * (\frac{f(x_0)+f(x_1)}{2}) + h_2 * (\frac{f(x_1)+f(x_2)}{2}) + h_3 * (\frac{f(x_2)+f(x_3)}{2}) +....+ h_n * (\frac{f(x_{n-1})+f(x_n)}{2})$   
#### Interval (1,9,10)
Use h table for the h_n value of each interval.  
$h_1 = 0.12$  
$h_9 = 0.06$  
$h_10 = 0.10$  
$I = h_1 * (\frac{f(x_0)+f(x_1)}{2}) + h_9 * (\frac{f(x_8)+f(x_9)}{2}) + h_10 * (\frac{f(x_9)+f(x_10)}{2})$  
$I = .12 * (\frac{0.200000 + 1.309729}{2}) + .06 * (\frac{3.181929 + 2.363000}{2}) + .10 * (\frac{2.363000 + 0.232000}{2})$  
Dividing h by 2 and solving the parenthesis. 
$I = .06 * (1.509729) + .03 * (5.544929) + .05 * (2.595000)$  
$I = 0.090584 + 0.166348 + 0.129750$  
$I_4 = 0.386682$  
## We have now solved the area for each interval, 4 areas in total. Time to add them up for our final area.
$I = I_1 + I_2 + I_3 + I_4$  
$I = 0.275803 + 0.668470 + 0.272686 + 0.386682$  
$I = 1.603641$  
$Real = 1.640533$
Error = |(real value - approximate value) / real value| * 100  
$\huge Error = |\frac{1.640533 - 1.603641}{1.640533}|*100$  
$Error = |\frac{0.022488}{1.640533}|*100$  
Error = 2.248781  