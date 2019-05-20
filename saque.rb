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

        loop do
            if total >= ced
                total -= ced
                total_ced += 1
            else
                if total_ced > 0
                    puts " O total de #{total_ced}, cedulas de R$#{ced}"
                end
                if ced == 100
                    ced = 50
                elsif ced == 50
                    ced = 20
                elsif ced == 20
                    ced = 10
                elsif ced == 10
                    ced = 1
                end
                total_ced = 0 
                break if total == 0 
            end
        end 
    end
    break if opcao == 0     
end   




    