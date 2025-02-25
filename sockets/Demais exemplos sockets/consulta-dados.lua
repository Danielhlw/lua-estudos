local http = require("socket.http")
local json = require("dkjson")

print("Digite um nome para estimar a idade:")
local nome = io.read() 

local url = "https://api.agify.io/?name=" .. nome

local resposta, status = http.request(url)

if resposta then
    local dados = json.decode(resposta) 
    if dados.age then
        print("Nome:", dados.name)
        print("Idade Estimada:", dados.age)
    else
        print("Não foi possível estimar a idade para o nome:", nome)
    end
else
    print("Erro ao acessar a API. Código:", status)
end
