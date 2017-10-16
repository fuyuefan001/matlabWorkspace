%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%   ...
%
% Assigment Information
%   Assignment:  	    PS 02, Problem 1
%   Author:             Yidi Du,du153@purdue.edu
%   Team ID:            001
%  	Paired Programmer:  Yuefan Fu, fu194@purdue.edu
%  	Contributor:        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
A = zeros(4,4)
vals = [1 3 2 4;5 6 7 8;9 10 11 12;13 15 14 16]

%% ____________________
%% COPY & CONCATENATION
M = vals(2:3,2:3)
C = vals(1,2:3)
D = vals(4,2:3)
E=[vals(1,1),D,vals(1,4)]
F=[vals(4,1),C,vals(4,4)]


%% ____________________
%% REPLACE MATRIX ELEMENTS
A(1,:)=E
A(4,:)=F
A(2:3,2:3)=M
A(2,1) = vals(3,4)
A(3,1) = vals(4,1)
A(2,4) = vals(3,1)
A(3,4) = vals(2,1)

%% ____________________
%% FINAL MATRIX
X = sum(A)
G = [A;X]
Y = sum(G,2)
H=[G,Y]
H(5,5)=H(1,1)+H(2,2)+H(3,3)+H(4,4)
%% ____________________
%% FORMATTED TEXT DISPLAY 
fprintf('After doing step 8.e, the value in the center of H is %f.\n',H(3,3))
fprintf('\nAfter doing step 8.e, the value in the upper left of H is %f.\n',H(1,1))
fprintf('and the value in the upper right of H is %f.\n\n',H(1,5))
fprintf('After doing step 8.e, the value in the lower left of H is %f,\n',H(5,1))
fprintf('and the value in lower right of H is %f.\n',H(5,5))
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%