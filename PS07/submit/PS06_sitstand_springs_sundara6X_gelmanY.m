function [stifConst] = PS06_sitstand_springs_sundara6X_gelmanY(totMass, lengBodParts, scaledLengths)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Converts spring stiffness constants to kN/m based on given inputs such as
% total body mass, length of body parts, and scaled lengths.
%
% Function Call
% PS06_sitstand_springs_sundara6X_gelmanY(totMass, lengBodParts, scaledLengths)
%
% Input Arguments
% totMass, lengBodParts, scaledLengths
%
% Output Arguments
% stifConst
%
% Assignment Information
%   Assignment:       	PS 06, Problem 2
%   Author:             Arunkumar Sundararajan, sundara6@purdue.edu
%                       Alan Gelman, gelman@purdue.edu
%   Team ID:            001-05      
%  	Contributor: 		N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
g_grav = 9.81; %Gravitational accelaration
AdjLength = 0.75;%Adjustable Length

%% ____________________
%% CALCULATIONS
SpConst = totMass * g_grav / AdjLength; %Calculates spring constatnt
stifConst = (SpConst * scaledLengths) / (lengBodParts - scaledLengths);%Calculates stifness constant

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('\nThe spring constant is %f N/m\n', stifConst)

%% ____________________
%% COMMAND WINDOW OUTPUT
% [scaledLength, totMass]=PS06_sitstand_com_sundara6W_gelmanZ([3.1, 7.39, 24.13],[0.421, 0.432, 0.8],[0.55*0.421, 0.59*0.432, 0.41*0.8]);
% 
% 
% 0.404036
% 
% 
% 
% 0.355509
% 
% 
% 
% 0.228615
% 
% 
% 
% 34.620000
% 
% [stifConst]=PS06_sitstand_springs_sundara6X_gelmanY(totMass, [0.421, 0.432, 0.8], scaledLength);
% The spring constant is 224.188170

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

end