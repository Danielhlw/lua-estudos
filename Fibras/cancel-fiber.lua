local time = require 'time'

local f = spawn(function ()
    while true do
        print("Executando fiber...")
        time.sleep(1)
    end
end)

time.sleep(3)
f:cancel()
print("Fiber cancelada!")