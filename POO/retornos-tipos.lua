Conta = {}

function Conta:new(saldo)
    local obj = {saldo = saldo}
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Conta:mostrar_saldo()
    print("Saldo: " .. self.saldo)
end

local minha_conta = Conta:new(1500)

minha_conta:mostrar_saldo()  -- correto! `self` é passado automaticamente

minha_conta.mostrar_saldo(minha_conta)  -- também correto, mas passando `self` manualmente

minha_conta.mostrar_saldo()  -- erro! `self` não é passado automaticamente
