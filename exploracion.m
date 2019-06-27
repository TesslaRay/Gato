function a = exploracion(estado, RM)
%% Algoritmo de exploraci�n
% experiencias = (estado, acci�n, refuerzo, siguiente estado)
    
    refuerzos = RM(estado,:)*10 + 11;
    refuerzoTotal = sum(refuerzos);
    distancia = rand*refuerzoTotal;
    for a = 1:9
        if distancia <= refuerzos(a)
            break
        else
            distancia = distancia - refuerzos(a);
        end
    end
    
end

