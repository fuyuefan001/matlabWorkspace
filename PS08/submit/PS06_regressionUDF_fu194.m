function [slope,intercept,r_sq]=PS06_regressionUDF_fu194(dataX,dataY)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% input 2 vectors with agreed dimentions ,return the e best-fit line��s
% slope, intercept, and coefficient of determination and print them in
% commmend lines 
%
% Function Call
% function [slope,intercept,r_sq]=PS06_regressionUDF_fu194(dataX,dataY)
%
% Input Arguments
% dataX - independent varaible data set
%
% Output Arguments
% dataY - dependent variable data set
%
% Assigment Information
%   Assignment:     PS 06, Problem 3
%   Author:         Yuefan Fu,fu194@purdue.edu
%   Team ID:        001-05
%  	Contributor:    Name, login@purdue [repeat for each]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION


%% ____________________
%% CALCULATIONS
coefReg=polyfit(dataX,dataY,1);
slope=coefReg(1);
intercept=coefReg(2);
yFit=polyval(coefReg,dataX);
SST=sum((dataY-mean(dataY)).^2);
SSE=sum((dataY-yFit).^2);
r_sq=1-SSE/SST;

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT

%% ____________________
%% ANALYSIS 

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end