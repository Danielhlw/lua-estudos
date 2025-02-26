Pessoa_b = {} -- classe base

function Pessoa_b:new(nome, idade)
    local obj = {nome = nome, idade = idade} -- Novo objeto criado
    setmetatable(obj, self) -- metatable referenciando a classe
    self.__index = self -- permitindo acessar os métodos da classe
    return obj
end

function Pessoa_b:dizer_ola()
    print("Oi, eu sou " .. self.nome .. " e tenho " .. self.idade .. " anos!")
end

Aluno_b = Pessoa_b:new()

function Aluno_b:new(nome, idade, curso)
    local obj = Pessoa_b.new(self, nome, idade)
    obj.curso = curso
    setmetatable(obj, self)
    self.__init = self
    return obj
end

function Aluno_b:info()
    print(self.nome .. " está estudando " .. self.curso)
end

local aluno1 = Aluno_b:new("Joana", 21, "Sistemas da informação")

aluno1:dizer_ola()
aluno1:info()

local pessoa10 = Pessoa_b:new("Vaniel", 90)
pessoa10:dizer_ola()