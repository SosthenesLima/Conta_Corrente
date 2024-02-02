/* 
 Autor: Sósthenes Oliveira Lima
 01/02/2024
 Herança e o uso do Super/ Override em classes filhas.
*/
class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
        
    }
    func depositar(_ valor: Double) {
        saldo += valor
    }
    init(nome: String){
        self.nome = nome
    }
}

class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool

    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O Cliente está solicitando cartão de Débito")
    }
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }

    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

var contaPoupanca = ContaPoupanca(nome: "Sósthenes", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
contaPoupanca.sacar(20)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double){
        print("O cliente está solicitando um empréstimo no valor de \(valor)")
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaCorrente = ContaCorrente(nome: "Catherine")
contaCorrente.depositar(100)
contaCorrente.sacar(20)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
print(contaCorrente.saldo)


