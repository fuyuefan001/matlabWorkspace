function  PS08_balloon_burst_wu1101(launch_diameter, burst_diameter)
altitude = 0;
temp_diameter=launch_diameter;
[presI,tempI] = USAtmos_1976(0);
[curP,curT]= USAtmos_1976(altitude);
count=1;
while (temp_diameter-burst_diameter<0 )
    fprintf('iterate count = %d\n',count)
    fprintf('altitude = %.2f\n',altitude)
    fprintf('atmospheric temperature = %.2f\n',curT)
    fprintf('atmospheric pressure = %.2f\n',curP)
    fprintf('ballon diameter = %.2f\n\n',temp_diameter)
    [curP,curT]= USAtmos_1976(altitude);
    temp_diameter=launch_diameter * ((presI * curT)/(curP * tempI))^(1/3);
    altitude=altitude+0.5;
    count=count+1;
end 
   
end
