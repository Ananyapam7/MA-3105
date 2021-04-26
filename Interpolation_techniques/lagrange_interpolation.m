y = [];
x = 0:0.1:4;
for i = 1:41
    y(i) = lagrange(x(i));
end

plot(x,y,'o')
hold on
plot(x,1-x.^2,'b')
title('Lagrange Interpolation')
legend('Actual function', 'Interpolated function')