%###############PARAMETERS##########################
m = 0.280;
l = 0.9;
R = 1.2;
Uc = 5;
B = 0.8;
b = 0.08;

s = tf('s');
H_motor = (B*l/R)/(m*s + (B^2*l^2/R + b));

%linearSystemAnalyzer('step', H_motor, 0:0.1:5);

%#############Design Specifications####################
overshoot = 0.05;
settling_time = 1.5;
rise_time = 0.6;
steadyS_error = 0.01;
%######################################################

K = (B*l)/(B^2*l^2+b*R);
Tau = (m*R)/(B^2*l^2+b*R);

z = sqrt(log(overshoot)^2/(log(overshoot)^2+(pi)^2))
w_n = (1-0.4167*z+2.917*z^2)/(rise_time)

K_i = 5.5
K_d = 20
K_p = 1
