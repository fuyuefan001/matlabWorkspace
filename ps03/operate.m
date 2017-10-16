function  result  = operate(C,D,E)
%OPERATE Summary of this function goes here
%   Detailed explanation goes here
result=~C == D | E > C < (D & C);

end

