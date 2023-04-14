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

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 585; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */