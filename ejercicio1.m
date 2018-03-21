
a=1 ; b=9 ; c=1 ; d=4 ; e=1 ; f=1 ; g=1 ; h=5;
t=0 : 0.3 : 30; v=exp(-((b+a)/(2*c*(d+e)))*t).* sin(t); 
subplot 121; plot(t,v); title('PLOT');
xlabel('Tiempo [seg]');ylabel('Volts');grid;
subplot 122;
stem (t,v);
title ('STEM');
xlabel ('Tiempo [seg]') ; ylabel('Volts');grid;