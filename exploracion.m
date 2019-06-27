function a = exploracion(estado, RM)
%% Algoritmo de exploración
% experiencias = (estado, acción, refuerzo, siguiente estado)
    
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

