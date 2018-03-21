clear;
clc;
a=1 ; b=9 ; c=0 ; d=4 ; e=0 ; f=0 ; g=0 ; h=5;
vi=(h*a);
A=(d+e)/10;
dt=10E-3;
t(1)=0;
vf(1)=0;
for i = 2:41;
    t(i)=(i-1)*dt;
    vf(i)=(1-A)*vi + A * vf(i-1);
end
close; stem(t, vf);
xlabel('seg');grid