w = [-5 : 0.01 : 5] * pi;
X = exp(1i*w) ./ (exp(1i*w) - 0.5);
plot(w/pi, abs(X)); grid
xlabel('w / Pi [rad/m]');
title('Magnitud de X(w)');