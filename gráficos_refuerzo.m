%% Gráfico de probabilidad de jugada
close all
accion = 1:1:9;
estado = 1;
plot(accion,RM(estado,:),'o','Color','blue')
hold on
plot(accion,RM(estado,:),'LineWidth',2,'Color','blue')
xlabel('Acción','FontSize',20)
ylabel('Refuerzo','FontSize',20)
title(['Refuerzo para estado ',num2str(estado)],'FontSize',20)
grid on