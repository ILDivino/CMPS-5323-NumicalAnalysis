# Study Guide for Exam 4

# Interpolations
## Linear Interpolation:
### Needs 2 data points
$\huge f(x) = f(x_0) + \frac{f(x_1) - f(x_0)}{x_1 - x_0} * (x - x_0)$ 
## Quadratic Interpolation:
### Needs 3 data points
#### B formula:
$\huge b_0 = f(x_0)$  
$\huge b_1 = \frac{f(x_1) - f(x_0)}{x_1 - x_0}$  
$\huge b_2 = \frac{\frac{f(x_2) - f(x_1)}{x_2 - x_1} - \frac{f(x_1) - f(x_0)}{x_1 - x_0}}{x_2 - x_0}$  
#### A formula:
$a_0 = b_0 - b_1 * x_0 + b_2 * x_0 * x_1$  
$a_1 = b_1 - b_2 * x_0 - b_2 * x_1$  
$a_2 = b_2$  
#### Final Formula:
$f_{2}(x) = a_0 + a_1*x + a_2*x^2$  
# Differentials
## Euler's Method  
## Need an equation like:
$\frac{d_y}{d_x} + 04*y = 3^-x; f(0) = 5$  
$x_0 = 0 ; y_0 = 5$  
### Choose a step size, h. 
### Rewrite formula so it is:
$\frac{d_y}{d_x} = 3^-x - 04*y$  
## Formula
$y_{i+1} = y_i + f(x_i,y_i) * h$  
$x_{i+1} = x_i + h$  
## Runge Kutta 4th Order:
### same conditions as Euler.
## Formula
$y_{i+1} = y_i + \frac{1}{6}*(k_1 + 2k_2 + 2k_3 + k_4)*h$  
$k_1 = f(x,y)$  
$k_2 = f(x+\frac{1}{2}h, y+\frac{1}{2}k_{1}h)$  
$k_3 = f(x+\frac{1}{2}h, y+\frac{1}{2}k_{2}h)$  
$k_4 = f(x_{i} + h, y_i + k_{3}h)$  
## Cubic Splices
### Need 4 sets of data, (x,y)
## Formula
### $f''(x) = 0$, for the first and last x value.
### Do this formula for both inner x values. i=2 and i=3.  
$\huge (x_{i}-x_{i-1})f''(x_{i-1}) + 2(x_{i+1}-x_{i-1})f''(x_i) + (x_{i+1}-x_i)f''(x_{i+1}) = \frac{6}{x_{i+1}-x_i}[f(x_{i+1})-f(x_i)] + \frac{6}{x_{i}-x_{i-1}}[f(x_{i-1})-f(x_i)]$  
### Use the two formulas to solve for $f''(x_2)$ and $f''(x_3)$
### Determine which interval the target value is located in and use the proper $f''(x_i)$ values for the lower and upper bound of that interval for the following equation.
$\huge f_{i}(x) = \frac{f''(x_{i-1})}{6(x_{i}-x_{i-1})}(x_{i}-x)^3 + \frac{f''(x_{i})}{6(x_{i}-x_{i-1})}(x-x_{i-1})^3 + [\frac{f(x_{i-1})}{x_{i}-x_{i-1}}-\frac{f''(x_{}i-1)(x_{i}-x_{i-1})}{6}](x_{i}-x) + [\frac{f(x_{i})}{x_{i}-x_{i-1}}-\frac{f''(x_i)(x_{i}-x_{i-1})}{6}](x-x_{i-1})$  
