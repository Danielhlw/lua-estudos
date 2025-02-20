function multiplicar(a, b)
    return a * b
end


function eh_par(numero)
    return numero % 2 == 0 
end


function maior_valor(a, b, c)
    if a >= b and a >= c then
        return a
    elseif b >= a and b >= c then
        return b
    else
        return c
    end
end


local opcao

repeat
    print("\nMENU:")
    print("1 - Multiplicar dois números")
    print("2 - Verificar se um número é par")
    print("3 - Encontrar o maior de três números")
    print("4 - Sair")

    print("Escolha uma opção:")
    opcao = io.read("*n") 

    if opcao == 1 then
        print("Digite o primeiro número:")
        local num1 = io.read("*n")
        print("Digite o segundo número:")
        local num2 = io.read("*n")
        print("O valor da multiplicação é:", multiplicar(num1, num2))

    elseif opcao == 2 then
        print("Digite um número:")
        local num = io.read("*n")
        if eh_par(num) then
            print(num .. " é um número par.")
        else
            print(num .. " é um número ímpar.")
        end

    elseif opcao == 3 then
        print("Digite o primeiro número:")
        local num1 = io.read("*n")
        print("Digite o segundo número:")
        local num2 = io.read("*n")
        print("Digite o terceiro número:")
        local num3 = io.read("*n")
        print("O maior número é:", maior_valor(num1, num2, num3))

    elseif opcao ~= 4 then
        print("Opção inválida! Tente novamente.")
    end

until opcao == 4 

print("Programa encerrado.")
