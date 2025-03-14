local time = require 'time'
local botan = require 'botan'

local rng = botan.random_number_generator.system()

local function random_duracao()
    local buffer = byte_span.new(1)
    rng:randomize(buffer)
    return (buffer[1] % 10) + 1
end

local function tarefa(nome)
    local duracao = random_duracao()
    for i = 1, duracao do
        print("🔴 " .. nome .. " executando passo " .. i .. " (duração total: " .. duracao .. ")")
        this_fiber.yield()
    end
    print("✅ " .. nome .. " concluída! (Rodou por " .. duracao .. " passos)")
end

spawn(function() tarefa(">.< Tarefa 1") end)
spawn(function() tarefa("UwU Tarefa 2") end)
spawn(function() tarefa("OuO Tarefa 3") end)
spawn(function() tarefa("X3 Tarefa 4") end)

time.sleep(2)
print("🟢 Todas as tarefas foram finalizadas! 🟢")