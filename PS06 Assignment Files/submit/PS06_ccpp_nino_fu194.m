function PS06_ccpp_nino_fu194
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%perform linear regression to determine how each of the four conditions affects the plant¡¯s net electrical power output
%
% Function Call
% PS06_ccpp_nino_fu194
%
% Input Arguments
% none
%
% Output Arguments
% none
%
% Assignment Information
%   Assignment:       	PS 06, Problem 1
%   Author:             Yuefan Fu, fu194@purdue.edu
%   Team ID:            001-05      
%  	Contributor: 		Name, login@purdue [repeat for each]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%import all data from csv file for future use
allData=importdata('Data_CCPP_measurements.csv');
temperatureRaw=allData.data(:,1);
atmPressureRaw=allData.data(:,2);
humidityRaw=allData.data(:,3);
vacPressureRaw=allData.data(:,4);
powerRaw=allData.data(:,5);
%% ____________________
%% CALCULATIONS
%calculate regression line for each model
temperatureFit=polyfit(temperatureRaw,powerRaw,1);
atmPressureFit=polyfit(atmPressureRaw,powerRaw,1);
humidityFit=polyfit(humidityRaw,powerRaw,1);
vacPressureFit=polyfit(vacPressureRaw,powerRaw,1);
%calculate R^2
%temperature
tempSST=sum((powerRaw-mean(powerRaw)).^2);
tempSSE=sum((powerRaw-temperatureFit(1)*temperatureRaw-temperatureFit(2)).^2);
r2Temp=1-tempSSE/tempSST;
%atm Pressure
atmSST=sum((powerRaw-mean(powerRaw)).^2);
atmSSE=sum((powerRaw-atmPressureFit(1)*atmPressureRaw-atmPressureFit(2)).^2);
r2Atm=1-atmSSE/atmSST;
%humidity
humSST=sum((powerRaw-mean(powerRaw)).^2);
humSSE=sum((powerRaw-humidityFit(1)*humidityRaw-humidityFit(2)).^2);
r2hum=1-humSSE/humSST;
%vacPressure
vacSST=sum((powerRaw-mean(powerRaw)).^2);
vacSSE=sum((powerRaw-vacPressureFit(1)*vacPressureRaw-vacPressureFit(2)).^2);
r2vac=1-vacSSE/vacSST;
%% ____________________


%% ____________________
%% TEXT DISPLAY
fprintf('The equation for temperature with output is power = %.2f temperature + %.2f.\n',temperatureFit);
fprintf('The equation for Atmospheric Pressure with output is power = %.2f pressure %.2f.\n',atmPressureFit);
fprintf('The equation for Relative Humidty with output is power = %.2f humidity + %.2f.\n',humidityFit);
fprintf('The equation for Exhaust Vacuum Pressure with output is power = %.2f vacPressure + %.2f.\n',vacPressureFit);
fprintf('\ncoefficient of determination of temperature with output is %.4f\n',r2Temp);
fprintf('coefficient of determination of Atmospheric Pressur with output is %.4f\n',r2Atm);
fprintf('coefficient of determination of Relative Humidty with output is %.4f\n',r2hum);
fprintf('coefficient of determination of Exhaust Vacuum Pressure with output is %.4f\n',r2vac);


end
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

