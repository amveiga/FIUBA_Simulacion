% Funci�n para generar muestras de una variable aleatoria con distribuci�n
% triangular en [-a, a] usando el m�todo de aceptaci�n/rechazo
function [] = Gen_triangulo_rechazo(N, a)
% Par�metros
% N: N�mero de muestras
% a: Par�metro de la distribuci�n tri�ngulo

z = []; % Aqu� almacenaremos las muestras de las variables generadas
for n=1:N
    disp(['Generando muestra ', num2str(n)])
    %% Paso 1: Generamos muestras de la variable uniforme X1 en [-a,a] 
    x1 = 2*a*(rand()-0.5); % Generamos un vector de 1xN muestras

    %% Paso 2: Generamos muestras de la variable uniforme Y en [0,1/a]
    y = rand()/a; % Generamos un vector de 1xN muestras
    
    if y <= pdf_triang(x1,a)
        z = [z, x1]; % aceptamos x1 solo si y esta por debajo de f(x) 
    end  

end

disp(['Porcentaje de rechazo = ', num2str((N-length(z))/N)])

% Mostramos histograma del resultado
figure
histogram(z,100)
title('histograma de Z')

end

function f = pdf_triang(x, a)
    if (x < -a) || (x > a)
        f = 0;
    elseif (x >= -a) && (x < 0)
        f = (x/a + 1)/a;
    elseif (x >= 0) && (x < a)
        f = (1 - x/a)/a;
    end  
end

