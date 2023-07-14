#### Study Guide for Exam 1

## Linear $y = mx + b$
x = x  
y = y  
$L_{A,B} = N * \sum_{i=1}^{N}(A*B) - \sum_{i=1}^{N}A * \sum_{i=1}^{N}B$  
$m = L_{x,y} / L_{x,x}$  
$b = \bar{y} - m * \bar{x}$  
$r = L_{X,Y} / (\sqrt{L_{X,X}} * \sqrt{L_{Y,Y}})$  
## Logarthmic $y = \beta * ln(x) + A$
x = ln(x)  
y = y  
$\zeta_{A,B} = \sum_{i=1}^{N}(A*B) - N * \bar{A} * \bar{B}$  
$\beta = \zeta_{x,y} / \zeta_{x,x}$  
$A = \bar{y} - \beta * \bar{x}$  
$r = \zeta_{X,Y} / (\zeta_{X,X} * \zeta_{Y,Y})$  
## Exponential $y = A * e^{\beta x}$
x = x  
y = ln(y)  
$\zeta_{A,B} = \sum_{i=1}^{N}(A*B) - N * \bar{A} * \bar{B}$  
$\beta = \zeta_{x,y} / \zeta_{x,x}$  
$A = e^{\bar{y} - \beta * \bar{x}}$  
$r = \zeta_{X,Y} / (\sqrt{\zeta_{X,X}} * \sqrt{\zeta_{Y,Y}})$  
## AB Exponential $y = A * \beta ^{x}$
x = x  
y = ln(y)  
$\zeta_{A,B} = \sum_{i=1}^{N}(A*B) - N * \bar{A} * \bar{B}$  
$\beta = e^{\zeta_{X,Y} / \zeta_{X,X}}$  
$A = e^{\bar{y} - (\zeta_{X,Y} / \zeta_{X,X}) * \bar{x}}$  
$r = \zeta_{X,Y} / (\sqrt{\zeta_{X,X}} * \sqrt{\zeta_{Y,Y}})$  
## Exponential Data Transformation $ln(y) = ln(A) + \beta x$ -> $y' = b' + m'x$
x = x  
y = ln(y) //pay special attention to the linear formulation.  
$L_{A,B} = N * \sum_{i=1}^{N}(A*B) - \sum_{i=1}^{N}A * \sum_{i=1}^{N}B$  
$m' = L_{x,y} / L_{x,x}$  
$b' = \bar{y} - m' * \bar{x}$  //remember y = ln(y)  
$r = \zeta_{X,Y} / (\sqrt{\zeta_{X,X}} * \sqrt{\zeta_{Y,Y}})$  
## Power $y = A * x ^{\beta}$
x = ln(x)  
y = ln(y)  
$\zeta_{A,B} = \sum_{i=1}^{N}(A*B) - N * \bar{A} * \bar{B}$  
$\beta = \zeta_{x,y} / \zeta_{x,x}$  
$A = \bar{y} - \beta * \bar{x}$  
$r = \zeta_{X,Y} / (\sqrt{\zeta_{X,X}} * \sqrt{\zeta_{Y,Y}})$  
## $L_{A,B}$ vs $\zeta_{A,B}$ :
$L_{A,B} = N * \sum_{i=1}^{N}(A*B) - \sum_{i=1}^{N}A * \sum_{i=1}^{N}B$  
$\zeta_{A,B} = \sum_{i=1}^{N}(A*B) - N * \bar{A} * \bar{B}$  
## M and $\beta$ formulas
$m = L_{x,y} / L_{x,x}$  
$\beta = \zeta_{x,y} / \zeta_{x,x}$  
$\beta = e^{\zeta_{X,Y} / \zeta_{X,X}}$
## b or A formulas
$b = \bar{y} - m * \bar{x}$  
$A = \bar{y} - \beta * \bar{x}$  
$A = e^{\bar{y} - (\zeta_{X,Y} / \zeta_{X,X}) * \bar{x}}$  
## r value formulas //replace \zeta with L for any formula.
$r = \zeta_{X,Y} / (\zeta_{X,X} * \zeta_{Y,Y})$  
$r = \zeta_{X,Y} / (\sqrt{\zeta_{X,X}} * \sqrt{\zeta_{Y,Y}})$  
