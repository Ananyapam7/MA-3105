function bisect_anim 
clc

a = -5;    
b = 5;

tol = 10^-5;  
error = 1000;  
iteration = 0; 

lower = a;    
step = 0.01; 
upper = b;   
 
xplot = lower : step : upper;  

fprintf('a = %2.6f\nb = %2.6f\n\nat iteration%2i ', a, b, iteration)
fprintf('\n\n    a          b          mid        b-mid       f(mid)       iteration')

while error > tol   
    midpoint = (a + b)/2;  
    fmidpoint = f(midpoint);  
    
    if fmidpoint < 0             
        a = midpoint;           
    elseif fmidpoint > 0       
        b = midpoint;          
    end
      
    plot(xplot,f(xplot),'r',a,f(a),'bo',b,f(b),'go') 
    title('Bisection Method')                   
    xlabel('x')                                                                                              
    ylabel('f(x)')
    Labels = legend('f(x)','a','b');
    set(Labels,'location','north')
    
    error = abs(a-b);       
    iteration = iteration + 1;  
    fprintf('\n%2.6f %11.6f %11.6f %11.6f %11.6f %10i', a, b, midpoint, b-fmidpoint, fmidpoint, iteration)   
    pause(0.5)     
    
end

 fprintf('\n\nRoot is %2.6f after %2i iterations. \n\n', midpoint, iteration) 
end                                                           


function F = f(x)

F = x.^6 -x - 1; 

end