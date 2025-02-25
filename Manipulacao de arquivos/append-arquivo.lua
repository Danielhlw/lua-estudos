local arquivo = io.open("dados.txt", "a")

if arquivo then
    arquivo:write("Teste de append no arquivo\n")
    arquivo:close()
    print("Novo conteúdo adicionado no arquivo.")
else
    print("Erro ao abrir o arquivo")
end