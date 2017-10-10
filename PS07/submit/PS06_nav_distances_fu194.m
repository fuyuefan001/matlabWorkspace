function [gcDis,rlDis]=PS06_nav_distances_fu194(latStart,lonStart,latFinal,lonFinal)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% given the latitude and longtitude of 2 position on earth, calculate the
% great cirle distance and rhumb line distance between them
%
% Function Call
% 
% [x,y]=PS06_nav_distances_fu194(50.026403,8.543131,35.5523,139.78);
% [z,w]=PS06_nav_distances_fu194(33.942536,-118.408075,25.2528,55.3644);
% Input Arguments
% latStart - double, latitude of initial positon
% lonStart - double, longtitude of initial position
% latFinal - double, latitude of final positon
% lonFinal - double, longtitude of final position
%
% Output Arguments
% gcDis - great circle distance 
% rlDis - rhumb line distance 
%
% Assignment Information
%   Assignment:     PS 07, Problem 2
%   Author:         Yuefan Fu,fu194@purdue.edu
%   Team ID:        001-05
%  	Contributor:    Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
R=6371000;

%% ____________________
%% CALCULATIONS
latP1=latStart;
lonP1=lonStart;
latP2=latFinal;
lonP2=lonFinal;
dLat=latP2-latP1;
dLon=lonP2-lonP1;
a=sind(dLat/2)^2+cosd(latP1)*cosd(latP2)*sind(dLon/2)^2;
c=2*atan2(a^(1/2),(1-a)^(1/2));
dc=R*c;
dr=R*((dLat*pi/180)^2+(cosd(dLat/2)*dLon*pi/180)^2)^(1/2);

gcDis=dc/1000;
rlDis=dr/1000;
%% _________    ___________
%% FORMATTED TEXT & FIGURE DISPLAYS

%% ____________________
%% COMMAND WINDOW OUTPUT

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end
