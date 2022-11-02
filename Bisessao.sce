//Questão 1
clear, clc()

a=1                           //Extremidade à esquerda
b=4                           //Extremidade à direita
tol=10^-6                     //Margem de erro

//Parâmetros
q=10^5

function y=f(x)               //Função em questão
    y=x+3.774*((x)^(1/2))-10
endfunction

function s=bissecao(f,a,b)   //Definindo função para armazenar a rotina
   N=1000                        //Limite para a rotina ser executada
   i=1                           //Contador
   while i<=N do                            //Calculando o ponto médio
    c=(a+b)/2
    if f(c)==0 | abs(b-a)/2<tol then break end //Criterio de parada
    if f(a)*f(c)<0 then
        b=c
    else
        a=c
    end
    i=i+1
end
s=c
endfunction





