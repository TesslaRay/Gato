function y = ganar(M)
    %Filas
    y = 0;
    if M(1,1) == 1 & M(1,2) == 1 & M(1,3) == 1
        y = 1;
    end
    
    if M(2,1) == 1 & M(2,2) == 1 & M(2,3) == 1
        y = 1;
    end
    
    if M(3,1) == 1 & M(3,2) == 1 & M(3,3) == 1
        y = 1;
    end
    
    %Columnas
    if M(1,1) == 1 & M(2,1) == 1 & M(3,1) == 1
        y = 1;
    end
    
    if M(1,2) == 1 & M(2,2) == 1 & M(3,2) == 1
        y = 1;
    end
    
    if M(1,3) == 1 & M(2,3) == 1 & M(3,3) == 1
        y = 1;
    end
    
    %Diagonales
    if M(1,1) == 1 & M(2,2) == 1 & M(3,3) == 1
        y = 1;
    end
    
    if M(1,3) == 1 & M(2,2) == 1 & M(3,1) == 1
        y = 1;
    end
    
end