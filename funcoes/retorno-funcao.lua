-- funçaão que retorna um valor
function somar(a,b)
    print("Digite o primeiro número")
    local a = io.read("*n")
    print("Digite o primeiro número")
    local b = io.read("*n")
    return a + b
end

local resultado = somar(5,3)
print("Resultado da soma:", resultado)