clear all; close all; 
[sinal_A, Fs_A] = audioread('BOla_M.wav');
a = fft(sinal_A);
stem(abs(a))