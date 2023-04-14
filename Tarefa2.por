programa {
    inclua biblioteca Tipos --> tp
    
    funcao inicio() {
        
        inteiro quilometragemInicial, quilometragemFinal, quantidadeGasolina, quilometragemTotal, quilometragemMediaLitro
        cadeia entrada
        
        faca {
            escreva("Digite a quilometragem inicial do velocímetro: ")
            leia(entrada)
            se (tp.cadeia_e_inteiro(entrada,10)) {
                quilometragemInicial = tp.cadeia_para_inteiro(entrada,10)
                se (quilometragemInicial < 0) {
                    escreva("A quilometragem inicial deve ser um número positivo.\n")
                    escreva("\n")
                }
            } senao {
                escreva("A quilometragem inicial deve ser um número válido.\n")
                escreva("\n")
                quilometragemInicial = -1
            }
        } enquanto (quilometragemInicial < 0)


        
        faca {
            escreva("Digite a quilometragem final do velocímetro: ")
            leia(entrada)
            se (tp.cadeia_e_inteiro(entrada,10)) {
                quilometragemFinal = tp.cadeia_para_inteiro(entrada,10)
                se (quilometragemFinal < quilometragemInicial) {
                    escreva("A quilometragem final deve ser maior ou igual à quilometragem inicial.\n")
                    escreva("\n")
                }
            } senao {
                escreva("A quilometragem final deve ser um número válido.\n")
                escreva("\n")
                quilometragemFinal = -1
            }
        } enquanto (quilometragemFinal < quilometragemInicial)


        
        faca {
            escreva("Digite a quantidade total de gasolina comprada (em litros): ")
            leia(entrada)
            se (tp.cadeia_e_inteiro(entrada,10)) {
                quantidadeGasolina = tp.cadeia_para_inteiro(entrada,10)
                se (quantidadeGasolina < 0) {
                    escreva("A quantidade de gasolina deve ser um número positivo.\n")
                    escreva("\n")
                }
            } senao {
                escreva("A quantidade de gasolina deve ser um número válido.\n")
                escreva("\n")
                quantidadeGasolina = -1
            }
        } enquanto (quantidadeGasolina < 0)


        
        quilometragemTotal = quilometragemFinal - quilometragemInicial
        quilometragemMediaLitro = quilometragemTotal / quantidadeGasolina

        escreva("\n")
        escreva("Você percorreu um total de ", quilometragemTotal, " km.\n")
        escreva("A quilometragem média por litro de gasolina foi de ", quilometragemMediaLitro, " km/L.")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 832; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */