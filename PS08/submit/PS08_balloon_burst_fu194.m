function PS08_balloon_burst_fu194(fillDia,burstDia)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% given using binary search,Calculate the burst altitude of the balloon to the nearest 0.5 kilometer using a looping structure. Use
% USAtmos_1976.p to determine the necessary atmospheric pressure and temperature
%
% Function Call
% function PS08_balloon_burst_fu194(fillDia,burstDia)
%
% Input Arguments
% double fillDia - initial diameter of balloon
% double burstDia - expected burst diameter
%
% Output Arguments
% none
%
% Assignment Information
%   Assignment:       	PS 08, Problem 3
%   Author:             Yuefan Fu, fu194@purdue.edu
%   Team ID:            001-05      
%  	Contributor: 		Name, login@purdue [repeat for each]
%did you complete the assignment information? delete this line if yes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% LOOP INITIALIZATION
%initialize low and hign limit and count
lowLim=0;
highLim=86;
count=0;
%calcualte pressure and temperature when launch
[P0,T0]=USAtmos_1976(0);
mid=(highLim+lowLim)/2;
[midP,midT]=USAtmos_1976(mid);
tempDia=fillDia*(P0*midT/midP/T0)^(1/3);
%% ____________________
%% LOOP STRUCTURE
%binary search
while(highLim-lowLim>=0.5)%assign precision level to 0.5km
    if(tempDia<=burstDia)
        %update lower limit
        lowLim=mid;
    else
        %update higher limit
        highLim=mid;
    end
    %update mid point
    mid=(highLim+lowLim)/2;
    %calculate diameter at altitude mid point
    [midP,midT]=USAtmos_1976(mid);
    tempDia=fillDia*(P0*midT/midP/T0)^(1/3);
    %uodate count
    count=count+1;
    %print result in each iteration
    fprintf('iterate count is %d\nAltitude is %.1f km\natm pressure is %.2f kPa\natm temperature is %.2f K\nballoon diameter is %.2f m\n\n',count,mid,midP,midT,tempDia)
end
%% ____________________
%% COMMAND WINDOW OUTPUT
%PS08_balloon_burst_fu194(1.2,4.2)
%iterate count is 1
%Altitude is 21.5 km
%atm pressure is 4.32 kPa
%atm temperature is 218.15 K
%balloon diameter is 3.13 m
%
%iterate count is 2
%Altitude is 32.3 km
%atm pressure is 0.84 kPa
%atm temperature is 229.35 K
%balloon diameter is 5.50 m
%
%iterate count is 3
%Altitude is 26.9 km
%atm pressure is 1.88 kPa
%atm temperature is 223.53 K
%balloon diameter is 4.16 m
%
%iterate count is 4
%Altitude is 29.6 km
%atm pressure is 1.25 kPa
%atm temperature is 226.21 K
%balloon diameter is 4.79 m
% 
% iterate count is 5
% Altitude is 28.2 km
% atm pressure is 1.53 kPa
% atm temperature is 224.87 K
% balloon diameter is 4.47 m
% 
% iterate count is 6
% Altitude is 27.5 km
% atm pressure is 1.70 kPa
% atm temperature is 224.20 K
% balloon diameter is 4.31 m
% 
% iterate count is 7
% Altitude is 27.2 km
% atm pressure is 1.79 kPa
% atm temperature is 223.86 K
% balloon diameter is 4.24 m
% 
% iterate count is 8
% Altitude is 27.0 km
% atm pressure is 1.83 kPa
% atm temperature is 223.69 K
% balloon diameter is 4.20 m

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end
