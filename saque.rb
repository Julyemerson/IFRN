loop do

    puts " Escolha a operação que deseja realizar? "
    puts " 1 - Saque "
    puts " 0 - Sair "
    
    opcao = gets.chomp.to_i 

        if opcao == 1     
            puts " Digite um valor para Sacar no caixa eletronico do IFRN "
            valor = gets.chomp.to_i 
            total = valor 
            ced = 100
            total_ced = 0
        
        if (valor % 2 == 0 || valor % 5 == 0 || valor % 10 == 0 || valor % 20 == 0 || valor % 50 == 0 || valor % 100 == 0) 
            loop do
                if total >= ced
                    total -= ced
                    total_ced += 1
                else
                    if total_ced > 0
                        puts " O total de #{total_ced}, cedulas de R$ #{ced}"
                    end
                    if ced == 100
                        ced = 50
                    elsif ced == 50
                        ced = 20
                    elsif ced == 20
                        ced = 10
                    elsif ced == 10
                        ced = 5
                    elsif ced == 5
                        ced = 2
                    end
                    total_ced = 0 
                    break if total == 0 
                end
            end 
        else
            puts " O valor solicitado deve ser múltiplo de R$ 2, R$ 5, R$ 10, R$ 20, R$ 50 ou R$ 100 reais! "
        end    
    end
    break if opcao == 0     
end     