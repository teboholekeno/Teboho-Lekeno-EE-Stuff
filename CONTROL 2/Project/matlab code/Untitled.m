%###############PARAMETERS##########################
m = 0.280;
l = 0.9;
R = 1.2;
Uc = 5;
B = 0.8;
b = 0.08;

s = tf('s');
H_motor = (B*l/R)/(m*s + (B^2*l^2/R + b));
linearSystemAnalyzer('step', H_motor, 0:0.1:5);

% Design Specifications
settling_time = 1.5;
rise_time = 0.6;
steadyS_error = 0.01;

% Velocity control plant First order Transfer function coeffcients
K = (B*l)/(B^2*l^2+b*R);
Tau = (m*R)/(B^2*l^2+b*R);

% NATURAL FREQUENCY AND DAMPING RATIO USING DESIGN REQUIREMENTS 
z = sqrt(log(overshoot)^2/(log(overshoot)^2+(pi)^2))
w_n = (1-0.4167*z+2.917*z^2)/(rise_time)

% EQUATIONS TO DETERMINE THE VALUE OF K_d AND K_p WHILE VARYING K_i USING TRIAL AND ERROR
K_i = 1;                                  %controlled variable
K_d = K_i/w_n^2 - tau/K;                  %dependent variable
K_p = 2*z*w_n*(tau + K_d*K)/K - 1/K;      %dependent variable

% THE OPTIMAL SOLUTION FOUND USING TRIAL AND ERROR METHOD
K_i = 5.72
K_d = 0
K_p = 1.92
