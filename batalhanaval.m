function batalhanaval()
    tabuleiro = zeros(5, 5); % Cria um tabuleiro vazio
    
    % Coloque seus navios
    tabuleiro = posicionarNavio(tabuleiro, 2, 2);
    tabuleiro = posicionarNavio(tabuleiro, 3, 3);
    
    ganhou = false;
    tentativas = 0;
    
    while ~ganhou
        tentativas = tentativas + 1;
        
        disp('Tentativa:');
        disp(tentativas);
        
        exibirTabuleiro(tabuleiro);
        
        linha = input('Digite a linha (1-5): ');
        coluna = input('Digite a coluna (1-5): ');
        
        if tabuleiro(linha, coluna) == 1
            disp('Você acertou um navio!');
            tabuleiro(linha, coluna) = 2; % Marcar como um navio afundado
        else
            disp('Você errou.');
        end
        
        % Verificar se ganhou (todos os navios afundados)
        ganhou = all(tabuleiro(:) == 2);
    end
    
    disp('Parabéns! Você venceu o jogo de Batalha Naval.');
end

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

function tabuleiro = posicionarNavio(tabuleiro, linha, coluna)
    if linha > 0 && linha <= size(tabuleiro, 1) && coluna > 0 && coluna <= size(tabuleiro, 2)
        tabuleiro(linha, coluna) = 1; % Coloca um navio na posição especificada
    else
        disp('Posição inválida.');
    end
end

% Execute o jogo
batalhanaval();
