local time = require 'time'

spawn(function()
    time.sleep(2)
    print("Essa mensagem foi executada dentro de uma fiber após 2 segundos!")
end)

print("O programa principal continua rodando enquanto a fiber aguarda!")
time.sleep(3)
print("Fim do programa!")
