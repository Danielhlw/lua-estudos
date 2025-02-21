local http = require("socket.http")
local json = require("dkjson") 

local url = "https://api.agify.io/?name=carlos"
local resposta, status = http.request(url)

if resposta then
    local dados = json.decode(resposta)
    print("Status: ", status)
    print("Nome:", dados.name)
    print("Idade Estimada:", dados.age)
else
    print("Erro ao acessar API.", status)
end
