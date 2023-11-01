% Define the functions
K1 = @(x) (20000 + 20.*x) ./ x;
K2 = @(x) (10000 + 40.*x) ./ x;
K3 = @(x) (100000 + 4.*x) ./ x;
K4 = @(x) (200000 + 2.*x) ./ x;

% Create a vector of x-values
x = linspace(0, 60000, 1000);

% Evaluate the functions over the range of x-values
y1 = K1(x);
y2 = K2(x);
y3 = K3(x);
y4 = K4(x);

% Plot the functions on the same graph
hold on;
semilogy(x, y1, 'r', 'LineWidth', 1.2);
semilogy(x, y2, 'g', 'LineWidth', 1.2);
semilogy(x, y3, 'b', 'LineWidth', 1.2);
semilogy(x, y4, 'm', 'LineWidth', 1.2);
hold off;

legend('K1(x)', 'K2(x)', 'K3(x)', 'K4(x)');
xlabel('x');
ylabel('y');
title('Plot of K1(x), K2(x), K3(x), and K4(x)');
axis([0, 60000, 1, 1e6]);
grid on;

xlabel('Products');
ylabel('Cost per Product (log)');

