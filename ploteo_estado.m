%% Gr�fico de probabilidad de jugadas
function RM = ploteo_estado(RM)
    accion = 1:1:9;
    estado = 1;
    plot(accion,RM(estado,:),'o','Color','black')
    hold on
    plot(accion,RM(estado,:),'LineWidth',2,'Color','black')
    xlabel('Acci�n','FontSize',20)
    ylabel('Refuerzo','FontSize',20)
    title(['Refuerzo para estado ',num2str(estado)],'FontSize',20)
    grid on
end




