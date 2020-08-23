x = 3*ones(3,2);
y = 4*ones(2,3);
z = x*y;
c = diag(z);
c(2) = 2*c(1);
c(3) = 2*c(2);
% a sly trick to remove the existing diagonal
% and add it back again :)
z = z - diag(diag(z)) + diag(c) 