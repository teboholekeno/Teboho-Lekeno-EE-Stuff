%INDEPENDENT VARIABLES
L = 12.7*10^(-3);                                % Length of the conecting tube (m)
c = 1471;                                         % speed of sound in liquid (m/s)
d = 1.2*10^(-3)                                   % tube diameter (m)
T =0.005;                                           % temperature (degrees)
V = 4.071504079*10^(-8);                          % Sensor Internal Volume (m^3)

%DEPENDENT VARIALES
A = pi*(d/2)^2;                                   % Cross section area of the tube
V_ref = V + (L*A)/2;                              % effective volume
f_o = (c/(2*pi))*sqrt(A/(L*V_ref))                 % natural frequency
viscocity = (247.39*(0.962452002)^T)*10^(-6);     % viscocity
density = ((-6.5*10^(-4))*T+0.8783)*1000;
zeta = ((2*viscocity)/(f_o*density*A))           % damping ratio
w_o = 2*pi*f_o;                                  % natural angular frequency

A = 4.024*10^13;
B = 68530.7;
C = 2.348*10^9;

%DYNAMIC SYSTEM TRANSFER FUNCTION
s = tf('s');
H_filter = A/(s^3 + B*s^2 + C*s + A);
H_sensor = (w_o^2)/(s^2 + 2*zeta*w_o*s+w_o^2);
H_cascade = H_sensor*H_filter;
sensor_ss = ss(H_cascade)

%LINEAR SYSTEM ANALYSIS
linearSystemAnalyzer('step', H_cascade, 0:0.1:5);
bode (H_cascade);

