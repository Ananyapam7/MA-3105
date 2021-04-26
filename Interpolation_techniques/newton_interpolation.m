y = [];
x = 0:0.1:4;
for i = 1:41
    y(i) = newton(x(i));
end

plot(x,y,'o')
hold on
plot(x,1-x.^2,'b*')
title("Newton's interpolation method ")
legend('Actual function', 'Interpolated function')