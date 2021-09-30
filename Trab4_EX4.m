clear; clc; close all;
% 4
 
f = 1000; 
Ts = 1/f;
t=0:1/f:1000;
n_samp = 5000;
tt = -2:Ts:(n_samp-1)*Ts;
larg = 0.5;
sinal = rectpuls(tt,larg);
subplot(2,1,1)
stem(tt,sinal); title('Pulso retangular');
xlabel('Tempo'); ylabel('Amplitude'); axis([-1 1 -0.05 1]);
  
%Reconstroi eixo do tempo de ambos sinais
numero_amostras_sinal_A = length(sinal);
eixo_n = (0:numero_amostras_sinal_A-1);  
eixo_tempo_A = eixo_n*(1/f) ;  %t=n*Ts onde Ts=1/Fs
     
espectro_sinal_X1 = fft(sinal);
espectro_sinal_X = fftshift(espectro_sinal_X1);
eixo_freq = eixo_n*(f/numero_amostras_sinal_A);
espectro_mag = abs(espectro_sinal_X);
subplot(2,1,2); plot(eixo_freq, espectro_mag); title('Espectro Pulso'); 
xlabel('Frequência (Hz)'); ylabel('Amplitude');
