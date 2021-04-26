function V = newton(p) 
X = [0,1,3];
Y = [1,0,-8];
n = 3;
b = 0;
num = 3;
j = 3;
k = 1;
while j>=1
    for i = 1:j-1
        Y(num+i) =(Y(b+i+1) - Y(b+i))/(X(k+i)-X(i));
    end
    num = num+j-1;
    b = b + j ;
    j = j-1;
    k = k+1;
end

P = 1+(p-X(1))*(Y(n+1));

M = 2*n-1;
for i = 2:n-1
    L = 1;
    for j = 1:i
        L = (p-X(j)).*L;
    end
    P = P + Y(2*n)*L;
    M = M + n -i;
end

V = P;

end