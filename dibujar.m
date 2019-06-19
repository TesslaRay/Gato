function y = dibujar(M)
    clc
    fprintf('Estado actual \n\n');
    fprintf(' %i | %i | %i \n',M(1,1), M(1,2), M(1,3));
    fprintf(' ---------\n');
    fprintf(' %i | %i | %i \n',M(2,1), M(2,2), M(2,3));
    fprintf(' ---------\n');
    fprintf(' %i | %i | %i \n\n',M(3,1), M(3,2), M(3,3));
end