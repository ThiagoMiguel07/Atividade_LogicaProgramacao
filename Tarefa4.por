programa {
    
    inclua biblioteca Tipos --> tp
    
    funcao inicio() {
        
        real saldoConta, valorCheque
        cadeia entrada
        
        faca {
            escreva("Digite o saldo inicial da conta (Exemplo: R$1000.0): R$")
            leia(entrada)
            se (tp.cadeia_e_real(entrada)) {
                saldoConta = tp.cadeia_para_real(entrada)
                se (saldoConta < 0) {
                    escreva("O saldo inicial deve ser um número positivo.\n")
                    escreva("\n")
                }
            } senao {
                escreva("O saldo inicial deve ser um número válido.\n")
                escreva("\n")
                saldoConta = -1
            }
        } enquanto (saldoConta < 0)
        
        faca {
            escreva("Digite o valor do cheque (Exemplo: R$1000.0): R$")
            leia(entrada)
            se (tp.cadeia_e_real(entrada)) {
                valorCheque = tp.cadeia_para_real(entrada)
                se (valorCheque < 0) {
                    escreva("O valor do cheque deve ser um número positivo.\n")
                    escreva("\n")
                } senao {
                    se (valorCheque > saldoConta) {
                        escreva("O cheque não pode ser descontado.\n")
                    } senao {
                        saldoConta -= valorCheque
                        escreva("Cheque descontado com sucesso.\n")
                        
                        escreva("Saldo atual da conta: R$", saldoConta, "\n")
                    }
                }
            } senao {
                escreva("O valor do cheque deve ser um número válido.\n")
                escreva("\n")
                valorCheque = -1
            }
        } enquanto (valorCheque < 0)
        
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 824; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */