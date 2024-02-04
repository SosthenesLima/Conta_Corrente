/*
 Autor: Sósthenes Oliveira Lima
 04/02/2024
 Enumeração
 */
enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case.pix: print("O pagamento será efeturado por pix")
        case.boleto: print("O pagamento será por boleto")
        case.saldoEmConta: print("O pagamento será efetuado por saldo em conta")
       // default: break
        }
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

var contaSosthenes =  Conta(nome: "Sósthenes")
contaSosthenes.pagamentoCartao(.pix)
