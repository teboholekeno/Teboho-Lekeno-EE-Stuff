A = 4.024*10^13;
B = 68530.7;
C = 2.348*10^9;

%DYNAMIC SYSTEM TRANSFER FUNCTION
s = tf('s');
H_sensor = A/(s^3 + B*s^2 + C*s + A);
sensor_ss = ss(H_sensor)

%LINEAR SYSTEM ANALYSIS
linearSystemAnalyzer('step', H_sensor, 0:0.1:5);
bode (H_sensor);