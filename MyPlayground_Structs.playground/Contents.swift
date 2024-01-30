struct ContaCorrente {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
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

