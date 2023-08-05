function F_X = Base_Function(a, b, c, x, i)
    #a = matrix of double derivs
    #b = matrix of x values
    #c = matrix of y values
    #x = target value of x
    #i = interval we are in.
    A = ((a(i)/(6*(b(i+1)-b(i))))*power((b(i+1)-x),3))
    B = ((a(i+1)/(6*(b(i+1)-b(i))))*power((x-b(i)),3))
    C = ((c(i)/(b(i+1)-b(i))) - ((a(i)*(b(i+1)-b(i)))/6))*(b(i+1)-x)
    D = ((c(i+1)/(b(i+1)-b(i))) - ((a(i+1)*(b(i+1)-b(i)))/6))*(x-b(i))
    F_X = A + B + C + D;
endfunction
