programa {
    
    inclua biblioteca Tipos --> tp
    
    funcao inicio() {
        
        real valorSalario, financiamento
        cadeia entrada
        
        faca {
            escreva("Digite o valor do salário: ")
            leia(entrada)
            se (tp.cadeia_e_real(entrada) ou tp.cadeia_e_inteiro(entrada,10)) {
                valorSalario = tp.cadeia_para_real(entrada)
                se (valorSalario < 0) {
                    escreva("O salário deve ser um número positivo.\n")
                    escreva("\n")
                }
            } senao {
                escreva("O salário deve ser um número válido.\n")
                escreva("\n")
                valorSalario = -1
            }
        } enquanto (valorSalario < 0)
        
        faca {
            escreva("Digite o valor do financiamento pretendido: ")
            leia(entrada)
            se (tp.cadeia_e_real(entrada) ou tp.cadeia_e_inteiro(entrada,10)) {
                financiamento = tp.cadeia_para_real(entrada)
                se (financiamento < 0) {
                    escreva("O valor do financiamento deve ser um número positivo.\n")
                    escreva("\n")
                }
            } senao {
                escreva("O valor do financiamento deve ser um número válido.\n")
                escreva("\n")
                financiamento = -1
            }
        } enquanto (financiamento < 0)
        
        se (financiamento <= 5 * valorSalario) {
            escreva("\nFinanciamento Concedido\n")
        } senao {
            escreva("\nFinanciamento Negado\n")
        }
        
        escreva("Obrigado por nos consultar.")
    }
}
