/*
 Desafio 1 - Registrando o empregado e gerente
 Vamos simular uma situação de cadastro de funcionários!

 Crie uma classe Empregado que possuirá os seguintes atributos:

 A. Nome (String);
 B. Salário (Double).
 Crie uma classe filha de Empregado, a Gerente. Afinal de contas, gerente é um tipo de empregado.

 Na classe “Gerente”, adicione como atributo “departamento”, que deve ser uma String que diga a qual departamento o gerente pertence. Lembre de usar o super.init() para inicializar os atributos da classe pai.
 
 
 Desafio 2 - Calculando o salário do vendedor
 Agora, com base no desafio anterior, vamos aprofundar!

 Crie uma outra classe filha chamada Vendedor.
 Faça um método chamado percentualComissao, que recebe como parâmetro o número de vendas que o vendedor realizou. Cada vendedor possui uma comissão de 10% sobre cada venda. Essa comissão é adicionada ao salário final. Retorne o valor final que o vendedor irá receber, supondo que cada venda possui um valor de R$50,00.
 
 
 Desafio 3 - Verificando tipos
 Ainda com base no desafio anterior, vamos verificar os tipos de “Empregado”, se a instância é do tipo “Gerente” ou “Vendedor”.

 Crie uma função chamada verificaTipo que recebe, como parâmetro, uma instância do tipo Empregado;
 Faça o uso do typecasting para verificar se a instância é um gerente, vendedor ou apenas um outro empregado;
 Mostre no console o nome do empregado e a sua função. Caso o empregado for um gerente, mostre seu departamento também. O resultado final será parecido com esse:
 “O(a) empregado(a) Felipe é um(a) gerente e está no departamento RH.”
 “O(a) empregado(a) Daniel é um(a) vendedor.”
 
 Agora, vamos criar um observador de propriedade para esse atributo. Caso o salário seja alterado para um valor maior do que era, exiba no console a mensagem: “Parabéns, você recebeu uma promoção”. Caso o novo valor seja o mesmo que o anterior, exiba então a mensagem: “Parece que não houve uma promoção dessa vez.”.

 Por fim, se o novo valor do salário for menor do que já era anteriormente, bloqueie essa operação e exiba no console a mensagem: “O novo salário não pode ser menor do que era anteriormente”.

 Lembre-se que para pegar o valor antigo, use o didSet, e para pegar o valor novo, use o willSet.
 
 */

class Empregado {
  var nome: String
    var salario: Double {
        willSet {
            if newValue > salario {
                print("Parabéns, você recebeu um aumento no salário.")
            } else if newValue == salario {
                print("Parece que não houve uma promoção dessa vez")
            }
        }
        
        didSet {
            if salario < oldValue {
                print("O novo salário não pode ser menor que o salário que era anteriomente!")
                salario = oldValue
            }
        }
    }

  init(nome: String, salario: Double) {
    self.nome = nome
    self.salario = salario
  }
}

let empregado = Empregado(nome: "Sósthenes Lima", salario: 20000)
empregado.salario = 20000
empregado.salario = 19000
empregado.salario = 5000

print(empregado.salario)

class Gerente: Empregado {
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
    class Vendedor: Empregado {
        func percentualComissao(_ numeroVendas: Int) -> Double {
            return (0.1 * 50.0 * Double(numeroVendas)) + self.salario
        }
    }
    
    func verificaTipo(_ empregado: Empregado) {
        if let gerente = empregado as? Gerente {
            print("O(a) empregado(a) \(gerente.nome) é um(a) gerente e está no departamento \(gerente.departamento).")
        } else if let vendedor = empregado as? Vendedor {
            print("O(a) empregado(a) \(vendedor.nome) é um(a) vendedor(a).")
        } else {
            print("O(a) empregado(a) \(empregado.nome) é de um outro tipo.")
            let vendedor = Vendedor(nome: "Daniel", salario: 2300)
            let gerente = Gerente(nome: "Felipe", salario: 4000, departamento: "RH")
            verificaTipo(vendedor)
            verificaTipo(gerente)
           
        }
        
    }

}
