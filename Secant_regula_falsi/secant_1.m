
function sec = secant(a,b,err)

f = @(x) x.^6-x-1;          %The table and the plots are constructed for this function
%%
format long
xs = linspace(1,2.1,200);
ys = f(xs);
hold on
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
plot(xs,ys,'-k','LineWidth',1.5)
xlabel('x')
ylabel('f(x)')
title("Secant Method of root finding")
legend({'f(x)'},'Location','northwest','Autoupdate','off')

%%||--Defining empty matrices to form desired table later--||%%
n = [];
x_n = [];
x_n_minus_x_n_1 = [];
alpha_minus_x_n_1 = [];





%%||--filling first few entries of the matrices--||%%
x_n(1) = a;
x_n(2) = b;

n(1) = 0;
n(2) = 1;

f_x_n(1) = f(x_n(1));
f_x_n(2) = f(x_n(2));

x_n_minus_x_n_1(1) = nan;
x_n_minus_x_n_1(2) = b - a;

i = 2;

%%||--main algoithm of secant method-- ||%%
while abs(x_n_minus_x_n_1(i))>=abs(err)
    pause(2)
    x_n(i+1) = x_n(i) - f(x_n(i))*((x_n(i)-x_n(i-1))/(f(x_n(i))-f(x_n(i-1))));
    n(i+1) = i;
    f_x_n(i+1) = f(x_n(i+1));
    x_n_minus_x_n_1(i+1) = x_n(i+1) - x_n(i);
    plot(xs,f_x_n(i)+(f_x_n(i)-f_x_n(i-1))/(x_n(i)-x_n(i-1))*(xs-x_n(i)))
    i = i+1;
    
end
n = n';
x_n = x_n';
x_n_minus_x_n_1 = x_n_minus_x_n_1';
f_x_n = f_x_n';
T = table(n,x_n,x_n_minus_x_n_1,f_x_n)



end
