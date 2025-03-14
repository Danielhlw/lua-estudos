local time = require 'time'

spawn(function ()
    time.sleep(2)
    print("Essa fiber está rodando independente da fiber terminar!")
    
end):detach()

print("Essa mensagem é exibida antes da fiber terminar.")