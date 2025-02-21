local http = require("socket.http")

local url = "http://example.com"
local resposta, status = http.request(url)

if resposta then
    print("Código de Status:", status)
    print("Resposta da página:\n", resposta)
else
    print("Erro ao acessar a URL.")
end
