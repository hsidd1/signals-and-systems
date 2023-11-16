f = 100;
% phi = 0;  + phi

fs = 8000;
Ts = 1/fs;

tfinalplot = 10e-3;

nplot = 0:Ts:tfinalplot;

xnT = sin(2*pi*f*nplot);
 
stem(nplot, xnT);

exportgraphics(gcf, 'Q1.jpg');
