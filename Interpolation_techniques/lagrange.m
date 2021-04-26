function A = lagrange(p)
X = [0,1,3];
Y = [1,0,-8];
L = [];

for i = 1:length(X)
    B = 1;
  for j = 1:length(X)
     if j~=i
     B = B.*((val-X(j))/(X(i)-X(j))); 
     end
  end
    L(i) = B; 
end
A = sum(L.*Y);
end