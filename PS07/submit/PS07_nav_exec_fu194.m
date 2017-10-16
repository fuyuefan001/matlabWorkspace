function PS07_nav_exec_fu194
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% using GUI imput loction name, longtitudes and latitudes of 2 place, show 
% great circle distance and rhumb line distance in another window 
% 
% Function Call
% PS07_nav_exec_fu194
%
% Input Arguments
% none 
%
% Output Arguments
% none
%
% Assignment Information
%   Assignment:       	PS 07, Problem 2
%   Author:             Yuefan Fu, fu194@purdue.edu
%   Team ID:            001-05    
%  	Contributor: 		Name, login@purdue [repeat for each]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%get 6 parameters returned from the GUI
[startStr,latStart,lonStart,finalStr,latFinal,lonFinal]=BACS_inputCoords;




%% ____________________
%% CALCULATIONS
%using the longtitudes and latitudes calculate great circle distance and rhumb line distance
[gcDis,rlDis]=PS06_nav_distances_fu194(latStart,lonStart,latFinal,lonFinal);

%% ____________________
%% FORMATTED DISPLAY
%call BACS_dispDists to create another GUI to show the calculation result
BACS_dispDists(startStr,finalStr,gcDis,rlDis);

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end

