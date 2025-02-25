local arquivo = io.open("dados.txt", "r")

if arquivo then
    for linha in arquivo:lines() do
        print("Linha: ", linha)    
    end
    arquivo:close()
else
    print("Erro ao abrir arquivo")
end