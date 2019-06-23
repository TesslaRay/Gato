function M = accion(M, a)
%   Input: Matriz de estado M y acción (entre 1 y 9)
%   Output: Matriz de estado luego de la acción
%   La acción 'realiza la jugada', ie agrega un 1 donde corresponde la
%   acción
    for i = 1:3
        for j = 1:3
            if 3*j + i - 3 == a
                M(j,i) = 1;
            end
        end
    end
end