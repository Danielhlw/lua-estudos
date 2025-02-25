local arquivo = io.open("dados.txt", "r")

if arquivo then
    local conteudo = arquivo:read("*all")
    arquivo:close()
    print("Conteúdo do arquivo: ")
    print(conteudo)

    else
end