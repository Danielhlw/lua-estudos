local arquivo = io.open("dados.txt", "w")

if arquivo then
    print("Arquivo criado com sucesso!")
    arquivo:close()

else
    print("Erro ao criar arquivo.")
end