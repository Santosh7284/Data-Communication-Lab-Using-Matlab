% Draw message signal, carrier signal and phase amplitue modulation

clc;
close all;
clear all;
a=5;
fc=100;
fm=10;
fs=100*fc;
t=0:1/fs:4/fm;
x1=a*sin(2*pi*fm*t);
x2=0.5*square(2*pi*fc*t)+0.5;
y=x1.*x2;
subplot(311);
plot(t,x1,'black');
xlabel('Time');
ylabel('Amplitude');
title('Sine/Santosh/063');
grid on;

subplot(312);
plot(t,x2,'black');
xlabel('Time');
ylabel('Amplitude');
title('Square/Santosh/063');
grid on;

subplot(313);
plot(t,y,'black');
xlabel('Time');
ylabel('Amplitude');
title('PAM/Santosh/063');
grid on;
