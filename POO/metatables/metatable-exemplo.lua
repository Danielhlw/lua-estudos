local minhaTabela = {} 
local metatable = {
    __tostring = function(t)
        return "Essa é uma tabela modificada"
    end
}

setmetatable(minhaTabela, metatable) 

print(minhaTabela) 
