/*
 Autor: Sósthenes Oliveira Lima
 04/02/2024
 Raw Values - Valores customizados
 
 */

enum Mes: String {
    case janeiro = "JANEIRO" , fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}
var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)

enum Moeda: Double {
    case umCentavo = 0.01
    case cincoCentavos = 0.05
    case dezCentavos = 0.10
    case vinteCincoCentavos = 0.25
    case cinquetaCentavos = 0.50
}

var moedacincoCentavos = Moeda.cincoCentavos
print(moedacincoCentavos.rawValue)



