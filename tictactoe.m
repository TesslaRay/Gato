%% Gato

clc

fprintf(' \n Entrenando algoritmo...\n \n')
for juegos = 1:100
    
    E= {};
    M = zeros(3,3);
    i = 1;
    j = 9;          
    
    while 1
        % Jugador 1
        if mod(i,2) == 1        
            estado = M;        
            a = exploracion(stateToIndex(estado), RM);
            [M, error] = ingresar(M, a, 1);
            if error == 1
%                 disp('Jugada invalida 1')
                i = i - 1;
            else
                j = j - 1;
                E(length(E) + 1).E = estado;
                E(length(E)).A = a;
            end

        % Jugador 2        
        elseif mod(i,2) == 0
            estado = M;
            a = round(rand*8) + 1;
            [M, error] = ingresar(M,a,2);

            if error == 1
%                 disp('Jugada invalida 2')
                i = i - 1;
            else
                j = j - 1;
                E(length(E)).s_E = M;
                E(length(E)).R = 0;
            end

        end
        M;
        if ganar(M) == 1
            R = 1;
            E(length(E)).R = 1;
            E(length(E)).s_E = M;
            break
        end

        if ganar(M) == 2
            R = -1;
            E(length(E)).R = -1;
            E(length(E)).s_E = M;
            break
        end

        i = i + 1;

        if j == 0
            E(length(E)).R = 0.3;
            E(length(E)).s_E = M;
            break
        end

    end

    l = length(experiencias);
    if l == 1
        l = 0;
    end
    for i =1:length(E)
        experiencias(l + i) = E(i);
    end
    
end

fprintf(' \n Juegos terminados...\n \n')






