clc; clear all; close all;

%% 1
t = 0:0.001:0.6; % tempo em milisegundos
x = sin(2*pi*50*t)+sin(2*pi*120*t); % sinal sem ruído
r = 2*randn(size(t)); % ruído de média zero
y = x + r; % sinal ruidoso
plot(t(1:50),y(1:50))
title('Sinal Corrompido por Ruído de Média Zero')
xlabel('tempo (milisegundos)')
Y = fft(y,512); % espectro de freqüência
Pyy = Y.* conj(Y) / 512; % potência do espectro
f = 1000*(0:256)/512;
figure
plot(f,Pyy(1:257))
title('Potencia do Espectro de y')
xlabel('frequencia (Hz)')