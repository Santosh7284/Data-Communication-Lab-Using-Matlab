%construct a continuous cosine wave having amplitude 5 units and frequency 4
%hz.plot the signal
clc;
close all;
% clear all;
a=5;
f=4;
t=0:0.001:1;
x=a*cos(2*pi*f*t);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('continuous cosine/santosh/063');
grid on;