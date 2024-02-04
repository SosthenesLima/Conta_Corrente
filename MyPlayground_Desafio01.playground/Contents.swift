/*
 Crie uma classe/struct “Pessoa” que possua os seguintes atributos, que funcionarão como propriedades armazenadas:

Nome (String);
Idade (Int);
Altura (Double);
Peso (Double).
E então, crie duas propriedades computadas:

IMC (que retorna o índice de massa corporal da pessoa a partir da sua altura e peso);
Adulto (que retorna se a pessoa é maior de 18 ou não, a partir do atributo “idade”).
Caso não saiba, o IMC é calculado por peso / (altura * altura).
*/

struct Pessoa {
    let nome: String
    let idade: Int
    let altura: Double
    let peso: Double
    
    private var imc: Double {
        return peso / (altura * altura)
    }
    
    var adulto: Bool {
        return idade >= 18
    }
}
let pessoa = Pessoa(nome: "Felipe", idade: 26, altura: 1.78, peso: 75)


