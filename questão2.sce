//Eliminação Gaussiana com pivotamento parcial
clc(), clear

//Entrada
A=[1 1 1 0 0 0;
  0 -1 0 1 -1 0;
  0 0 -1 0 0 1;
  0 0 0 0 1 -1;
  0 10 -10 0 -15 -5;
  5 -10 0 -20 0 0]
B1=[0 0 0 0 0 187]'
B2=[0 0 0 0 0 207]'
B3=[0 0 0 0 0 222]'

function x=gaussiana(A,B)
    n=size(A)(1)
    A0=A
    A=[A B]
    for i=1:(n-1) do
        p=i                  //pivotamento parcial
        for j=(i+1):n do
            if abs(A(j,i))>abs(A(p,i)) then
                p=j
            end
        end
        L=A(i,:)             //troca de linhas
        A(i,:)=A(p,:)
        A(p,:)=L             //fim do pivotamento
        
        if A(i,i)==0 then
            disp("A matriz é singular")
        else
            for j=(i+1):n do
                c=A(j,i)/A(i,i)
                A(j,:)=A(j,:)-c*A(i,:)
            end
        end
    end
    if A(n,n)==0 then
        disp("A matriz é singular")
    else
       x(n)=A(n,n+1)/A(n,n)
       for p=1:(n-1) do
           i=n-p
           s=0
           for k=(i+1):n do
               s=s+A(i,k)*x(k)
           end
           x(i)=(A(i,n+1)-s)/A(i,i)
       end
    end
endfunction

R1=gaussiana(A,B1)
R2=gaussiana(A,B2)
R3=gaussiana(A,B3)

disp(R1)
disp(R2)
disp(R3)
