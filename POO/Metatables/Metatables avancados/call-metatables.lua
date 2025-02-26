Person = {}

function Person:new(nome)
    local obj = {nome = nome}
    setmetatable(obj, self)
    self.__index = self
    return obj
end

-- definindo que o objeto pode ser chamado como uma função
function Person:__call()
    print("Olá, meu nome é: ", self.nome) 
end

local p1 = Person:new("Geremias")

p1() -- chamando o objeto como uma função