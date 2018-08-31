% Funci�n para generar muestras de una variable aleatoria con distribuci�n
% triangular en [-a, a] usando el m�todo de superposicion
function [] = Gen_triangulo_superposicion(N, a)
% Par�metros
% N: N�mero de muestras
% a: Par�metro de la distribuci�n tri�ngulo

x1 = a*(rand(1,N)-0.5); % uniforme en [-a/2, +a/2]
x2 = a*(rand(1,N)-0.5); % uniforme en [-a/2, +a/2]

% Mostramos histograma de x1
figure
histogram(x1,100)
title('histograma de X_1')

% Mostramos histograma de x1
figure
histogram(x2,100)
title('histograma de X_2')

x = x1 + x2; % suma de uniformes independientes

% Mostramos histograma del resultado
figure
histogram(x,100)
title('histograma de X')

end

