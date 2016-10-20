clear all; %clean the cache
close all; %lose all the open matlab window
clc; %clean the command window

%EXERCICE 1

% In the following function you can remark a retard of one on the functionI
% introduce a retard of one . This retard is here to diferrentiate the 0
% and the 1 position as matlab array start at array(1). This shouldn t be a
% problem if you plot with another array of value going from zero to N (Function value as Y and the range 0:N as X)

%%1.1
figure
subplot(3,2,1)
stem(dirac(10)) %shifted plot
title('Dirac distribution with a defined retard ')
xlabel('time') % x-axis label
ylabel('intensity') % y-axis label

%%1.2

subplot(3,2,2)
stem(stepfunction(10))  %shifted plot
title('Step function distribution with a defined retard ')
xlabel('time') % x-axis label
ylabel('intensity') % y-axis label

%%1.3

subplot(3,2,3)
stem(rampfunction())  %shifted plot
title('Ramp function distribution with a defined retard and a defined slope ')
xlabel('time') % x-axis label
ylabel('intensity') % y-axis label

%%1.4

subplot(3,2,4)
stem(Powerfunction(3))  %shifted plot
title('Power function distribution with a defined retard and a defined slope ')
xlabel('time') % x-axis label
ylabel('intensity') % y-axis label


%%1.5

subplot(3,2,5)
stem(boxfunction(3)) %shifted plot
title('Box function distribution with a defined retard and a defined slope ')
xlabel('time') % x-axis label
ylabel('intensity') % y-axis label

%%1.6

figure
subplot(3,1,1);
stem(sinfs(10,2,100)) %shifted plot
title('Sin function distribution with a frequency of 10 Hertz and a sampling frequency of 100 Hertz.')
xlabel('time') % x-axis label
ylabel('intensity') % y-axis label


subplot(3,1,2)
stem(sinfs(10,2,1000)) %shifted plot
title('Sin function distribution with a frequency of 10 Hertz and a sampling frequency of 1000 Hertz.')
xlabel('time') % x-axis label
ylabel('intensity') % y-axis label


subplot(3,1,3)
stem(sinfs(10,2,30)) %shifted plot
title('Sin function distribution with a frequency of 10 Hertz and a sampling frequency of 30 Hertz.')
xlabel('time') % x-axis label
ylabel('intensity') % y-axis label


