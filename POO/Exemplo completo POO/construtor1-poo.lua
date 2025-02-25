if not Pessoa then
    Pessoa = {}

    function Pessoa:new(nome, idade)
        local obj = {nome = nome, idade = idade}
        setmetatable(obj, self)
        self.__index = self
        return obj
    end

    function Pessoa:dizer_ola()
        print("Oi, eu sou " .. self.nome .. " e tenho " .. self.idade .. " anos!")
    end
end

return Pessoa