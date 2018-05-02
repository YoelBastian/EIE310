h = 1 : 1000;
x = 1 : 500000;
tic;
[y] = conv(x, h);
s = toc;
N = 2* length(h) * length(x);
MFps = 1E-6 * N /s;
fprintf('millones ops. : %5.0f\n', 1E-6 * N)
millones ops. :  1000
fprintf('Tiempo [seg] : %2.2f\n', s)
Tiempo [seg] : 23.29
fprintf('Veloc. MFLOPS : %5.0f\n\n', MFps)
Veloc. MFLOPS :    43
