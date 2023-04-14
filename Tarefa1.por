programa
{
   inclua biblioteca Tipos --> tp
	
   funcao inicio()
   {
   	
      inteiro softwaresVendidos
      cadeia softwaresVendidosString
      real salarioTotal
      
      faca {
         escreva("Digite o número de softwares vendidos: ")
         leia(softwaresVendidosString) 
		se (tp.cadeia_e_inteiro(softwaresVendidosString, 10)) {
			softwaresVendidos = tp.cadeia_para_inteiro(softwaresVendidosString, 10)
			se (softwaresVendidos < 0) {
            		escreva("Número de softwares vendidos deve ser positivo.\n")
         		}
		} senao {
			escreva("Número de softwares vendidos deve ser inteiro.\n")
			softwaresVendidos = -1
		} 
      } enquanto (softwaresVendidos < 0)

      salarioTotal = 500.0 + (50.0 * softwaresVendidos)

      escreva("Salário total do funcionário: R$ ", salarioTotal)
   }
}
