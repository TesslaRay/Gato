% function s = entrenamiento(RM,experiencias)
    clc
    LR = 1/9;
    DF = 0.5;
    max_pasos = 50;
    fprintf(' \n Ajustando pesos matriz refuerzos mixtos ...\n \n')

    for h = 1:max_pasos
        for e = 1:length(experiencias)

            estado = stateToIndex(experiencias(e).E);
            accion = experiencias(e).A;
            refuerzo = experiencias(e).R;
            siguiente_estado = stateToIndex(experiencias(e).s_E);

            siguienteRefuerzo = max(RM(siguiente_estado,:));

            RM(estado,accion) = RM(estado,accion) + LR*[refuerzo + DF*siguienteRefuerzo - RM(estado,accion)];
            
        end
        
        
    end
    
%     for e = 1:length(experiencias)
%         estado = stateToIndex(experiencias(e).E);
%         accion = experiencias(e).A;
%         fprintf('Estado modificado %d: ', estado);
%         fprintf(' %.3f: \n', RM(estado,accion));
%     end

% end