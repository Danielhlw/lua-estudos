function operacoes (a, b)
    return a + b, a - b, a * b, a / b    
end

local soma, subtracao, multiplicacao, divisao = operacoes(10,2)

print("Soma:", soma)
print("Subtração:", subtracao)
print("Multiplicação:", multiplicacao)
print("Divisão:", divisao)