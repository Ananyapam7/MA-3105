

function reg =  reg(a,b,err)
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
title("Regula Falsi method of root finding")
legend({'f(x)'},'Location','northwest','Autoupdate','off')

%%||--Defining empty matrices to form desited table later--||%%
n = [];
x_n = [];
x_n_minus_x_n_1 = [];
alpha_minus_x_n_1 = [];





%%||--filling first few entries of the matrices--||%%
x_n(1) = a;
x_n(2) = b;
x_n(3) = x_n(2) - f(x_n(2))*((x_n(2)-x_n(1))/(f(x_n(2))-f(x_n(1))));



n(1) = 0;
n(2) = 1;
n(3) = 2;

f_x_n(1) = f(x_n(1));
f_x_n(2) = f(x_n(2));
f_x_n(3) = f(x_n(3));
pause(2)
plot(xs,f_x_n(3)+(f_x_n(3)-f_x_n(3-1))/(x_n(3)-x_n(3-1))*(xs-x_n(3)))

x_n_minus_x_n_1(1) = nan;
x_n_minus_x_n_1(2) = b - a;


i = 3;


    y = 0;
    if sign(x_n(i))*sign(x_n(i-1))>0
        y = x_n(i-2);
    else
        y = x_n(i-1);
    end
    
     x_n_minus_x_n_1(3) = x_n(3) - y;
     
     
     
     
     
i = 3;


while abs(x_n_minus_x_n_1(i))>=abs(err)
    pause(2)
    y = 0;
    if sign(x_n(i))*sign(x_n(i-1))>0
        y = x_n(i-2);
    else
        y = x_n(i-1);
    end
     x_n(i+1) = x_n(i) - f(x_n(i))*((x_n(i)-y)/(f(x_n(i))-f(y)));
     x_n_minus_x_n_1(i+1) = x_n(i+1) - y;
     n(i+1) = i;
     f_x_n(i+1) = f(x_n(i+1));
     plot(xs,f_x_n(i)+(f_x_n(i)-f_x_n(i-1))/(x_n(i)-x_n(i-1))*(xs-x_n(i)))
     i = i+1;
end

n = n'; 
x_n  = x_n';
x_n_minus_x_n_1 = x_n_minus_x_n_1';
alpha_minus_x_n_1 = alpha_minus_x_n_1';
f_x_n = f_x_n'; 

t = table(n,x_n,x_n_minus_x_n_1,f_x_n)



  


















end
