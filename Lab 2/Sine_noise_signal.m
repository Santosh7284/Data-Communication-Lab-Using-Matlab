%construct a sine wave of certain amplitude and frequency ,noise wave and
%noise added sine wave . then plot these signal in one single screen

clc;
close all; 
clear all; 
a = 5;
f = 3;
t = 0:0.001:1 ;
x = a*sin(2*pi*f*t);
subplot(3,1,1)
plot(t,x, 'RED');
xlabel('time');
ylabel('amplitude');
title('sine/Santosh/063');
grid on;

y = rand(1, length(t));
subplot(3,1,2);
plot(t,y, 'BLUE');
xlabel('time');
ylabel('amplitude');
title('Noise/Santosh/063');
grid on;

z = x+y;
subplot(3,1,3);
plot(t,z, 'BLACK');
xlabel('time');
ylabel('amplitude');
title('Noise+sine/Santosh/063');
grid on;





