function M = accion(M, a)
%   Input: Matriz de estado M y acci�n (entre 1 y 9)
%   Output: Matriz de estado luego de la acci�n
%   La acci�n 'realiza la jugada', ie agrega un 1 donde corresponde la
%   acci�n
    for i = 1:3
        for j = 1:3
            if 3*j + i - 3 == a
                M(j,i) = 1;
            end
        end
    end
end