y = magic(4);
x = 4;


subplot(2, 2, 1,'position', [0.1, 0.1, 0.2, .7]);
hold on;

plot(y);
plot(x);

subplot(2, 2, 2, 'position', [0.5, 0.1, 0.1, 0.5])
plot(x);