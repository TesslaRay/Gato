function res = stateToIndex(M)
%   Input: Matriz de estado M 
%   Output: responde a un valor entre 1 y 19638 dependiendo del estado
    
    clc
    y = 0;
    res = 0;
    for j = 1:3
        for i = 1:3
            y = 3*j + i - 4;
            res = res + M(j,i)*3^y;
        end
    end
    res = res + 1;
end