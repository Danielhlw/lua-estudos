require("construtor1-poo") -- importa a classe base Pessoa, que já está global

if not Aluno then -- evita redefinição
    Aluno = Pessoa:new() -- herda da classe base Pessoa

    function Aluno:new(nome, idade, curso)
        local obj = Pessoa.new(self, nome, idade)
        obj.curso = curso -- novo atributo da subclasse Aluno
        setmetatable(obj, self) -- metatable refeenciando a subclasse
        self.__index = self -- permitir acessar os métodos da subclasse Aluno
        return obj
        
    end

    function Aluno:info() -- criando o método para printar informações do aluno
        print(self.nome .. " está estudando " .. self.curso)
    end
    
end

return Aluno