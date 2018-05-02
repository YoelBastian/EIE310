fx = 0.05;
fs = 0.05;
for pxg = -180 :30 :180,
    px = (pi/180) * pxg;
    n = [0 : 1 : 19];
    x = cos(2*pi * fx * n - px);
    c = cos(2*pi * fs * n); 
s = sin(2*pi * fs * n); 
PrCos = x .* c; 
PrSen = x .* s; 
SPC = sum(PrCos); 
SPS = sum(PrSen); 
pcxg = (180/pi) * atan2(SPS, SPC); 
fprintf('pxg: %3.0f SPC = %2.2f SPS = %2.2f pcxg = %3.1f \n', pxg, SPC, SPS, pcxg)
end
