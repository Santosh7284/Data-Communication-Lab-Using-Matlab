%construct an PSK modulated signal

clc;
close all;
clear all ;
t=0:0.001:1;
fc=input('enter frequency of carrier sine wave ');  %fc=40
fm=input('enter message frequency ');    %fm=10
amp=input('enter amplitude for both carrier and message '); %amp=5
x=amp.*sin(2*pi*fc*t);
subplot(311);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Carrier/Santosh/063');
grid on;

y=square(2*pi*fm*t);
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
title('PSK modulation/Santosh/063');
legend('PSK')
grid on;
