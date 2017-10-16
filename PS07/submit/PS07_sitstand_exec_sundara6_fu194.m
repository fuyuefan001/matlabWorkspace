function PS07_sitstand_exec_sundara6_fu194
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function calls the sub UDF's which are the center of mass UDF and
% spring constant UDF.
%
% Function Call
%PS07_sitstand_exec_sundara6_fu194
%
% Input Arguments
%None
%
% Output Arguments
%None
% Assignment Information
%   Assignment:       	PS 07, Problem 1
%   Author:             Arunkumar Sundararajan, sundara6@purdue.edu
%                       Yuefan Fu , fu194@purdue.edu
%   Team ID:            001-05      
%  	Contributor: 		Name, login@purdue [repeat for each]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
secMass=[3.1,7.39,24.13]; %Input the mass of section
secLength=[0.421,0.432,0.8]; %Input the section length
centerOfMass=secLength.*[0.55,0.59,0.41]; %Input the center of mass
adjLength=0.75; % Adjustable length constant


%% ____________________
%% CALCULATIONS
[wzo1,wzo2]=PS06_sitstand_subUDF_fu194WZ(secMass,secLength,centerOfMass); %Function used to calculate scaled lengths and total mass of body
xyo=PS06_sitstand_springs_sundara6X_gelmanY(wzo2,secLength,wzo1);% Function used to calculate spring stifness

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('The center of mass is %f,%f,%f, and spring constant is, %f' ,centerOfMass,xyo)

%% ____________________
%% COMMAND WINDOW OUTPUT
% PS07_sitstand_exec_sundara6_fu194
% 
% The spring constant is 224.188170 N/m
% The center of mass is 0.231550,0.254880,0.328000, and spring constant is, 224.188170

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

end