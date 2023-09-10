function exibirTabuleiro(tabuleiro)
    disp('Tabuleiro:');
    for i = 1:size(tabuleiro, 1)
        for j = 1:size(tabuleiro, 2)
            if tabuleiro(i, j) == 0
                printf(' - ');
            elseif tabuleiro(i, j) == 1
                printf(' O ');
            elseif tabuleiro(i, j) == 2
                printf(' X ');
            end
            
            if j < size(tabuleiro, 2)
                printf('|');
            end
        end
        fprintf('\n');
        
        if i < size(tabuleiro, 1)
            disp('---+---+---+---+---');
        end
    end
end

