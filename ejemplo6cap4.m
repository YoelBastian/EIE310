w = 0 : (pi/200) : pi;
X = exp(1i*w) + 2 + 3*exp(-1i*w) + 4*exp(-1i*2*w) + 5*exp(-1i*3*w);
subplot 331; plot(w/pi, abs(X)); grid 
xlabel('w / Pi [rad/m]'); title('Magnitud')
subplot 332; plot(w/pi, angle(X)/pi); grid 
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')