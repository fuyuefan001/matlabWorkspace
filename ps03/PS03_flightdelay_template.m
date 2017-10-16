%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%  	... 
%
% Assigment Information
%   Assignment:     PS 03, Problem 1
%   Author:         Yuefan Fu, fu194@purdue.edu
%   Team ID:        005
%  	Contributor:    Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%import data
allData =importdata('Data_flight_times.csv');

%% ____________________
%% CALCULATIONS

onTime=allData.data(find(allData.data<=5));
numOnTime = size(onTime);
AOS = (find(allData.data>5&allData.data<=15));
numAOS=size(AOS);
delay=(find(allData.data>15));
numDelay=size(delay);
%find index range of each airport
indexBOS=find( strcmp(allData.textdata,'BOS'))-1;
indexMSP=find( strcmp(allData.textdata,'MSP'))-1;
indexMCO=find( strcmp(allData.textdata,'MCO'))-1;
indexLAS=find( strcmp(allData.textdata,'LAS'))-1;
%find average of delay time in each airports
avgBOS=mean(allData.data(indexBOS));
avgMSP=mean(allData.data(indexMSP));
avgMCO=mean(allData.data(indexMCO));
avgLAS=mean(allData.data(indexLAS));
%find max,min
maxDelay=max([avgBOS,avgMSP,avgMCO,avgLAS]);
minDelay=min([avgBOS,avgMSP,avgMCO,avgLAS]);
%find index fo EOS
indexEOS=find(allData.data>90|allData.data<-15);
%find number of EOS in each airport
numEOSBOS=size(indexEOS(find(indexEOS>=min(indexBOS)&indexEOS<=max(indexBOS))));
numEOSMSP=size(indexEOS(find(indexEOS>=min(indexMSP)&indexEOS<=max(indexMSP))));
numEOSMCO=size(indexEOS(find(indexEOS>=min(indexMCO)&indexEOS<=max(indexMCO))));
numEOSLAS=size(indexEOS(find(indexEOS>=min(indexLAS)&indexEOS<=max(indexLAS))));


%% ____________________
%% FORMATTED TEXT DISPLAYS
fprintf('Ans for questionA:\nThe total number of on-time is %d, acceptably off-schedule is %d, and delayed flights is %d\n\n',numOnTime(1,1),numAOS(1,1),numDelay(1,1));
fprintf('Ans for questionB:\nBOS airport has the largest average departure delay,which is %.2f and MSP has the smallest average departuredelay,which is %.2f\n\n',maxDelay,minDelay);
fprintf('Ans for questionC:\nThe number of excessively off-schedule departures for BOS is %d\nthe number of excessively off-schedule departures for MSP is %d\nthe number of excessively off-schedule departures for MCO is %d\nthe number of excessively off-schedule departures for LAS is %d\n',numEOSBOS(1),numEOSMSP(1),numEOSMCO(1),numEOSLAS(1));
%% ____________________
%% ANALYSIS

%% -- Q1
%The average annual delayed percentage for each airport was about 20%, while
%for our flight system, the annual delayed percentage was about 18%, meaning 
%that our flight system was more efficient than that of the USDT.

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%