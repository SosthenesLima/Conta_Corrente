class ContaCorrente {
    var saldo: Double
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }
}


var contaCorrenteSosthenes = ContaCorrente( nome: "Sosthenes")
print(contaCorrenteSosthenes.saldo)
contaCorrenteSosthenes.depositar(1500)
print(contaCorrenteSosthenes.saldo)

var contaCorrenteCatherine = ContaCorrente( nome: "Catherine")
contaCorrenteCatherine.depositar(200)
contaCorrenteCatherine.sacar(100)
print(contaCorrenteCatherine.saldo)
