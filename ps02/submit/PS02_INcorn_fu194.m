%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%  	...
%
% Assigment Information
%   Assignment:  	    PS #02, Problem #3
%   Author:             Yuefan Fu, fu194@purdue.edu
%   Team ID:            001
%   Paired Programmer:  Yidi Du, du153@purdue.edu
%   Contributor:        Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
data=csvread('Data_Indiana_GMcorn.csv',5,0);
year=data(:,1);
totalGmCorn=data(:,2);
bt=data(:,3);
ht=data(:,4);
stackedGene=data(:,5);
Acre=data(:,6);
Bushel=data(:,7);
Yield=data(:,8);
Value=data(:,9);


%% ____________________
%% GM CORN VARIETIES PLOT
plot(year,bt,'o',year,ht,'^',year,stackedGene,'x',year,totalGmCorn,'v');
title('percangate of Gm corn');
xlabel('Time(year)');
ylabel('percnetage of each condition');
%% ____________________
%% CORN PRODUCTION PLOT
subplot(2,2,1);
plot(year,Yield,'b^');
title('corn yield over time.');
xlabel('Time(year)');
ylabel('corn yield');
subplot(2,2,3);
plot(year,Value,'ro');
title('corn value over time.');
xlabel('Time(year)');
ylabel('corn value');
subplot(2,2,2);
plot(totalGmCorn,Yield,'cv');
title('percentage of GM plantings affects corn yield.');
xlabel('percentage of GM plantings');
ylabel('corn yield');
subplot(2,2,4);
plot(totalGmCorn,Value,'yx');
title('percentage of GM plantings affects corn value.');
xlabel('Tpercentage of GM plantings');
ylabel('corn value');

%% ____________________
%% ANALYSIS

%% -- Q1
% during 2000to 2008, it increase with acceleration. from 20080 to 2016, it
% increase slower and vary at about 80% to 90%
% 

%% -- Q2
% subplot B

%% -- Q3
% the corn value reach the max at 2010, and then decrease, so people plant
% stop increase the production of corn

%% -- Q4
% grow more GM corn because accoring to subplot D, total value of corn
% increase with the percentage of GM corn increase

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.