% Script para generar muestras de una variable aleatoria exponencial a
% partir de una distribucion uniforme en [0,1] utilizando el m�todo de la
% transformaci�n inversa

N = 10000; % N�mero de muestras
lambda =1; % Par�metro de la distribuci�n exponencial

%% Paso 1: Generamos muestras de la variable uniforme U
u = rand(1,N); % Generamos un vector de 1xN muestras

% Mostramos histograma de la distribuci�n uniforme
figure
histogram(u,100)
title('histograma de U')


%% Paso 2: Aplicar la transformacion inversa
x = -log(1-u)/lambda; % Transformaci�n inversa

% Mostramos histograma del resultado
figure
histogram(x,100)
title('histograma de X')