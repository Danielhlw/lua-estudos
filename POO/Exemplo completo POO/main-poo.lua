require("aluno") -- importar a subclasse Aluno, onde a classe base Pessoa já está global

-- criando o objeto da subclasse Aluno
local aluno1 = Aluno:new("João", 42, "Medicina")

aluno1:dizer_ola()
aluno1:info()

-- criando o objeto da classe base Pessoa
local pessoa1 = Pessoa:new("Vanessa", 29)

pessoa1:dizer_ola()

