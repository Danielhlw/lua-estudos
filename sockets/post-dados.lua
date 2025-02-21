local http = require("socket.http")

local url = "https://httpbin.org/post"
local body = "nome=Lucas&idade=25"

local resposta, status = http.request(url, body)

if resposta then
    print("Código de Status: ", status)
    print("resposta da API:\n", resposta)
else
    print("Erro ao enviar os dados.")
    
end