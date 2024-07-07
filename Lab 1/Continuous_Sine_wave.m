%construct a continuous sine wave having amplitude 5 units and frequency 4
%hz.plot the signal
clc;
close all;
clear all;
a=5;
f=4;
t=0:0.001:1;
x=a*sin(2*pi*f*t);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('continuous sine/santosh/063');
grid on;