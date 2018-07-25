% Dise�a el filtro
[b, a] = ellip(N, Rp, Rs, Wn, 'low');
% Despliega N y coeficientes
N
b
a
% Calcula la respuesta de frecuencia obtenida
f1 = 0; % frec. m�nima
f2 = 100; % frec. m�xima
f = [f1 : (f2-f1)/511 : f2];
H = freqz(b, a, f, Fs);
% Grafica Mag[H(f)]
subplot 221; semilogy(f, abs(H));
axis([f1 f2 1e-4 2]); grid
xlabel('f[Hz]'); title('Mag(H) de LPF IIR')
% Lee la se�al, la filtra y graba la se�al filtrada
load('ecg_rdo.txt')
y = filter(b, a, ecg_rdo);
save 'ecg_iir.txt' y -ascii