if not ProfessorAluno then
    ProfessorAluno = {} -- tabela vazia para a sublcasse

    function ProfessorAluno:new(nome, idade, curso, materia)
        local obj = Aluno.new(self, nome, idade, curso) -- criando um objeto baseado na subclasse Aluno
        obj.materia = materia -- adicionando a matéria manualmente (herança da sublcasse Professor)

        -- configuramos a metatable para buscar métodos em ambas as classes
        setmetatable(obj, {__index = function(tabela, chave)
            return Aluno[chave] or Professor[chave] -- procura primeiro em Aluno, depois em Professor
        end})

        return obj
    end

function ProfessorAluno:info()
    print(self.nome .. " está estudando " .. self.curso .. " e ensinando " .. self.materia)
end

    
end

return ProfessorAluno