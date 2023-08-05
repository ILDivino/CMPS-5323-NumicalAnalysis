function A_0A = Function_XY(a, b, c)
    F_X = F_X = Base_Function(b)
    F_X_PlusOne = F_X
    F_X = F_X = Base_Function(c)
    F_X_MinusOne = F_X
    F_X = F_X = Base_Function(a)
    A_0A = (6/(b-a))(F_X_PlusOne - F_X) + (6/(a-c))(F_X_MinusOne - F_X)
endfunction
# a is X
# b is x+1
# c is x-1
# A_0A = 6/(x_i+1 - x) * ( f(x_i+1) - f(x)) + 6/(x - x_i-1) * ( f(x_i-1) - f(x))
