function  PS08_HallPetch_fu194(metel,gsIn)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% import data about metel from csv file
% calculate regression line of each  metel
% print the predicted yield stress of given metel and given grain size
%
% Function Call
% PS08_HallPetch_fu194(metel,gsIn)
%
% Input Arguments
% String metel - element sign of metel
% double gsIn - grain size input
%
% Output Arguments
% none
%
% Assignment Information
%   Assignment:       	PS 08, Problem 1
%   Author:             Yuefan Fu, fu194@purdue.edu
%   Team ID:            001-05      
%  	Contributor: 		Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%metel='Cu';
%gsIn=10000;
%import data from csv file 
allData=importdata('Data_material_grainsz_yieldstress.csv');
numData=allData.data;
sampleSize=size(numData);
%initialize variables that will be updated in loops
count1=1;
grainSize=[];
yieldstress=[];
elementList=[];
%% ____________________
%% CALCULATIONS
while(count1<=sampleSize(2))
    sampleSize=size(numData);
    if(mod(count1,2)==1)
        %get grain size from number data
        grainSize=[grainSize,numData(:,count1)];
        %parse element sign from the text cell
        elementList=[elementList,strtok(allData.textdata(count1),':')];
    else
        %get yield stress from number data
        yieldstress=[yieldstress,numData(:,count1)];
    end
    count1=count1+1;
end
count2=1;
coefReg=[];
%calculate the regression line for each metel in database
while(count2<=sampleSize(2)/2)
    tempX=grainSize(:,count2);
    noNaNX=tempX(~isnan(tempX));
    tempY=yieldstress(:,count2);
    noNaNY=tempY(~isnan(tempY));
    [out1,out2,out3]=PS06_regressionUDF_fu194(noNaNX.^(-1/2),noNaNY);
    coefReg=[coefReg;[out1,out2,out3]];
    count2=count2+1;
end
%check if the metel given in the database
elementTag=strcmp(elementList,metel);
if(sum(elementTag)~=1)
    fprintf('WARNING: metel is not found in database, result for Fe will be shown\n');
    metel='Fe';
    elementTag=strcmp(elementList,metel);
end
metelIndex=find(strcmp(elementList,metel));
fprintf('regression line is yieldStress = %.2f grainSize + %.2f ,with coefficient of determination = %.2f\n',coefReg(metelIndex,:));
%calculate the predicted yield stress
result=coefReg(metelIndex,1)*gsIn^(-1/2)+coefReg(metelIndex,2);
fprintf('predicted yield streed for metel %s is %.3f\n',metel,result);
%check if the grain size is out of range
curGrainSize=(grainSize(:,elementTag));
if(gsIn<min(curGrainSize)||gsIn>max(curGrainSize))
    fprintf('WARNING: the grain size input is out of range of data %s\n',metel);
end
%% ____________________
%% COMMAND WINDOW OUTPUT
%PS08_HallPetch_fu194('Fe',100)
%regression line is yieldStress = 672.84 grainSize + 49.72 ,with coefficient of determination = 0.80
%predicted yield streed for metel Fe is 117.002

%PS08_HallPetch_fu194('Na',100)
%WARNING: metel is not found in database, result for Fe will be shown
%regression line is yieldStress = 672.84 grainSize + 49.72 ,with coefficient of determination = 0.80
%predicted yield streed for metel Fe is 117.002

%PS08_HallPetch_fu194('V',300000)
%regression line is yieldStress = 268.79 grainSize + 206.03 ,with coefficient of determination = 0.73
%predicted yield streed for metel V is 206.521
%WARNING: the grain size input is out of range of data V
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end

