function newton_raphson
    clc
    
    a = -10;    
    b = 15;
    
    f = @(x) x.^6 -x - 1;
    g = @(x) 6*x.^5 -1; 
    
    lower = a;    
    step = 0.01;    
    upper = b;   
    
    xplot = lower : step : upper;  
    
    tol = 10^-6;  
    error = 1000; 
    iteration = 0;
    initial_root = 10;
    
    fprintf('a = %2.6f\nb = %2.6f\n\nat iteration%2i ', a, b, iteration)
    fprintf('\n\n    a          b          initial_root        new_root       error       f(new_root)       iteration')

    while error > tol
    plot(xplot,f(xplot),'r') 
    hold on;
    tangent = @(x) (x-initial_root)*g(initial_root) + f(initial_root);
    plot(xplot,tangent(xplot),'b')
    hold off;
    
    title('Newton-Raphson Method');                   
    xlabel('x');                                                                                              
    ylabel('f(x)');
    grid on;
    Labels = legend('f(x)', 'Tangent');
    set(Labels,'location','north');
    
    new_root = initial_root - f(initial_root)/g(initial_root);       
    iteration = iteration + 1; 
    error = abs(new_root - initial_root);
    
    fprintf('\n%2.6f %11.6f %13.6f %17.6f %12.6f %17.6f %11.i', a, b, initial_root, new_root, error, f(new_root), iteration)   
    initial_root = new_root;
    pause(0.7)     
    end
    fprintf('\nRoot is %2.6f after %2i iterations. \n\n', new_root, iteration) 
end