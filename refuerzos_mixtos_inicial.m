%Matriz de refuerzos mixtos
% Acciones vs estados
% Acciones: 9
% Estados: 19683

%%
RM = zeros(19683,9);

for e = 1:19683
    Estado_index = e;
    for a = 1:9
        Estado = indexToState(Estado_index);
        [M, error] = ingresar(Estado, a, 1);
        if error == 0
            if ganar(M) == 1
                RM(Estado_index,a) = 1;
            end
        end
        
    end
end
save('RM.mat','RM')
