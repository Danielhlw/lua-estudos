ContaBancaria = {} -- criando a classe ContaBancaria

function ContaBancaria:new(salario)
    local obj = {salario = salario} -- criando novo objeto (tabela) para armazenar o salario/saldo inicial

    setmetatable(obj, self) -- definindo a metatable do objeto como a própria classe ContaBancaria
    self.__index = self -- faz com que o objeto busque métodos dentro da própria classe ContaBancaria

    return obj -- retorna o objeto criado
end

-- definindo um operador personalizado para comparação de igualdade == 
function ContaBancaria.__eq(c1, c2)
    return c1.saldo == c2.saldo -- retorna true se os saldos forem iguais
end

-- criando duas contas bancárias com o mesmo saldo e uma com saldo diferente
local conta1 = ContaBancaria:new(1000)
local conta2 = ContaBancaria:new(1000)
local conta3 = ContaBancaria:new(3500)

-- testando a comparação de igualdade usando o operador de igualdade ==

print(conta1 == conta2) -- precisa retornar true
print(conta1 == conta3) -- precisa retornar false