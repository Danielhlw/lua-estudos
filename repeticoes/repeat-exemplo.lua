local palavra_certa = "Lua"
local palavra_digitada
local opcao

repeat
    print("\nMENU: ")
    print("1 - Jogar: Adivinhe a palavra")
    print("3 - Sair")

    opcao = io.read("*n")

    if opcao == 1 then
        repeat
            print("Digite uma palavra até acertar")
            palavra_digitada = io.read()

            if palavra_digitada ~= palavra_certa then
                print("\nVocê digitou errado, continue tentando!")
            end
        until palavra_digitada == palavra_certa

        print("Você acertou! A palavra certa é ".. palavra_certa)

    elseif opcao ~= 3 then
        print("Opção inválida, digite 1 ou 3")

    end
until opcao == 3
