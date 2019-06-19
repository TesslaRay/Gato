function M = ingresar(M,x,y,c)
    if M(x,y) == 0
        M(x,y) = c;
    else if M(x,y) == 1 | M(x,y) == 2
        fprintf('\n Casilla ocupada \n ');
        end
    M
end