clear var acciones
aux_estado = [0 0 0; 0 0 0; 0 0 0];
acciones = [];
for i = 1:length(experiencias)
    if experiencias(i).E == aux_estado;
        aux_accion = experiencias(i).A;
        acciones = [acciones aux_accion];
    end
%     
%     if experiencias(i).R == 1
%         acciones = [acciones aux_accion];
%     end
   
end
figure(3)
histogram(acciones,'BinLimits',[0.5,9.5])
grid on