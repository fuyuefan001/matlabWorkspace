%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%  	...
%
% Assigment Information
%   Assignment:     PS 02, Problem #2
%   Author:         Yuefan Fu, fu194@purdue.edu
%   Team ID:        001
%  	Contributor:    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
[a,b,c] = textread('Data_direct_labor_costs.txt','%d%d%d','headerlines',1)
A=[a,b,c]

%% ____________________
%% CALCULATIONS
Model1 = 61 * a.^(-0.5)
Model2 = 75 * a.^(-0.62)
%% ____________________
%% MODEL SMOOTHNESS CHECK
smoothA = [1:20]
smoothM1=61*smoothA.^(-0.5)
plot(smoothA,smoothM1);
title('Direct labor hours for the Illinois plant')
xlabel('Cumulative Number of Units')
ylabel( 'Manufactured Illinois Plant Direct Labor (Hours/Unit)')
grid on


%% ____________________
%% FORMATTED FIGURES 
smoothM2=75*smoothA.^(-0.62);
plot(a,b,'^',a,c,'o',smoothA,smoothM1,smoothA,smoothM2);
title('Direct labor hours for the Illinois plant')
xlabel('Cumulative Number of Units')
ylabel( 'Manufactured Plant Direct Labor (Hours/Unit)')
legend('IL actual','NE actual','IL model','NE model');


%% ____________________
%% ANALYSIS

%% -- Q1
% Nebraska's plant have a more efficient training program as shown in the
% figure that first the direct labor was higher than Illinois but finally
% less than Illinois. 

%% -- Q2
%   Training has minimized the cost of labor because people can spend less
%   time to do the same amount work. 

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

