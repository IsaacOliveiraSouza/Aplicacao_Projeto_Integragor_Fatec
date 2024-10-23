Algoritmo "Operações Basicas"
// Disciplina   : [Algoritmos]
// Professor   : Sabha
// Data atual  : 17/09/2024
Var

   num1, num2, resultado,GuardaNumero_Fatorial, Fatorial : real
   operacao: inteiro
   outraOperacao : caractere

procedimento lerOperacoesBasicas()
inicio
         escreval("Digite o primeiro número: ")
         Leia(num1)



      Escreva("Digite o segundo número: ")
      Leia(num2)
Fimprocedimento

//soma
Procedimento somar()
Inicio
   resultado <- num1 + num2
   limpatela
   escreval ("Resultado: ",num1," + ",num2," = ", resultado)
   escreval("")
Fimprocedimento

//subtração
Procedimento subtrair()
Inicio
   resultado <- num1 - num2
   limpatela
   escreval ("Resultado: ",num1," - ",num2," = ", resultado)
   escreval("")
Fimprocedimento

//multiplicação
Procedimento multiplicar()
Inicio
   resultado <- num1 * num2
   limpatela
   escreval ("Resultado: ",num1," x ",num2," = ", resultado)
   escreval("")
Fimprocedimento

//divisão
Procedimento dividir()
Inicio
   se num2 = 0 entao
   limpatela
      escreval ("Não é possível divisão por 0! Tente novamente.")
      escreval("")
   senao
   limpatela
      resultado <- num1 / num2
       escreval ("Resultado: ",num1," / ",num2," = ", resultado)
       escreval("")
   fimse
Fimprocedimento

//Fatorial
procedimento calculo_Fatorial()
inicio
     // Solicitando o n�mero para o Fatorial
     Escreval("Digite um n?ero: ")
     Leia(num1)
     //Inicializando do fatorial pois n�o pode ser 0
     Fatorial <- 1
     GuardaNumero_Fatorial <- num1
     // Calculo do Fatorial
     limpatela
     Repita
        Fatorial <- Fatorial * num1
        num1 <- num1 - 1
     Ate(num1 < 1)
     Escreval("Resultado: ", GuardaNumero_Fatorial,"! = " ,Fatorial)
     Escreval("")

FimProcedimento

Inicio

operacao <- 1
//chamada-operações
enquanto operacao <> 0 faca
   Escreval ("Digite a operação que deseja dentre as listadas abaixo: ")
   Escreval ("SOMA (01) | SUBTRAÇÃO (02) | MULTIPLICAÇÃO (03) | DIVISÃO (04) | FATORIAL (05) | SAIR (0)")
   leia(operacao)
   //validação-operação válida
   enquanto ((operacao <0) ou (operacao > 5)) faca
      escreval ("Operação inválida! Tente novamente.")
      Escreval ("Digite a operação que deseja dentre as listadas abaixo: ")
      Escreval ("SOMA (01) | SUBTRAÇÃO (02) | MULTIPLICAÇÃO (03) | DIVISÃO (04)| FATORIAL (05)| SAIR (0)")
      leia (operacao)
   fimenquanto
   se (operacao = 1) entao
      lerOperacoesBasicas()
      somar()
   senao
      se (operacao = 2) entao
         lerOperacoesBasicas()
         subtrair()
      senao
         se (operacao = 3) entao
            lerOperacoesBasicas()
            multiplicar()
         senao
             se(operacao = 4) entao
                 lerOperacoesBasicas()
                 dividir()
             senao
                  se(operacao = 5) entao
                     calculo_fatorial()
                  fimse
            fimse
         fimse
      fimse
   fimse

   
fimenquanto
Fimalgoritmo