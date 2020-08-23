% program 2
% plot 1
x = 0 : 0.1 : 2*pi;
y1 = sin(x);
y2 = cos(x);
plot(x, y1, '-', x, y2, '+')

% plot 2
theta = 0: 0.2: 5*pi;
rho = theta.^2;
polar(theta, rho, '*')

% plot 3
x = -8: .5: 8; y = x;
[X,Y] = meshgrid(x,y);
R = sqrt(X.^2 + Y.^2) + eps; % add eps to prevent R=0
Z = sin(R)./R;
mesh(x, y, Z) % or mesh(X,Y,Z)