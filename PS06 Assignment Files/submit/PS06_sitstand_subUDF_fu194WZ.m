function [scLength,bodyMass]=PS06_sitstand_subUDF_fu194WZ(secMass,secLength,centerOfMass)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% input mass ,length of 3 parts,calculate the total mass and total  
%
% Function Call
% [scLength,bodyMass]=PS06_sitstand_subUDF_fu194WZ(secMass,secLength,centerOfMass)
%
% Input Arguments
% secMass - 1*3 vector represent mass of 3 sections
% secLength - 1*3 vector represent length of 3 sections
% centerOfMass - 1*3 vector represent center of mass position of each
% section
%
% Output Arguments
% seLength - 1*3 vector,  scaled lengths of each section 
% bodyMass - double, total mass of body
%
% Assignment Information
%   Assignment:     PS 06, Problem 2
%   Author:         Yuefan Fu,fu194@purdue.edu
%   Team ID:        001-05
%  	Contributor:    Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

%% ____________________
%% CALCULATIONS
ds=(secMass(2).*secLength(1)+secMass(3).*secLength(1)+secMass(1).*centerOfMass(1))./sum(secMass);
dt=(secMass(3).*secLength(2)+secMass(2).*centerOfMass(2))./sum(secMass);
dh=(secMass(3).*centerOfMass(3))./sum(secMass);
bodyMass=sum(secMass);
scLength=[ds,dt,dh];
%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT
%x =

%    0.4040    0.3555    0.2286


%y =

%   34.6200

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end
