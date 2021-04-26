function Numerical
zxc=0;n=0;zzz=0;size=0;n=0;a=zeros(1);b=zeros(1,1);B=zeros(0);
x=zeros(1,1);c=0;C=zeros(1);detrm=0;u=0;main
function main
disp(' Gaussian Elimination & Inverse Matrix Finder ')
reply = input('Press Enter to continue !', 's');
choose1
function choose1
clc
  disp(' If You Want to : --------->')
  disp(' 1) Solving equations using Gaussian elimination with pivoting press 1')
  disp(' 2) Finding the inverse of a matrices using determinant press 2')
  disp(' 3) Finding the inverse of a matrices using Gaussian elimination press 3')
  choose=input('-------->');
    if choose==1
        Gauss
  elseif choose==2
  inverse
  elseif choose==3
  inverseGauss
  else
      disp('Wrong input try again')
 reply = input('Press Enter to continue !', 's');
choose1
end
end     
      
end
function Gauss
    zzz=1;
    zxc=0;
clc
disp( ' You choose Gaussian elimination with pivoting ')
reply = input('Press Enter to continue !', 's');
clc
typeofmatrix
end
function inverse
zxc=1;
zzz=0;
clc
disp( ' You choose Inverse Matrix Finder using determinant ')
  reply = input('Press Enter to continue !', 's');
typeofmatrix
end
function inverseGauss
zxc=2;
zzz=0;
    clc
disp( ' You choose inverse by using Gaussian elimination ')
 reply = input('Press Enter to continue !', 's');
clc
typeofmatrix
end
    function [elema]=elementsA(B,i,j)
        while 1
        clc
    disp ('input the elments of the matrix A')
    disp (' ')
    disp(B)
    disp(' ')
 fprintf('the element a%g%g is =',i,j)
    elema=input(' ');
        if (~(isinf(elema))&~(isnan(elema)))
         if isempty(elema)
   disp('Wrong input try again')
 reply = input('Press Enter to retry !', 's');
 clc 
        else break;end        
        else
            disp('Wrong input try again')
 reply = input('Press Enter to retry !', 's');
 clc
 end; end; end
    function [elemb]=elementsB(B,i)
     while 1
        clc
    disp ('input the elments of the matrix B')
    disp(' ')
    disp(B)
    disp(' ')
    fprintf('the element b%g is =',i)
    elemb=input(' ');
        if (~(isinf(elemb))&~(isnan(elemb)))
         if isempty(elemb)
   disp('Wrong input try again')
 reply = input('Press Enter to retry !', 's');
 clc 
        else break;end        
        else
            disp('Wrong input try again')
 reply = input('Press Enter to retry !', 's');
 clc
 end; end;    
    end
    function sizeone
    n=input('input the size of matrix 1,2,3,4,...,n =');
    n=fix(n);
    if ~(n>0)
 disp('Wrong input try again')
 reply = input('Press Enter to continue !', 's');
 clc
sizeone
    elseif isempty(n)
         disp('Wrong input try again')
 reply = input('Press Enter to retry !', 's');
 clc
sizeone

 end ;end
    function typeofmatrix
 clc  
disp('If you want to')
disp('input the size and the elments press 1')
disp('input the size with randomly elements press 2')
disp('randomly size and elements press 3')
size=input('------->');
if size==1
    sizeone
      B = sym('a%d%d', [n n]);
    clc
    if zzz==0&&n==1
    clc
    a=input('\n\nInput the number = ');
    switch zxc case 2 ;nestedfx3; case 1 ;nestedfx2; end 
    else
a=zeros(n);
for i=1:n
    for j=1:n
        clc
   a(i,j)=elementsA(B,i,j);
   B(i,j)=a(i,j);
  end
 clc
end
disp(a)
 reply = input('Press Enter to continue !', 's');
clc
if zzz==1
b=zeros(n,1);
B = sym('b%d%d', [n 1]);
for i=1:n
    b(i)=elementsB(B,i);
    B(i)=b(i);
    clc
end
disp(b)
 reply = input('Press Enter to continue !', 's');
end
switch zxc
    case 0
    nestedfx1
    case 1
        nestedfx2
    case 2
        nestedfx3
end; end
elseif  size==2
       sizeone
        a=fix(90*rand(n)+90*randn(n));
        if zzz==1
            b=zeros(n,1);
        for e=1:n
           j=fix(40*rand +20*randn);
           b(e,1)=j;
        end
        else
            disp(a)
        end
         switch zxc
    case 0
    nestedfx1
    case 1
        nestedfx2
    case 2
        nestedfx3
      end      
elseif size==3
       n=fix(10*rand);
       while n==0
       n=fix(10*rand); 
       end
        a=zeros(n,n);
        b=zeros(n,1);
        a=fix(90*rand(n)+90*randn(n));
        for e=1:n
           j=fix(40*rand +20*randn);
           b(e,1)=j;
        end
         switch zxc
    case 0
    nestedfx1
    case 1
        nestedfx2
    case 2
        nestedfx3
end 
else
    disp('Wrong input try again')
 reply = input('Press Enter to continue !', 's');
typeofmatrix
end
    end
    function nestedfx1
        clc
    disp(a)
    disp(' ')
    disp(b)
    reply = input('Press Enter to continue !', 's');
 for j=0:n-2
clc
z=a(j+1,j+1);
x=j+1;
for i=j+2:n
    if abs(z)<abs(a(i,j+1))
    z=a(i,j+1);
    x=i;
    end
end
c=a(j+1,:);
a(j+1,:)=a(x,:);
a(x,:)=c;
q=b(j+1);
b(j+1)=b(x);
b(x)=q;
if x~=j+1
fprintf('switch Rows by column pivoting (column %g)\n\n\t',j+1) 
reply = input('Press Enter to continue !', 's');
clc
fprintf('By switch the R(%g) with the R(%g)\n',j+1,x)
disp(a)
disp(' ')
disp(b)
reply = input('Press Enter to continue !', 's');
else
    fprintf('There is no need to pivoting (column %g)\n\n\t',j+1)
     reply = input('Press Enter to continue !', 's');
end  
for i = 2+j : n
  clc
  if a(i,j+1)==0
  continue;
  else
  u=a(i,j+1)/a(j+1,j+1);
  w(j+1,:)=a(j+1,:).*-u;
  ww(j+1)=b(j+1).*-u;
  a(i,:)= w(j+1,:)+a(i,:);
  b(i)=b(i,:)+ww(j+1);
  fprintf('\nBy -----> (      R%g   × %s +   R%g     ) To Give R%g \n',j+1,rats(-u),i,i);
  disp(a)
  disp(' ')
  disp(b)
  reply = input('Press Enter to continue !', 's');
clc
  end
end
end

disp(a)
disp(' ')
disp(b)
reply = input('Press Enter to continue !', 's');
zr=1;
 if (a(n,n)==0)&&b(n)~=0
    disp('Matrix is singular!')
    disp('Also No solution here!') 
    zr=0;
 elseif a(n,n)==0&&b(n)==0
   disp('Matrix is singular!')
   disp('Also Infinate solution here!') 
    zr=0;
 else
     clc
     fprintf('\n\n Now ! It is the time for back substitution \n\n')
     reply = input('Press Enter to continue !', 's');
     clc
  x = zeros(n,1);
 x(n) = b(n)/a(n,n);
 clc
 fprintf('x(%g) = %g/%g = %g\n' ,n,b(n),a(n,n),x(n))
 reply = input('Press Enter to continue !', 's');
 for j=n-1:-1:1,
clc
fprintf('x(%g) = ( %g - %g )/%g\n',j,b(j),a(j,:)*x,a(j,j))
x(j) = ( b(j) - a(j,:)*x )/a(j,j);
fprintf('x(%g) = %g\n',j,x(j))
reply = input('Press Enter to continue !', 's');
 end

 end
 
 if zr~=0
     clc
disp(a)
disp(' ')
disp(b)
disp(' ')
disp(x)
disp(' ')
disp('For more accurate answer press 1')
disp('or press any thing else to quit')
in=input(' ');
if in==1
clc
disp('More accurate answer')
disp(' ')
B=sym(a);
disp(B)
disp(' ')
B=sym(b);
disp(B)
disp(' ')
B=sym(x);
disp(B)
end
fprintf('\n\n Thanks For Using My Programme .. That''s all Good luck \n\n')
 reply = input('Press Enter to quit !', 's');
  clc
end
    end
    function nestedfx2
        if n~=1
        clc
        B =sym(a);
        C = sym('a%d%d', [n n]);
        disp(B)
        disp(' ')
        disp(C)
fprintf('\n\nThe Determinant Of Matrix Is Given By The Following Equation\n= %s\n= %9.9g\n\n',char(det(C)),det(a))
detrm=det(a);
reply = input('Press Enter to continue !', 's');
        end
clc
if detrm~=0||(n==1&&a~=0)
    if n~=1
   for j=1:n
   for i=1:n
        cc=a; 
        cc(j,:)=[]; 
        cc(:,i)=[];
        b=det(cc);
        if (-1)^(j+i)==1
     u=+1;else u=-1;end
    dd(j,i)=u*b;
    C(j,i)=dd(j,i);
    disp(B)
    fprintf('\nBy Removing the Row(%g) and the column(%g)\n\n',j,i);
    disp(sym(cc))
    CC=sym('a%d%d', [n-1 n-1]);
 fprintf('\nthen finding the cofactor we will get a%g%g\nby the following equation\n=-1^(%g+%g)*(%s)\n=%G \n'...
    ,j,i,j,i,char(det(CC)),dd(j,i));
    reply = input('Press Enter to continue !', 's');
    clc
    disp(C)
    reply = input('Press Enter to continue !', 's');
    clc
end
end
clc
disp(C)
ee=dd;
ce=sym(C);
     reply = input('Press Enter for next step!', 's');
    clc
for i=1:n
    ee(:,i)=dd(i,:);
    ce(:,i)=C(i,:);
    fprintf('\nReplace Row(%g) with Colomn(%g)\n',i,i)
    disp(C)
    disp(' ')
    disp(ce)
    reply = input('Press Enter to continue !', 's');
    clc
end
    disp(ce)   
   fprintf('\nBy ÷ the last matrix by the determinate (%g) which we found at the begning\n\tWe will get the inverse !\n',detrm)
   reply = input('Press Enter to continue  !', 's');
    clc
    disp('A = ------> ')
    disp(B)
    disp('A^-1 = --------> ')
    disp(ce/detrm)
    fprintf('\n\n Thanks For Using My Programme .. That''s all Good luck \n\n')
 reply = input('Press Enter to quit !', 's');
    else
   fprintf('The inverse is %g^-1\n=%g',a,a^-1)
    fprintf('\n\n Thanks For Using My Programme .. That''s all Good luck \n\n')
 reply = input('Press Enter to quit !', 's');
 quit
 end
else
    disp('The Determinant is equal to zero that is mean -------> ')
    disp('the matrix is singular! ( there is no inverse )')
     fprintf('\n\n Thanks For Using My Programme .. That''s all Good luck \n\n')
 reply = input('Press Enter to quit !', 's');
end
    end
    function nestedfx3
        clc
detrm=det(a);
if detrm~=0
        b=eye(n);
disp(a)
fprintf('\n\nThe Matrix  × the iverse will give us ------->\n\n')
disp(b);disp(' ');reply = input('Press Enter to continue !', 's'); 
ee=a;clc;
if ee(1,1)==0
    for i=1:n
        if a(i,1)~=0
            fprintf('\n\n\t Switch R%g with R1\n\n',i)
            saver(1,:)=a(1,:);
            a(1,:)=a(i,:);
            a(i,:)=saver;
            saver(1,:)=b(1,:);
            b(1,:)=b(i,:);
            b(i,:)=saver;
            break;
        end
    end
disp(a);disp(' ');disp(b);disp(' ')
reply = input('Press Enter to continue !', 's');clc;end
for j=0:n-2
for i = 2+j : n
  clc
    u=a(i,j+1)/a(j+1,j+1);
    if isnan(u)||u==0
    continue;end;
  w(j+1,:)=a(j+1,:).*-u;
  ww(j+1,:)=b(j+1,:).*-u;
  a(i,:)=w(j+1,:)+a(i,:);
  b(i,:)=b(i,:)+ww(j+1,:);
 fprintf('\nBy -----> (      R%g   × %s +   R%g     )\n\t To Give R%g at'...
  ,j+1,rats(-u),i,i);fprintf(' the both matrices\n');
  disp(a)
  disp(' ')
  disp(b)
  reply = input('Press Enter to continue !', 's');
clc
end
end
if a(n,n)~=0
    zx=0;
for j=n-2:-1:0
for i = j+1 :-1: 1
  clc
    u=a(i,j+2)/a(j+2,j+2);
    if isnan(u)||u==0
   continue;end;
  w(j+2,:)=a(j+2,:).*-u;
  ww(j+2,:)=b(j+2,:).*-u;
  a(i,:)= w(j+2,:)+a(i,:);
  b(i,:)=b(i,:)+ww(j+2,:);
fprintf('\nBy -----> (      R%g   × %s +   R%g     )\n\t To Give R%g at'...
,j+2,rats(-u),i,i);fprintf(' the both matrices\n');
   disp(a); disp(' ');disp(b)
  reply = input('Press Enter to continue !', 's');
clc
end
end
else
    zx=1;
end;else zx=1; end
if zx==0
for i=1:n
    clc
    if a(i,i)~=1
        u=a(i,i);
        fprintf('\n\nBy ---> R%g ÷ %g \n\n',i,a(i,i));
        a(i,:)=a(i,:)./u;
        b(i,:)=b(i,:)./u;    
  disp(rats(a))
  disp(' ')
  disp(rats(b))
  reply = input('Press Enter to continue !', 's');
   end;end
clc
    disp('A^-1 = ------> ')
    disp(rats(b))
    disp('A = --------> ')
    disp(ee)
     fprintf('\n\n Thanks For Using My Programme .. That''s all Good luck \n\n')
 reply = input('Press Enter to quit !', 's');
    else 
    disp('the matrix is singular so no inverse here')
     fprintf('\n\n Thanks For Using My Programme .. That''s all Good luck \n\n')
 reply = input('Press Enter to quit !', 's');
 end
    end
end
