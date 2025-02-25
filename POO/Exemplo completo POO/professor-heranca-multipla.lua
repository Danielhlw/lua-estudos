require("construtor1-poo")


if not Professor then
    Professor = Pessoa:new()

    function Professor:new(nome, idade, materia)
        local obj = Pessoa.new(self, nome, idade)
        obj.materia = materia
        setmetatable(obj, self)
        self.__index = self
        return obj
    end

    function Professor:ensinar()
        print(self.nome .. " está ensinando" .. self.materia)
    end
end

return Professor