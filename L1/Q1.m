f = SimpleFunctions(); % instantiation of object of discrete time functions

t = -10:10; % arbitrary time vector for plotting

% -----------------Defining given discrete time signals-------------------%

% (a) x[n] = u[n] −2u[n −1] + u[n −4]
a = f.unitstep(t) - 2.*f.unitstep(t-1) + f.unitstep(t-4);

% (b) x[n] = (n + 2)u[n + 2] −2u[n] −nu[n − 4]
b = (t+2).*f.unitstep(t+2) - 2.*f.unitstep(t) - t.*f.unitstep(t-4);

% (c) x[n] = δ[n + 1] −δ[n] + u[n + 1] −u[n −2]
c = f.delta(t+1) - f.delta(t) + f.unitstep(t+1) - f.unitstep(t-2);

% (d) x[n] = e0.8nu[n + 1] + u[n]
d = exp(0.8.*t).*f.unitstep(t+1) + f.unitstep(t);

% plotting figures one at a time using stem() from -10 to 10
figure(1);
stem(t, a, "LineWidth", 3); 
title( ...
    '(a) \quad $x[n] = u[n] - 2u[n - 1] + u[n - 4]$', ...
    'Interpreter','latex' ...
    ); % following pep8 in matlab
xlabel('t');
ylabel('x[n]');

figure(2);
stem(t, b, "LineWidth", 3);
title( ...
    '$$(b) \quad x[n] = (n + 2)u[n + 2] - 2u[n] - nu[n - 4]$$', ...
    'Interpreter', 'latex' ...
    );
xlabel('t');
ylabel('x[n]');

figure(3);
stem(t, c, "LineWidth", 3);
title( ...
    '$$(c) \quad x[n] = \delta[n + 1] - \delta[n] + u[n + 1] - u[n - 2]$$', ...
    'Interpreter', 'latex' ...
    );
xlabel('t');
ylabel('x[n]');

figure(4);
stem(t, d, "LineWidth", 3);
title( ...
    '$$(d) \quad x[n] = e^{0.8n}u[n + 1] + u[n]$$', ...
    'Interpreter', 'latex' ...
    );
xlabel('t');
ylabel('x[n]');
