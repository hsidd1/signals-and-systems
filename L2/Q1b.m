% a)
x = [1, 1, 1];
v = [1, 1, 1, 1];

% Convolution
y = conv(x, v);
conv_length = length(y);

set(groot, 'DefaultStemLineWidth', 3)
set(groot, 'defaultAxesFontSize', 18)

figure(1)
subplot(3,1,1);
stem(0:length(x)-1, x);
axis([-1 conv_length+1 0 max(x)+1]);
xlabel('vector index');
ylabel('x');

subplot(3,1,2);
stem(0:length(v)-1, v);  
axis([-1 conv_length+1 0 max(v)+2]);
xlabel('vector index');
ylabel('v');

subplot(3,1,3);
stem(0:length(y)-1, y);
axis([-1 conv_length+1 0 max(y)+2]);
xlabel('vector index');
ylabel('x[n] * v[n]');

exportgraphics(gcf,'images/Q1ba.png','Resolution',300)

% b)
x_b = [2,1];
v_b = [1,1,1,1];

% Convolution
y_b = conv(x_b, v_b);
conv_length_b = length(y_b);

set(groot, 'DefaultStemLineWidth', 3)
set(groot, 'defaultAxesFontSize', 18)

figure(2)
subplot(3,1,1);
stem(0:length(x_b)-1, x_b);
axis([-1 conv_length_b+1 0 max(x_b)+1]);
xlabel('vector index');
ylabel('x');

subplot(3,1,2);
stem(0:length(v_b)-1, v_b);
axis([-1 conv_length_b+1 0 max(v_b)+2]);
xlabel('vector index');
ylabel('v');

subplot(3,1,3);
stem(0:length(y_b)-1, y_b);
axis([-1 conv_length_b+1 0 max(y_b)+2]);
xlabel('vector index');
ylabel('x[n] * v[n]');

exportgraphics(gcf,'images/Q1bb.png','Resolution',300)

% c)
x_c = [2,1];
v_c = [0,1,2];

% Convolution
y_c = conv(x_c, v_c);
conv_length_c = length(y_c);

set(groot, 'DefaultStemLineWidth', 3)
set(groot, 'defaultAxesFontSize', 18)

figure(3)
subplot(3,1,1);
stem(0:length(x_c)-1, x_c);
axis([-1 conv_length_c+1 0 max(x_c)+1]);
xlabel('vector index');
ylabel('x');

subplot(3,1,2);
stem(0:length(v_c)-1, v_c);
axis([-1 conv_length_c+1 0 max(v_c)+2]);
xlabel('vector index');
ylabel('v');

subplot(3,1,3);
stem(0:length(y_c)-1, y_c);
axis([-1 conv_length_c+1 0 max(y_c)+2]);
xlabel('vector index');
ylabel('x[n] * v[n]');

exportgraphics(gcf,'images/Q1bc.png','Resolution',300)

