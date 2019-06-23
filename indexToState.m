function M = indexToState(number)
%   Input: Indice i (1 - 19683)
%   Output: Matriz de estado para ese índice
%   Comentario: los índices estan corridos 1 valor, ie, i = 1 --> estado 0
    y = dec2base(number  - 1, 3);
    y = fliplr(y);
    while length(y) < 9
        y = strcat(y,'0');
    end
    
    for i = 1:3
        for j = 1:3
            M(j,i) = str2num(y(3*j + i - 3));
        end
    end
    
% end