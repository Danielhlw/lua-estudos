-- 1

print("Qual é o seu nome?")
local nome = io.read()
print("Olá, " ..nome .. "!" .. "seja bem-vindo!")

-- 2

print("Qual é o primeiro número?")
local num1 = io.read("*n")
print("Qual é o segundo número?")
local num2 = io.read("*n")
print("A soma dos dois números é " ..(num1 + num2))

-- 3 

print("Qual é a sua idade?")
local idade = io.read("*n")
print("Em 10 anos, você terá " .. (idade + 10) .. " anos!")

-- 4 

print("Digite um número inteiro")
local number = io.read("*n")

if number % 2 == 0 then
    print("O numero " .. number .. " é par")
else
    print("O numero " .. number .. " é impar")
end

