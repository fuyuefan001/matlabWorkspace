function PS07_observatory_fu194(xCamera,yCamera)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% given the position fo camera,check which part of room it is in. 
%
% Function Call
% PS07_observatory_fu194(xCamera,yCamera)
%
% Input Arguments
% double xCamera - x coordinate of camera 
% double yCamera - y coordinate of camera 
%
% Output Arguments
% none
%
% Assignment Information
%   Assignment:       	PS 07, Problem 3
%   Author:             Yuefan Fu, fu194@purdue.edu
%   Team ID:            001-05      
%  	Contributor: 		Name, login@purdue [repeat for each]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%uisng a shorter variable to make test case not too long
x=xCamera;
y=yCamera;

argsObs=[0,0,10];%x,y of center,  diam
argsExh=[-11,11,5,17];%small x, large x,small y, large y
argsOff=[-11,-1,17,23];%small x, large x,small y, large y
argsLob=[-1,11,17,23];%small x, large x,small y, large y
argsVes=[-3,3,4,5];%small x, large x,small y, large y
%1 is lobby,2 is office,3 is exhibithall,4 os observatory, 0 is invalid
%% ____________________
%% CALCULATIONS
if(x>argsLob(1)&&x<argsLob(2)&&y>argsLob(3)&&y<argsLob(4))
    strOut='in lobbby';
elseif(x>argsOff(1)&&x<argsOff(2)&&y>argsOff(3)&&y<argsOff(4))
    strOut='in office';
elseif(x>argsExh(1)&&x<argsExh(2)&&y>argsExh(3)&&y<argsExh(4))
    strOut='in exhibit hall';
elseif(x*x+y*y<argsObs(3)^2/4||x>argsVes(1)&&x<argsVes(2)&&y>argsVes(3)&&y<argsVes(4))
    strOut='in observatory';
else
    strOut='invalid loction';
end
%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('The camera is at [%.2f,%.2f],which is %s\n',x,y,strOut);

%% ____________________
%% COMMAND WINDOW OUTPUT
%PS07_observatory_fu194(0,20)
%The camera is at [0.00,20.00],which is in lobbby
% PS07_observatory_fu194(-3,20)
%The camera is at [-3.00,20.00],which is in office
%PS07_observatory_fu194(-3,10)
%The camera is at [-3.00,10.00],which is in exhibit hall
%PS07_observatory_fu194(-1,4.9)
%The camera is at [-1.00,4.90],which is in observatory
%PS07_observatory_fu194(-6,0)
%The camera is at [-6.00,0.00],which is invalid loction
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end
