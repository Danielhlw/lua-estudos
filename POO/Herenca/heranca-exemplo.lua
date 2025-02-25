Pessoa = {} -- classe base

function Pessoa:new(nome, idade)
    local obj = {nome = nome, idade = idade} -- Novo objeto criado
    setmetatable(obj, self) -- metatable referenciando a classe
    self.__index = self -- permitindo acessar os métodos da classe
    return obj
end

function Pessoa:dizer_ola()
    print("Oi, eu sou " .. self.nome .. " e tenho " .. self.idade .. " anos!")
end

Aluno = Pessoa:new()

function Aluno:new(nome, idade, curso)
    local obj = Pessoa.new(self, nome, idade)
    obj.curso = curso
    setmetatable(obj, self)
    self.__init = self
    return obj
end

function Aluno:info()
    print(self.nome.. " está estudando " .. self.curso) 
end

local aluno1 = Aluno:new("Joana", 21, "Sistemas da informação")

aluno1:dizer_ola()
aluno1:info()
