local time = require 'time'

local fiber = spawn(function()
    time.sleep(2)
    print("Fiber concluída!")
end)

fiber:join()
print("Continuando agora!")