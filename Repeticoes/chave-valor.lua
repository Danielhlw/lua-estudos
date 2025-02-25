local aluno = {nome = "Ana", idade = 22, curso = "Matemática"}

for chave, valor in pairs(aluno) do
    print(chave .. ": " .. tostring(valor))
end
