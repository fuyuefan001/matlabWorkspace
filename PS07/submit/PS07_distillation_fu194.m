function PS07_distillation_fu194(TBP)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% input a True Boiling Point of a oil, print the PDV and Distillate Compound
%
% Function Call
% PS07_distillation_fu194(TBP)
%
% Input Arguments
% double TBP - True Boiling Point
%
% Output Arguments
% none
%
% Assignment Information
%   Assignment:       	PS 07, Problem 4
%   Author:             Yuefan Fu, fu194@purdue.edu
%   Team ID:            001-05      
%  	Contributor: 		Name, login@purdue [repeat for each]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION


%% ____________________
%% CALCULATIONS
%check if the input is valid
%check which Distillate Compound is according to the TBP input.
if(TBP<0||TBP>500)
    fprintf('Invalid input, make sure your input is double between 0 and 500,included\n');
    return ;
elseif(TBP<20)
    strOut='nothing';
elseif(TBP<150)
    strOut='Liquefied Petroleum Gas';
elseif(TBP<200)
    strOut='Gasoline';
elseif(TBP<300)
    strOut='Kerosene';
elseif(TBP<375)
    strOut='Diesel Oil';
elseif(TBP<400)
    strOut='Fuel Oil';
else
    strOut='Residuals';
end
%calculate PDV using formula provided
if(TBP<8.4)
    PDV=0;
else
    PDV=0.144*TBP-1.206;
end

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('Distillate Compound at TBP= %.2f is %s, PDV is %.3f\n',TBP,strOut,PDV);

%% ____________________
%% COMMAND WINDOW OUTPUT
%PS07_distillation_fu194(-1)
%Invalid input, make sure your input is double between 0 and 500,included
%PS07_distillation_fu194(5)
%Distillate Compound at TBP= 5.00 is nothing, PDV is 0.000
%PS07_distillation_fu194(10)
%Distillate Compound at TBP= 10.00 is nothing, PDV is 0.234
%PS07_distillation_fu194(50)
%Distillate Compound at TBP= 50.00 is Liquefied Petroleum Gas, PDV is 5.994
%PS07_distillation_fu194(175)
%Distillate Compound at TBP= 175.00 is Gasoline, PDV is 23.994
%PS07_distillation_fu194(250)
%Distillate Compound at TBP= 250.00 is Kerosene, PDV is 34.794
%PS07_distillation_fu194(350)
%Distillate Compound at TBP= 350.00 is Diesel Oil, PDV is 49.194
%PS07_distillation_fu194(380)
%Distillate Compound at TBP= 380.00 is Fuel Oil, PDV is 53.514
%PS07_distillation_fu194(420)
%Distillate Compound at TBP= 420.00 is Residuals, PDV is 59.274
%PS07_distillation_fu194(600)
%Invalid input, make sure your input is double between 0 and 500,included

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

