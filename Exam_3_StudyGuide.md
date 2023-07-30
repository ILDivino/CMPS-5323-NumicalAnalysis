#### Study Guide for Exam 3

### Open Method Root Finders 
## Newton Raphson
Requires one starting x value.  
Uses F(x) and F'(x), max iter, and $E_s$  
$x_{i+1} = x_i - f(x_i)/f'(x_i)$  
$E_a = \vert x_{i+1} - x_i / x_{x+1} \vert$  
## Secant Method
Requires 2 starting x values.  
Uses f(x), max iter, and $E_s$  
$x_{i+1} = x_i - f(x_i)(x_{i-1} - x_i)/( f(x_{i-1})-f(x_i) )$  
$E_a = \vert x_{i+1} - x_i / x_{x+1} \vert$  
### Approximiting the area under a curve.
## Trapezoid Ruless
##### Single Use
$I = ((b-a)/2 ) * ( f(a) * f(b))$ 
#### Multiple Use
N = number of segments  
$\Delta x = (b-a)/N$  
$H = \Delta x / 2$
$I = H * (f(a) + 2f(a + \Delta x) ...... + 2f(a + \Delta x * N-1) + f(a * \Delta x * N))$  
$a + \Delta x * N = b$
## Simpson Rule's
#### 1/3 rule
N must be even.  
$\Delta x = (b-a)/N$  
$H = \Delta x / 3$  
$I = H * (f(a) + 4\sum_{i = 1,3,5,..}^{n-1} f(x_i) + 2\sum_{i = 2,4,6,..}^{n-2} f(x_i) + f(a * \Delta x * N))$  
$a + \Delta x * N = b$  
#### 3/8 rule
$\Delta x = (b-a)/3$  
$H = 3/8 * \Delta x = (b-a)/8$  
$I = H * (f(a) + 3f(a + \Delta x) + 3f(a + \Delta x * 2) + f(a * \Delta x * 3))$  
$a + \Delta x * 3 = b$  