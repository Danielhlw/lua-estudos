-- function saudar(nome, saudacao)
--     nome = nome or "Visitante"
--     saudacao = saudacao or "Bem-vindo(a)"

--     print(saudacao .. ", " .. nome .. "!")
-- end


-- saudar("Daniel", "Olá")
-- saudar("Maria")
-- saudar()


function saudar(nome, saudacao)
    if nome == "" or nome == nill then
        nome = "Visitante"
        
    end

    if saudacao == "" or saudacao == nill then
        saudacao = "Bem-vindo!"
    end

    print(saudacao.. " " .. nome.. "!")
end

print("Digite o seu nome")
local nome_usuario = io.read()

print("Digite uma saudação, ou aperte enter para selecionar a padrão")
local saudacao_usuario = io.read()

saudar(nome_usuario, saudacao_usuario)

saudar()