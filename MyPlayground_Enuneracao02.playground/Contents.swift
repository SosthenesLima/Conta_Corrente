/*
 Autor: Sósthenes Oliveira Lima
 04/02/2024
 Raw Values - Valores customizados
 
 */

enum Mes: Int {
    case janeiro , fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}
var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)
