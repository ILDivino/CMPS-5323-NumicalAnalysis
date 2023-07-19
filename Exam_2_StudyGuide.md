#### Study Guide for Exam 2

## Power Transform $y' = b' + m'x'$ -> $y = A * x ^{\beta}$ 
x = ln(x)  
y = ln(y)  
$\zeta_{A,B} = \sum_{i=1}^{N}(A*B) - N * \bar{A} * \bar{B}$  
$\beta = \zeta_{x,y} / \zeta_{x,x}$  
$m' = \beta$  
$A = e^{\bar{y} - \beta * \bar{x}}$  
$b' = \bar{y} - \beta * \bar{x}$  
$r = \zeta_{X,Y} / (\sqrt{\zeta_{X,X}} * \sqrt{\zeta_{Y,Y}})$  
## Polynomial $y = a_0 + a_1 * x + a_2 * x^2 + e$
Matrix A = 
$
\left(\begin{array}{cc} 
\sum_{i=1}^{N}(x^0) & \sum_{i=1}^{N}(x^1) & \sum_{i=1}^{N}(x^2)\\
\sum_{i=1}^{N}(x^1) & \sum_{i=1}^{N}(x^2) & \sum_{i=1}^{N}(x^3)\\
\sum_{i=1}^{N}(x^2) & \sum_{i=1}^{N}(x^3) & \sum_{i=1}^{N}(x^4)
\end{array}\right)  
$  
Matrix C =
$
\left(\begin{array}{cc} 
\sum_{i=1}^{N}(y)\\
\sum_{i=1}^{N}(y*x)\\
\sum_{i=1}^{N}(y*x^2)
\end{array}\right)
$  
Matrix B contains the '$a_i$' values.  
Matrix B = A\C, inv(A)/C or user determinates to solve  
$Sr = \sum_{i=1}^{N}((y_i - a_0 - (a_1 * x_i) - (a_2 * x_i^2))^2)$  
$S_{YX} = \sqrt{Sr/(n-(m+1))}$  
$R^2 =(\zeta_{y,y}^2 - SR)/\zeta_{y,y}^2$  
$R = \sqrt{R^2}$
