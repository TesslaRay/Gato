% function RM = entrenamiento(Q,experiencias)
    
    LR = 1/9;
    DF = 0.6;
    RM_anterior = 0;
    max_pasos = 100;
        
    clc
    fprintf(' Ajustando pesos matriz refuerzos mixtos ...\n \n')    
    for h = 1:max_pasos
        for e = length(experiencias):-1:1
            
            % Asignación desde la matriz de experiencias
            experiencias(e).E;
            estado = stateToIndex(experiencias(e).E);
            accion = experiencias(e).A;
            refuerzo = experiencias(e).R;
            
            if experiencias(e).R == 1 | experiencias(e).R == -1 | experiencias(e).R == 0.4
                siguienteRefuerzo = 0;                
            else
                siguiente_estado = stateToIndex(experiencias(e).s_E);
                siguienteRefuerzo = max(RM(siguiente_estado,:));                
            end
                        
            
            RM(estado,accion) = RM(estado,accion) + LR*(refuerzo + DF*siguienteRefuerzo - RM(estado,accion));                       
        end
        
        error = abs(RM_anterior - sum(RM));
        RM_anterior = sum(RM);
        
        if error < 1E-4
            break
        end  
        
    end
    
%     for e = length(experiencias):-1:1
% %         fprintf(' \n Estado mejorado: %d\n \n',stateToIndex(experiencias(e).E));
%     end

%     fprintf(' \n Cambios realizados: %d\n \n',h)
    fprintf(' \n Pesos ajustados ...\n \n') 
  
% end