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
enum ResultadoSaque {
    case sucesso(novoValor: Double)
    case falha(erro: String)
}

class Conta {
    var saldo = 0.0
    var nome: String
    
    
    
    func sacar(_ valor: Double) -> ResultadoSaque {
        
        if valor > saldo {
            return .falha(erro: "O valor é maior que o seu saldo!")
        } else {
            saldo -= valor
            return .sucesso(novoValor: saldo)
        }
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
contaSosthenes.depositar(100)
let resultado = contaSosthenes.sacar(20)

switch resultado {
    
case .sucesso( let novoValor):
    "O Saque foi um sucesso!, é o saldo é de \(novoValor)"
case .falha(let erro):
    print(erro)
}


