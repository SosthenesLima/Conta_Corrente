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
 
 */

class Empregado {
  var nome: String
  var salario: Double

  init(nome: String, salario: Double) {
    self.nome = nome
    self.salario = salario
  }
}

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
