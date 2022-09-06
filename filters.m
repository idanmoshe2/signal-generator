clc;
clear;
close all;
delta=[1 zeros(1,50)];
[b,a]=butter(20,[0.4 0.6],'stop');
h=filter(b,a,delta);
figure; freqz(h);
[h2,t]=impz(b,a);
%figure; plot(h, 'b*');
%hold on; stem(h2, 'r');
%hold off;
%b1 = fir1(20,0.5);
%1 - low pass
b1 = fir1(200,0.5,blackman(200 + 1));
b2 = fir1(200,0.5);%difult = hamimng , 
%can use blackman,hunn,.......
figure; freqz(b1);
figure; freqz(b2);
%2 - high pass
b3 = fir1(200,0.6,'high');
figure; freqz(b3);
%3 - band pass
b4 = fir1(200,[0.25 0.75],'bandpass');
figure; freqz(b4);
%4 - stop pass
b5 = fir1(200,[0.25 0.75],'stop');
figure; freqz(b5);
