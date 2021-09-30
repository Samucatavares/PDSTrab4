clc; clear all; close all;

%% 2

t = 0:1:50;

x1 = sin(2*pi*0.05*t);
x2 = 4*sin(2*pi*0.05*t + pi/4);
soma = x1 + x2; 

figure (1)
subplot(3,1,1)
stem(t,x1);
title('Sinal x1'); xlabel('Tempo'); ylabel('Amplitude');

subplot(3,1,2)
stem(t,x2,'k');
title('Sinal x2'); xlabel('Tempo'); ylabel('Amplitude'); 

subplot(3,1,3)
stem(t,soma,'r');
title('x1 + x2'); xlabel('Tempo'); ylabel('Amplitude'); 

%% FFT
y1 = fft(x1,512);
y2 = fft(x2,512);
ysoma = fft(soma,512);
modulo_y1 = y1.*conj(y1)/512;
modulo_y2 = y2.*conj(y2)/512;
modulo_ysoma = ysoma.*conj(ysoma)/512;

f = 1000*((0:511)/512);

figure (2)
subplot(3,1,1)
stem(f,modulo_y1,'k');
title('Espectro y1'); xlabel('Frequência (Hz)'); ylabel('Amplitude'); axis([0 125 0 1.5]);

subplot(3,1,2)
stem(f,modulo_y2);
title('Espectro y2'); xlabel('Frequência (Hz)'); ylabel('Amplitude'); axis([0 125 0 27]);

subplot(3,1,3)
stem(f,modulo_ysoma,'r');
title('Espectro x1 + x2'); xlabel('Frequência (Hz)'); ylabel('Amplitude'); axis([0 125 0 33]);