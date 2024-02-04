/*
 Autor: Sósthenes Oliveira lIMA
 04/02/2024
 
 */
func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}
let texto = String("Seja bem vindos!")
contaCaracteresString(texto)

extension String {
    func contaCaractereString() -> Int {
        return self.count
    }
}
print(texto.contaCaractereString())
