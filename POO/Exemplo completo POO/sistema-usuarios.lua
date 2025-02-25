-- criando um exemplo de sistema de usuários

Usuario = {}

function Usuario:new(nome,idade)
    local obj = {nome = nome, idade = idade} -- criando o objeto
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Usuario:mostrar_info()
    print("Usuário: ".. self.nome .. ", idade: " .. self.idade)
end

local usuario1 = Usuario:new("Lucas", 54)
local usuario2 = Usuario:new("Daniel", 21)

usuario1:mostrar_info()
usuario2:mostrar_info()