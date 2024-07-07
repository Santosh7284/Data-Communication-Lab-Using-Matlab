%construct an FSK modulated signal

clc;
close all;
clear all ;
fc1=input('enter frequency of 1st sine wave ');  %fc1=50
fc2=input('enter frequency of 2nd sine wave ');   %fc2=100
fp=input('enter periodic binary pulse ');         %fp=10
amp=input('enter amplitude for both carrier and binary pulse '); %amp=5
t=0:0.001:1;
c1=amp/2.*sin(2*pi*fc1*t);
c2=amp/2.*sin(2*pi*fc2*t);
subplot(411);
plot(t,c1);
xlabel('Time');
ylabel('Amplitude');
title('Carrier1/Santosh/063');
grid on;

subplot(412);
plot(t,c2);
xlabel('Time');
ylabel('Amplitude');
title('Carrier2/Santosh/063');
grid on;

m=amp/2.*square(2*pi*fp*t)+amp/2;
subplot(413);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message/Santosh/063');
grid on;

for i=0:1000
    if m(i+1)==0
        a(i+1)=c2(i+1);
    else
        a(i+1)=c1(i+1);
    end
end
subplot(414);
plot(t,a);
xlabel('Time');
ylabel('Amplitude');
title('FSK signal/Santosh/063');
legend('FSK')
grid on;