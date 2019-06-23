function [M, error] = ingresar(M,a,c)
    for i = 1:3
        for j = 1:3
            if 3*j + i - 3 == a
                if M(j,i) == 1 | M(j,i) == 2
                    error = 1;
                else
                    error = 0;
                    M(j,i) = c;            
                end
            end
        end
    end    
end