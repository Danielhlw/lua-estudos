local opcao

repeat
    print("\nMENU:")
    print("1 - Criar ou substituir o arquivo")
    print("2 - Adicionar texto ao arquivo")
    print("3 - Ler o conteúdo do arquivo")
    print("4 - Sair")

    print("Escolha uma opção:")
    opcao = io.read("*n")
    io.read("*l")

    if opcao == 1 then
        -- Criar ou substituir arquivo
        local arquivo = io.open("mensagem.txt", "w") 
        if arquivo then
            print("Digite o texto para adicionar no arquivo:")
            local texto_digitado = io.read()
            arquivo:write(texto_digitado .. "\n")
            arquivo:close()
            print("Arquivo criado/substituído com sucesso!")
        else
            print("Erro ao abrir o arquivo.")
        end

    elseif opcao == 2 then
        -- Adicionar texto ao arquivo sem apagar o conteúdo anterior
        local arquivo = io.open("mensagem.txt", "a") 
        if arquivo then
            print("Digite o texto para adicionar no arquivo:")
            local texto_digitado = io.read()
            arquivo:write(texto_digitado .. "\n")
            arquivo:close()
            print("Texto adicionado com sucesso!")
        else
            print("Erro ao abrir o arquivo.")
        end

    elseif opcao == 3 then
        -- Ler o conteúdo do arquivo
        local arquivo = io.open("mensagem.txt", "r") 
        if arquivo then
            print("\nConteúdo do arquivo:\n")
            for linha in arquivo:lines() do
                print("Linha: " .. linha)
            end
            arquivo:close()
        else
            print("Erro ao abrir o arquivo.")
        end

    elseif opcao ~= 4 then
        print("Opção inválida! Tente novamente.")
    end

until opcao == 4 

print("Programa encerrado.")




-- Primeiro exemplo

-- local arquivo = io.open("mensagem.txt", "w")

-- if arquivo then
--     print("Digite o texto para adicionar no arquivo.")
--     local texto_digitado = io.read()
--     arquivo:write(texto_digitado.. "\n")
--     arquivo:close()
-- else
--     print("Erro ao abrir arquivo.")
-- end

-- Segundo exemplo

-- local arquivo = io.open("mensagem.txt", "a")

-- if arquivo then
--     print("Digite o texto para adicionar no arquivo.")
--     local texto_digitado = io.read()
--     arquivo:write(texto_digitado.."\n")
--     arquivo:close()
--     print("Arquivo salvo com sucesso!")
-- else
--     print("Erro ao abrir arquivo.")
-- end

-- Terceiro exemplo 

-- local arquivo = io.open("mensagem.txt", "r")

-- if arquivo then
--     print("Conteúdo do arquivo:\n")
--     for linha in arquivo:lines() do
--         print("Linha: " .. linha)
--     end
--     arquivo:close()
-- else
--     print("Erro ao abrir o arquivo.")
-- end