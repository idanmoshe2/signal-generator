clc;
clear;
close all;
fs = 44100;
p = 2;
n = 52;
                          %n- key index
t = 0:1/fs:4/p;           %p- Determines the duration of the note
freq = 440*2^((n-49)/12); %fundamental frequency

% method 1: sin
%wave = (sin(2*pi*freq*t));
wave = (sin(2*pi*5*t));
plot(t,wave);
% method 2: Triangular
wave2 = sawtooth(2*pi*5*t,0.5);
%plot(t,wave2);
% method 3: Square
dc = 50;
wave3 = square(2*pi*5*t,dc);
plot(t,wave3);
% method 4: sawtooth
wave4 = sawtooth(2*pi*5*t);
%plot(t,wave4);