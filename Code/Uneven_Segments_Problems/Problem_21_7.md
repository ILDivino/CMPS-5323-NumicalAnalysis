## Problem 21.7
### Michael Ellerkamp
#### Trapezoidal Rule with Unequal Segments

## Base Data from example 21.1.
$f(x)=0.2+25x-200x^{2}+675x^{3}-900x^{4}+400x^{5}$
From x = 0 to x=0.8
Exact value is 1.640533

### New Equation!!
$I = h_1 * (\frac{f(x_0)+f(x_1)}{2}) + h_2 * (\frac{f(x_1)+f(x_2)}{2}) + h_3 * (\frac{f(x_2)+f(x_3)}{2}) +....+ h_n * (\frac{f(x_{n-1})+f(x_n)}{2})$

## Step by Step

### New Table:
Solve the f(x) of each x value by plugging it into our equation.
$f(x)=0.2+25x-200x^{2}+675x^{3}-900x^{4}+400x^{5}$

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

Now we have our heights (f(x)'s) and our x values.  
In the past we would have an even height and then multiply the sum of all the intervals togethers, inner intervals being multiplied by 2. After that we would divide by the height.  
$I = \frac{h}{2}(f(x_0) + 2f(x_0 + h) + 2f(x_0 + 2h) + ... + f(x_o + n*h))$  
Since we have unevent intervals, it is better to just take each pair of f(x)'s that serve as the boundary of each interval and multiply them by the heigh (h)/2.  

$I = h_1 * (\frac{f(x_0)+f(x_1)}{2}) + h_2 * (\frac{f(x_1)+f(x_2)}{2}) + h_3 * (\frac{f(x_2)+f(x_3)}{2}) +....+ h_n * (\frac{f(x_{n-1})+f(x_n)}{2})$  

Important to note that $\huge h = \Delta x$  
Now that height is not uniform we have to create multiple instances of height, h.
$h_1 = \Delta x$ of the first interval. First two x values.  
$h_2 = \Delta x$ of the second interval. Second and third x value.  
$h_3 = \Delta x$ of the third interval. Third and fourth x value.  
Repeat for all x values.  
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

#### Now to put it all together. Using both our tables to fill in the formula.  

$I = 0.12 * \frac{0.2 + 1.309729}{2} + 0.10 * \frac{1.309729 + 1.305241}{2} + 0.10 * \frac{1.305241 + 1.743393}{2} + 0.04 * \frac{1.743393 + 2.074903}{2} + 0.04 * \frac{2.074903 + 2.456000}{2} + 0.04 * \frac{2.456000 + 2.842985}{2} + 0.10 * \frac{2.842985 + 3.507297}{2} + 0.10 * \frac{3.507297 + 3.181929}{2} + 0.06 * \frac{3.181929 + 2.363000}{2} + 0.10 * \frac{2.363000 + 0.232000}{2}$  

Simplifying with h/2

$I = 0.06 * (0.2 + 1.309729) + 0.05 * (1.309729 + 1.305241) + 0.05 * (1.305241 + 1.743393) + 0.02 * (1.743393 + 2.074903) + 0.02 * (2.074903 + 2.456000) + 0.02 * (2.456000 + 2.842985) + 0.05 * (2.842985 + 3.507297) + 0.05 * (3.507297 + 3.181929) + 0.03 * (3.181929 + 2.363000) + 0.05 * (2.363000 + 0.232000)$  

Solving the parenthesis.  

$I = 0.06 * 1.509729 + 0.05 * 2.614970 + 0.05 * 3.048634 + 0.02 * 3.818296 + 0.02 * 4.530903 + 0.02 * 5.298985 + 0.05 * 6.350282 + 0.05 * 6.689226 + 0.03 * 5.544929 + 0.05 * 2.595000$  

Multiplication.  

$I = 0.090584 + 0.130749 + 0.152432 + 0.076366 + 0.090618 + 0.105980 + 0.317514 + 0.334461 + 0.166348 + 0.129750$  

### Answer:  
$I = 1.594802$  
Exact value is 1.640533  
Error = |(real value - approximate value) / real value| * 100  
$\huge Error = |\frac{1.640533 - 1.594802}{1.640533}|*100$  
$Error = |\frac{0.045731}{1.640533}|*100$  
Error = 2.787570  