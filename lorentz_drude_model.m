%% LORENTZ DRUDE MODE MODEL PERMITTIVITY
% DEVELOPED BY: IBRAHIM ISSAH
% SCHOOL: TAMPERE UNIVERSITY

%% INITIALIZE 
clc 
close all
clc 

%% FIGURE 
figure('color', 'w', 'Units', 'normalized'); 


%% DASHBORAD 
nm =    1e-9; % namometers; 
wp     = 4; % plasma frequency Nq^2/m*eps
lambda = 1; % wavelength 
c      = 1; % speed of light
w0     = 4; %2*pi*c/lambda; % angular frequency of the atom
dampf  = .3; % damping factor

% omega of the incident light; 
omega = linspace(0,10, 300);  

eps = 1+( wp.^2./((w0.^2 - omega.^2) + 1i*dampf.*omega)); 


%% PLOTTING SECTION

hold on; 
plot(omega, real(eps'), '--', 'Linewidth', 2.5);
plot(omega, imag(eps'), 'Linewidth', 2.5);
xlabel('frequency (THZ)', 'Fontsize', 14);
ylabel('\epsilon', 'Fontsize', 14); 
title('Lorentz-Drude model', 'Fontsize', 14);
axis tight
legend('real \epsilon', 'imag \epsilon');





