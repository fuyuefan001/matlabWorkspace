Ambient_Atmospheric_Pressure = data(:,2);
Relative_Humidty = data(:,3);
Exhaust_Vacuum_Pressure = data(:,4);
Net_Hourly_Electrial_Output = data(:,5);


%% ____________________
%% CALCULATIONS
P1 = polyfit(Ambient_temperature,Net_Hourly_Electrial_Output,1); % Relationship between Ambient temperature and Net hourly electrical output
P2 = polyfit(Ambient_Atmospheric_Pressure,Net_Hourly_Electrial_Output,1); %  Relationship between Ambient Atmospheric and Net hourly electrical output
P3 = polyfit(Relative_Humidty,Net_Hourly_Electrial_Output,1); % Relationship between Relative Humidty and Net hourly electrical output
P4 = polyfit(Exhaust_Vacuum_Pressure,Net_Hourly_Electrial_Output,1); % Relationship between Exhaust Vacuum Pressure and Net hourly electrical outpu
Net_Hourly_Electrial_Output_Ambient_temperature_fit = polyval(P1,Net_Hourly_Electrial_Output);
Net_Hourly_Electrial_Output_Ambient_Atmospheric_Pressure_fit = polyval(P2,Net_Hourly_Electrial_Output);
Net_Hourly_Electrial_Output_Relative_Humidty_fit = polyval(P3,Net_Hourly_Electrial_Output);
Net_Hourly_Electrial_Output_Exhaust_Vacuum_Pressure_fit = polyval(P4,Net_Hourly_Electrial_Output);
fx_Ambient_temperature = P1(1).* Ambient_temperature + P1(2);
fx_Ambient_Atmospheric_Pressure = P2(1).* Ambient_Atmospheric_Pressure + P2(2);
fx_Relative_Humidty = P3(1).* Relative_Humidty + P3(2);
fx_Exhaust_Vacuum_Pressure = P4(1).* Exhaust_Vacuum_Pressure + P4(2);
e1 = Net_Hourly_Electrial_Output - fx_Ambient_temperature;
e2 = Net_Hourly_Electrial_Output - fx_Ambient_Atmospheric_Pressure;
e3 = Net_Hourly_Electrial_Output - fx_Relative_Humidty;
e4 = Net_Hourly_Electrial_Output - fx_Exhaust_Vacuum_Pressure;
Sqr_e1 = e1 .^2;
Sqr_e2 = e2 .^2;
Sqr_e3 = e3 .^2;
Sqr_e4 = e4 .^2;
SSE_Ambient_temperature = sum(Sqr_e1);
SSE_Ambient_Atmospheric_Pressure = sum(Sqr_e2);
SSE_Relative_Humidty = sum(Sqr_e3);
SSE_Exhaust_Vacuum_Pressure = sum(Sqr_e4);
Mean_Net_Hourly_Electrial_Output = mean(Net_Hourly_Electrial_Output);
Y_Net_Hourly_Electrial_Output = (Net_Hourly_Electrial_Output - Mean_Net_Hourly_Electrial_Output) .^2;
SST = sum(Y_Net_Hourly_Electrial_Output);
r_sqr_1 = 1 - SSE_Ambient_temperature/SST;
r_sqr_2 = 1 - SSE_Ambient_Atmospheric_Pressure/SST;
r_sqr_3 = 1 - SSE_Relative_Humidty/SST;
r_sqr_4 = 1 - SSE_Exhaust_Vacuum_Pressure/SST;
%% ____________________
%% TEXT DISPLAY
subplot(2,2,1)
plot(Ambient_temperature,Net_Hourly_Electrial_Output,'r.')
hold on
plot(Ambient_temperature,Net_Hourly_Electrial_Output_Ambient_temperature_fit,'k-')
xlabel('Ambient temperature')
ylabel('Net hourly electrical output')
legend('Raw data','Best fitline')
title('Ambient temperature vs Net hourly electrical output')
%axis([5 35 420 500]);
grid on 
subplot(2,2,2)
plot(Ambient_Atmospheric_Pressure,Net_Hourly_Electrial_Output)
hold on
plot(Ambient_Atmospheric_Pressure,Net_Hourly_Electrial_Output_Ambient_Atmospheric_Pressure_fit)
xlabel('Ambient Atmospheric Pressure')
ylabel('Net hourly electrical output')
legend('Raw data','Best fitline')
title('Ambient Atmospheric Pressure vs Net hourly electrical output')
%axis([994 1030 420 500])
grid on

%% ____________________
%% ANALYSIS

% -- Q1
% 

% -- Q2
% 

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
