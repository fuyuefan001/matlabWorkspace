function [gcDis,rlDis]=PS06_nav_distances_fu194(startStr,latStart,lonStart,finalStr,latFinal,lonFinal)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% given the latitude and longtitude of 2 position on earth, calculate the
% great cirle distance and rhumb line distance between them
%
% Function Call
% 
% [x,y]=PS06_nav_distances_fu194('FRA',50.026403,8.543131,'HND',35.5523,139.78);
% [z,w]=PS06_nav_distances_fu194('LAX',33.942536,-118.408075,'DXB',25.2528,55.3644);
% Input Arguments
% startStr - String ,name of initial position,
% latStart - double, latitude of initial positon
% lonStart - double, longtitude of initial position
% finalStr - String ,name of final position,
% latFinal - double, latitude of final positon
% lonFinal - double, longtitude of final position
%
% Output Arguments
% gcDis - great circle distance 
% rlDis - rhumb line distance 
%
% Assignment Information
%   Assignment:     PS 06, Problem 3
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
fprintf('The great circle distance between %s and %s is %.4f km\n',startStr,finalStr,gcDis);
fprintf('The rhumb line distance between %s and %s is %.4f km\n\n',startStr,finalStr,rlDis);

%% ____________________
%% COMMAND WINDOW OUTPUT
%The great circle distance between FRA and HND is 9362.6408 km
%The rhumb line distance between FRA and HND is 14565.8099 km

%The great circle distance between LAX and DXB is 13400.0740 km
%The rhumb line distance between LAX and DXB is 19291.3005 km
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end
