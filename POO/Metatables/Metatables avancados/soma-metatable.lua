Vector = {}

function Vector:new(x, y)
    local obj = {x = x, y = y}
    setmetatable(obj, self)
    self.__index = self
    return obj
end

-- operador de soma "+" com o __add

function Vector.__add(v1, v2)
    return Vector:new(v1.x + v2.x, v1.y + v2.y)    
end

local a = Vector:new(3, 4)
local b = Vector:new(5,6)

local resultado = a + b

print("Resultado:", resultado.x, resultado.y)