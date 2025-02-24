local pessoa = {
    nome = "Daniel",
    idade = 21
}

function pessoa:dizer_ola()
    print("Olá, meu nome é: ".. self.nome)
end

pessoa:dizer_ola()