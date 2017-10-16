%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%  	...
%
% Assigment Information
%   Assignment:     PS 03, Problem 2
%   Author:         Yuefan Fu, loginfu194
%  	Contributor:    Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
allData=importdata('Data_westlafayette_sun_2018.csv',',',8);

%% ____________________
%% CALCULATIONS
%Spring 2018 from day 8 to day 118;
springIndex=8;
totalDarkSpring=0;
riseDuringSpring=0;
fullLightSpring=0;
flag=1;

while(springIndex<=118)
    if((allData.data(springIndex,4)==3||allData.data(springIndex,4)==5)&&allData.data(springIndex,2)>720)
        totalDarkSpring=totalDarkSpring+1;
        
        lastDark=springIndex;
    end
    
    if((allData.data(springIndex,4)==3||allData.data(springIndex,4)==5)&&allData.data(springIndex,2)<720&&allData.data(springIndex,2)>700)
       riseDuringSpring=riseDuringSpring+1;
       
    end
    
    if((allData.data(springIndex,4)==3||allData.data(springIndex,4)==5)&&allData.data(springIndex,2)<700)
        fullLightSpring=fullLightSpring+1;
        if(flag)
            firstLight=springIndex;
        end
        flag=0;
    end
    springIndex=springIndex+1;
end

fallIndex=232;
totalDarkFall=0;
riseDuringFall=0;
fullLightFall=0;
lastLight=NaN;
flag2=1;
while(fallIndex<=341)
    if((allData.data(fallIndex,4)==2||allData.data(fallIndex,4)==4||allData.data(fallIndex,4)==6)&&allData.data(fallIndex,2)>720)
        totalDarkFall=totalDarkFall+1;
        if(flag2)
            firstDark=fallIndex;
        end
        flag2=0;
    end
    
    if((allData.data(fallIndex,4)==2||allData.data(fallIndex,4)==4||allData.data(fallIndex,4)==6)&&allData.data(fallIndex,2)<720&&allData.data(fallIndex,2)>700)
       riseDuringFall=riseDuringFall+1;
       
    end
    
    if((allData.data(fallIndex,4)==2||allData.data(fallIndex,4)==4||allData.data(fallIndex,4)==6)&&allData.data(fallIndex,2)<700)
        fullLightFall=fullLightFall+1;
        lastLight=fallIndex;
    end
    fallIndex=fallIndex+1;
end



%% ____________________
%% FORMATTED TEXT DISPLAYS
fprintf('Spring 2018:\nYou will walk %d days in darkness, %d days in partial daylight,\nand %d days in full daylight. Your last walk in full darkness is\non DOY %d and your first walk in full daylight is on DOY %d.\n',totalDarkSpring,riseDuringSpring,fullLightSpring, lastDark,firstLight);


fprintf('\nFall 2018:\nYou will walk %d days in full daylight, %d days in partial daylight,\nand %d days in darkness. Your last walk in full daylight is\non DOY %d and your first walk in full darkness is on DOY %d.\n',totalDarkFall,riseDuringFall,fullLightFall, lastLight,firstDark);






%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

