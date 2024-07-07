%construct an ASK modulated signal

clc;
close all;
clear all ;
fc=input('enter frequency of sine wave ');  %fc=100
fp=input('enter periodic binary pulse ');    %fp=10
amp=input('enter amplitude for both carrier and binary pulse '); %amp=5
t=0:0.001:1;
x=amp.*sin(2*pi*fc*t);
subplot(311);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Carrier/Santosh/063');
grid on;

y=amp/2.*square(2*pi*fp*t)+amp/2;
subplot(312);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Message/Santosh/063');
grid on;

a=x.*y;
subplot(313);
plot(t,a);
xlabel('Time');
ylabel('Amplitude');
title('ASK modulation/Santosh/063');
legend('ASK')
grid on;