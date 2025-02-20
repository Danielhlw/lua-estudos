local arquivo = io.open("dados.txt", "w")

if arquivo then
    arquivo:write("Testando a escrita em um arquivo!\n")
    arquivo:write("Teste com Lua!\n")
    arquivo:close()
    print("Dados gravados com sucesso!")
else
    print("Erro ao abrir o arquivo.")
end