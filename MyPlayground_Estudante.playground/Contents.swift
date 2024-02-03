/*
 Será exibido no console o valor 3 e a propriedade contagemEstudantes é uma propriedade estática.
 
 
 */

class Estudante {
    var nome: String
    var idade: Int
    static var contagemEstudantes = 0

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
        Estudante.contagemEstudantes += 1
    }
}

let estudante1 = Estudante(nome: "João", idade: 28)
let estudante2 = Estudante(nome: "Carlos", idade: 32)
let estudante3 = Estudante(nome: "Ana", idade: 29)
print(Estudante.contagemEstudantes) // O que será exibido?
