local http = require("socket.http")
local ltn12 = require("ltn12")
local json = require("dkjson")

local url = "https://httpbin.org/post" 

local dados = { nome = "Carlos", idade = 30 } 
local body = json.encode(dados) 

local resposta = {}
local resultado, status = http.request{
    url = url,
    method = "POST",
    headers = {
        ["Content-Type"] = "application/json", 
        ["Content-Length"] = tostring(#body) 
    },
    source = ltn12.source.string(body),
    sink = ltn12.sink.table(resposta) 
}

if resultado then
    print("Código de Status:", status)
    print("Resposta do servidor:\n", table.concat(resposta))
else
    print("Erro ao enviar os dados.")
end
