%% Gato
% Primer acercamiento
% Cada jugador debe ingresar una jugada

clc

% for juegos = 1:1000
    
    E= {};
    M = zeros(3,3);
    i = 1;
    j = 9;
    
    while 1
        % Jugador 1
        if mod(i,2) == 1        
            estado = M;
            fprintf('Jugador 1 \n')
%             a = input('ingresar jugada: ');        
% %             a = exploracion(stateToIndex(estado), RM);
            play = RM(stateToIndex(estado),:);
            [buff, a] = max(play);
            [M, error] = ingresar(M,a,1);
            if error == 1
                fprintf('JUGADA INVALIDA, intente nuevamente \n');
                i = i - 1;
            else
                j = j - 1;
                E(length(E) + 1).E = estado;
                E(length(E)).A = a;
            end

        % Jugador 2
        elseif mod(i,2) == 0
            estado = M;
            fprintf('Jugador 2 \n')
            a = input('ingresar jugada: ');
%             a = round(rand*8) + 1;
            [M, error] = ingresar(M,a,2);

            if error == 1
                fprintf('JUGADA INVALIDA, intente nuevamente \n');
                i = i - 1;
            else
                j = j - 1;
                E(length(E)).s_E = M;
                E(length(E)).R = 0;
            end

        end

        M
        if ganar(M) == 1
            fprintf('Ganador jugador 1 \n');
            R = 1;
            E(length(E)).R = 1;
            E(length(E)).s_E = M;
            break
        end

        if ganar(M) == 2
            R = -1;
            fprintf('Ganador jugador 2 \n');
            E(length(E)).R = -1;
            E(length(E)).s_E = M;
            break
        end

        i = i + 1;

        if j == 0
            fprintf('Empate \n');
            E(length(E)).R = 0.5;
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
    
% end





