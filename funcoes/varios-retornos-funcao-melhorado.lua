function operacoes(a, b)
    return a + b, a - b, a * b, a / b
end

local opcao

repeat
    print("\nMENU:")
    print("1 - Somar")
    print("2 - Subtrair")
    print("3 - Multiplicar")
    print("4 - Dividir")
    print("5 - Sair")

    print("Escolha uma opção:")
    opcao = io.read("*n") -- 

    if opcao >= 1 and opcao <= 4 then
        print("Digite o primeiro número:")
        local num1 = io.read("*n") 
        print("Digite o segundo número:")
        local num2 = io.read("*n") 

        local soma, subtracao, multiplicacao, divisao = operacoes(num1, num2)

        if opcao == 1 then
            print("Resultado da Soma:", soma)
        elseif opcao == 2 then
            print("Resultado da Subtração:", subtracao)
        elseif opcao == 3 then
            print("Resultado da Multiplicação:", multiplicacao)
        elseif opcao == 4 then
            if num2 ~= 0 then
                print("Resultado da Divisão:", divisao)
            else
                print("Erro: Não é possível dividir por zero!")
            end
        end
    elseif opcao ~= 5 then
        print("Opção inválida! Tente novamente.")
    end

until opcao == 5 

print("Programa encerrado.")
