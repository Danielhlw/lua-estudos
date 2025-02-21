local http = require("socket.http")
local json = require("dkjson")

local url = "https://restcountries.com/v3.1/name/brazil"

local resposta, status = http.request(url)

if resposta then
    local dados = json.decode(resposta) 
    local pais = dados[1] 
    
    print("País:", pais.name.common)
    print("Capital:", pais.capital[1])
    print("Região:", pais.region)
    print("População:", pais.population)
else
    print("Erro ao acessar API. Código:", status)
end