Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/09/2024
Var
   num1, num2, resultado : real
   operacao: inteiro
   outraOperacao : caractere

procedimento lerOperacoesBasicas()
inicio
escreval("Digite o primeiro número: ")
      Leia(num1)


   Escreva("Digite o segundo número: ")
   Leia(num2)
Fimprocedimento

// Soma
procedimento somar()
Inicio
   resultado <- num1 + num2
   escreval ("Resultado: ",num1," + ",num2," = ", resultado)
Fimprocedimento
// Subtração
procedimento subtrair()
Inicio
   resultado <- num1 - num2
   escreval ("Resultado: ",num1," - ",num2," = ", resultado)
Fimprocedimento

// Chamada da operação
Inicio
   operacao <- 1
   enquanto operacao <> 0 faca
      Escreval ("Digite a operação que deseja dentre as listadas abaixo: ")
      Escreval ("SOMA (01) | SUBTRAÇÃO (02) | SAIR (0)")
      leia(operacao)

se (operacao = 1) entao
         lerOperacoesBasicas()
         somar()
      senao
      se (operacao = 2) entao
            lerOperacoesBasicas()
            subtrair()
      fimse
fimse
   fimenquanto
Fimalgoritmo