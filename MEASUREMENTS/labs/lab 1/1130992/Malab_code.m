%%Measurements Lab 1
%%Kwena Mtshali 867040
%%Teboho Lekeno 1130992
%%-------------------------Part I ---------------------------------------

%GIVEN DATA FOR DIFFERENT OPERATING TEMPERATURES
x = [7.0 8.3 9.6 10.9 12.2 13.5 14.8 16.1 17.4 12.7 20.0];                             % weight (kg)
y1 = [14.225 16.458 18.606 20.670 22.649 24.544 26.354 28.080 29.721 31.278 32.750];   % calibration data (21 degrees celcius)
y2 = [15.675 18.168 20.576 22.900 25.139 27.294  29.364 31.350 33.251 35.068 36.800];  % after ambient change (40 degrees celcius)

temperatureA = 21;
temperatureB = 40;

%line of best fit for calibration data and for ambient change data
line_of_bestfit_caliberation = 1.425.*x + 4.8839;
line_of_bestfit_ambientTemp = 1.625.*x +4.9339;

% calculating Linearity caliberation measurements
maximumDeviation = max(line_of_bestfit_caliberation - y1);
%maximum non linearity as a percentage of full scale deflection
nonLinearity = (maximumDeviation/(max(y1)-min(y1)))*100 

zero_bias_caliberation = 4.8839 % zero bias at zero input
zero_bias_ambientTemp = 4.9339;
zero_bias_drift = (zero_bias_caliberation - zero_bias_ambientTemp)/(temperatureA -temperatureB)

sensitivity_caliberation = 1.425
sensitivity_ambientTemp = 1.625;
sensitivity_drift = (sensitivity_caliberation - sensitivity_ambientTemp)/(temperatureA -temperatureB)
figure
scatter (x,y1);
hold on
scatter (x,y2);


p = polyfit(x,y1,1);
f = polyval(p,x);
hold on
plot(x,f,'--r');


p = polyfit(x,y2,1);
f = polyval(p,x);
hold on
plot(x,f,'--b')
legend('caliberation','ambient change','line of best fit caliberation','line best fit ambient change');
title ('Measurement data captured')
xlabel('Mass  [kg]') ;
ylabel('Voltage [mV]') ;



%% -----------------Part II-----------------------------------------
tolerance = 0.05;
Rn = 1000:1000:10000;
R1 = 6000;
R2 = 8000;
R3 = 4000;
Vi = 9;
R1max = R1*(1+tolerance);
R2max = R2*(1+tolerance);
R3max = R3*(1+tolerance);
R1min = R1*(1-tolerance);
R2min = R2*(1-tolerance);
R3min = R3*(1-tolerance);

Vth_max = ((Vi*R3max)./(R3max+Rn)-Vi*(R2min/(R1max+R2min)));  
Vth_min = ((Vi*R3min)./(R3min+Rn)-Vi*(R2max/(R1min+R2max)));
Vth_nominal= ((Vi*R3)./(R3+Rn)-Vi*(R2/(R1+R2)));
error = Vth_max - Vth_min;
VnominalAtMax = ((Vi*R3)./(R3+1000)-Vi*(R2/(R1+R2)));
errorBand = (max(error))/(max(Vth_nominal) - min(Vth_nominal))*100

figure
plot(Rn,Vth_min,Rn,Vth_max,Rn,Vth_nominal);
title ('Output volage ')
legend('Min','Max','Nominal');
xlabel('Strength Gauge in [ohms]') ;
ylabel('Voltage [V]') ;
%%------------------------Part III ---------------------------------------

time_before_breakdown = [21.4,18.5,36.7,19.8,22.3,27.9,24.1,30.2,25,8.6];
time_to_repair = [0.4,0.7,2.0,0.1,0.6,3.5,0.5,0.2,1.3,0.8];
number_of_fails = 10;
number_of_repairs = 10;
number_of_failures_per_hour = number_of_fails/(sum(time_before_breakdown)*24);
MTBF = 1/number_of_failures_per_hour;
MTTR =(sum(time_to_repair))*24/number_of_repairs;
availability = MTBF/(MTBF+MTTR);