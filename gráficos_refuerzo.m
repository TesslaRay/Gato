%% Gráfico de probabilidad de jugada
close all
accion = 1:1:9;
estado = 1;
plot(accion,RM(estado,:),'o','Color','blue')
hold on
plot(accion,RM(estado,:),'LineWidth',2,'Color','blue')
% axis([1 9 0.35 0.37])
xlabel('Acción')
ylabel('Refuerzo')
title(['Refuerzo para estado ',num2str(estado)])
grid on