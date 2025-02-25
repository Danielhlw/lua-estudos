local certo = "Lua"
local palavra_digitada

while certo ~= palavra_digitada do
    print ("Digite a palavra certa")
    palavra_digitada = io.read()

    if palavra_digitada ~= certo then
        print("Você digitou errado, tente novamente!")        
    end
end

print("Você acertou! A palavra certa é ".. certo)