/*
 Propriedade Computada
 Autor: Sósthenes Oliveira Lima
 03/02/2024
 
 */

class Conta {
    var saldo = 0.0
    var nome: String
    
    static var taxaTransferencia = 0.1
    
    var negativado: Bool {
        return saldo < 0
    }
    
    func sacar (_ valor: Double) {
        saldo -= valor
     }
    
    func depositar(_ valor: Double) {
        saldo += valor
     }
    
    init( nome: String) {
        self.nome = nome
    }
}

var contaSosthens = Conta(nome: "Sósthenes")
contaSosthens.sacar(20)
print(contaSosthens.negativado)
contaSosthens.depositar(100)
print(contaSosthens.negativado)
print(Conta.taxaTransferencia)
