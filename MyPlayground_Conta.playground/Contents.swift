/*
  Autor: Sósthenes Oliveira Lima
  04/02/2024
  extension
 
 */

class Conta {
    var saldo = 0.0
    var valor = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    
    
    init(nome: String) {
        self.nome = nome
    }
}

extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaSosthenes = Conta(nome: "Sósthenes")
contaSosthenes.depositar(200)

var contaCatherine = Conta(nome: "Ana")
contaSosthenes.transferir(contaCatherine, 50)

print(contaSosthenes.saldo)
print(contaCatherine.saldo)
