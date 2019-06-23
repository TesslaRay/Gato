function RM = entrenamiento(RM,experiencias)
    
    clc
    LR = 1/9;
    DF = 0.5;
    RM_anterior = 0;
    max_pasos = 100;
    
    fprintf('Ajustando pesos matriz refuerzos mixtos ...\n \n')    
    for h = 1:max_pasos
        for e = 1:length(experiencias)
            
            % Asignación desde la matriz de experiencias
            estado = stateToIndex(experiencias(e).E);
            accion = experiencias(e).A;
            refuerzo = experiencias(e).R;
            siguiente_estado = stateToIndex(experiencias(e).s_E);

            siguienteRefuerzo = max(RM(siguiente_estado,:));

            RM(estado,accion) = RM(estado,accion) + LR*(refuerzo + DF*siguienteRefuerzo - RM(estado,accion));                        
        end
        
        error = abs(RM_anterior - sum(RM));
        RM_anterior = sum(RM);
        
        if error < 1E-4
            break
        end
                
    end
    fprintf(' \n Cambios realizados: %d\n \n',h)
    fprintf(' \n Pesos ajustados ...\n \n')
  
end