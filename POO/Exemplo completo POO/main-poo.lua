require("aluno") -- Importa a subclasse Aluno, onde a classe base Pessoa já está global
require("professor-heranca-multipla")

-- criando o objeto da classe base Pessoa
local pessoa1 = Pessoa:new("Vanessa", 29)
pessoa1:dizer_ola()

-- criando o objeto da subclasse Aluno
local aluno1 = Aluno:new("João", 42, "Medicina")
aluno1:info()

-- Criando o objeto da subclasse Professor
local professor1 = Professor:new("Felipe", 75, "Banco de Dados")
professor1:ensinar()
