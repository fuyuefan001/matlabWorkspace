function [count,taylor,diff]=PS08_taylor_cos_fu194(numIn,tol)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% using taylor formula to calculate approximate value of cos.
% 
%Function Call
% [count,taylor,diff]=PS08_taylor_cos_fu194(numIn,tol)
%
% Input Arguments
% double numIn - num input for calculate cos
% double tol - tolerance of the last term
% Output Arguments
% double taylor - approximate cos result calculated
% int count - number of terms 
% double diff - difference between the calculated approximat cos and real
% value
%
% Assignment Information
%   Assignment:       	PS 08, Problem 2
%   Author:             Yuefan Fu, fu194@purdue.edu
%   Team ID:            001-05      
%  	Contributor: 		Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%initialize default output value
taylor=NaN;
count=0;
diff=NaN;

%% ____________________
%% CALCULATIONS
dem=size(numIn);
if(dem(1)~=1||dem(2)~=1)%check if is Scaler
    fprintf('error: invalid x');
    return;
elseif(tol<=0||tol>=1)%check tolerence
    fprintf('error: invalid tolerance')
    return;
else
    taylor=0;
    count=0;
    %calculate approxmate cos
    while(abs((-1)^(count)*numIn^(2*count)/factorial(count*2))>tol)
        taylor=taylor+(-1)^(count)*numIn^(2*count)/factorial(count*2);
        count=count+1;
        %fprintf('%.4f\n',taylor);
    end
    %calculate difference
    diff=abs(cos(numIn)-taylor);
end

%% ____________________
%% COMMAND WINDOW OUTPUT

%[x,y,z]=PS08_taylor_cos_fu194(2,0.001)
%x =
%     5
%y =
%   -0.4159
%z =
%   2.7382e-04

%[x,y,z]=PS08_taylor_cos_fu194(pi,0.001)
%x =
%     7
%y =
%   -0.9999
%z =
%   1.0047e-04
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end
