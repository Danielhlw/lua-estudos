Pessoa_c = {}

function Pessoa_c:new(nome, idade)
    local obj = {nome = nome, idade = idade}
    setmetatable(obj, self) 
    self.__index = self
    return obj
end

function Pessoa_c:dizer_ola()
    print("Oi, eu sou " .. self.nome .. " e tenho " .. self.idade .. " anos!")
end

-- Criando Objetos
local p1 = Pessoa_c:new("Daniel", 21)
local p2 = Pessoa_c:new("Mariana", 29)

p1:dizer_ola()
p2:dizer_ola()
