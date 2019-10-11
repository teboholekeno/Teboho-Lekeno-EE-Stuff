s = tf('s');

%CONSTANT VARIABLE DEFINITION
L = 28.64*10^(-3);
C = 884.2*10^(-9);
R_l = 60;
cutoff_frequency = 1000; 

%DEPENDENT VARIABLES DEFINITION 
w_o = 2*pi*cutoff_frequency;
zeta = 1/(2*R_l*C*w_o);

H_filter = w_o^2/(s^2+2*zeta*w_o*s+w_o^2);
%linearSystemAnalyzer('step', H_filter, 0:0.00004:0.004);

Kp = -0.9999;
Ki = 1;
Kd = 0.1;
PID_controller = Kp+Ki*(1/s)+Kd*s;
system = (H_filter*PID_controller)/(H_filter*PID_controller+1);
linearSystemAnalyzer('step', system, 0:0.000000004:0.000004);