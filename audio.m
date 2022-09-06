clc;
clear;
close all;

%1-wav
%load handel.mat
%filename = 'handel.wav';
%[y, Fs] = audioread( filename );
%sound(y, Fs); % play the signal

%2-ogg
%load('handel.mat');
%filename = 'handel.ogg';
%[y, Fs] = audioread( filename );
%sound(y, Fs); % play the signal

%[y,Fs] = midi2audio('if-youre-happy-and-you-know-it.mid');
[y,Fs] = midi2audio('if-youre-happy-and-you-know-it.mid');
% save to file:
% (normalize so as not clipped in writing to wav)
y = .95.*y./max(abs(y));
%sound(y, Fs); % play the signal
%pause(4);
audiowrite('out.wav',y', Fs);



