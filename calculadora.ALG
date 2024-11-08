Algoritmo "Operações Basicas"
// Disciplina   : [Algoritmos]
// Professor   : Sabha
// Data atual  : 17/09/2024
Var

   num1, num2, resultado,GuardaNumero_Fatorial, Fatorial : real
   operacao: inteiro
   outraOperacao, primeiraString, segundaString, stringCompleta : caractere
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
     // Solicitando o n?mero para o Fatorial
     Escreval("Digite um n?mero: ")
     Leia(num1)
     //Inicializando do fatorial pois n?o pode ser 0
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

//Juros Simples
procedimento jurosSimples()
var
//Declarando variáveis locais para uso do procedimento
   capitalInicial, taxaJuros, periodicidade, juros: real

inicio

//Solicitando valor do capital inicial
escreval ("DIGITE O VALOR DO CAPITAL (c): ")
      leia (capitalInicial)

      //Solicitando valor da taxa de juros
      escreval ("DIGITE O VALOR DA TAXA DE JUROS (i): ")
      leia (taxaJuros)
      taxaJuros <- taxaJuros/100

      //Solicitando o periodo
      escreval ("DIGITE A PERIODICIDADE (t): ")
      leia (periodicidade)
      escreval ()
               limpatela
            juros <- capitalInicial * taxaJuros * periodicidade
      escreval("O VALOR DO JUROS SIMPLES É: ", juros)
fimprocedimento

//Procedimento Juros Composto
procedimento jurosComposto()
var
   capitalInicial, taxaJuros, montante: real
   i, periodicidade: inteiro

inicio
limpatela
     escreval ("DIGITE O VALOR DO CAPITAL (c): ")
     leia (capitalInicial)

     // Solicitação da taxa de juros
     escreval ("DIGITE O VALOR DA TAXA DE JUROS (i): ")
     leia (taxaJuros)
     taxaJuros <- taxaJuros / 100

     // Solicitação do período
     escreval ("DIGITE A PERIODICIDADE (t): ")
     leia (periodicidade)

     // Inicializa o montante com o valor do capital inicial
     montante <- capitalInicial

     // Aplica juros compostos
     para i <- 1 ate periodicidade faca
           montante <- montante * (1 + taxaJuros)
     fimpara

     escreval()
     escreval("VALOR DO MONTANTE: ", montante:10:2)
fimprocedimento


procedimento equacao()
var 
a, b, c, delta, x1, x2: real
inicio
    escreval("Digite o valor de a: ")
   leia(a)
   escreval("Digite o valor de b: ")
   leia(b)
   escreval("Digite o valor de c: ")
   leia(c)

   // Calculando o discriminante (Delta)
   delta := b * b - 4 * a * c

   se a = 0 então
      escreval("O valor de 'a' não pode ser zero. Não é uma equação do segundo grau.")
   senão
      se delta > 0 então
         // Duas raízes reais distintas
         x1 := (-b + raizq(delta)) / (2 * a)
         x2 := (-b - raizq(delta)) / (2 * a)
         limpatela()
         escreval("As raízes reais são: X1 = ", x1, " e X2 = ", x2)
      senao
         se delta = 0 então
            // Uma raiz real (raízes iguais)
            x1 := -b / (2 * a)
            limpatela()
            escreval("A raiz real única é: X = ", x1)
         senao
            // Delta negativo (não há soluções reais)
            limpatela()
            escreval("Não há soluções reais, pois o delta é negativo.")
         fimse
      fimse
   fimse
fimprocedimento

procedimento concatenacaoString()
inicio
// Leitura da primeira e segunda strings
   primeiraString <- ("")
   segundaString <- ("")
   enquanto (primeiraString = "") ou (segundaString = "") faca
      escreval("Digite a primeira parte: ")
      leia(primeiraString)

      escreval("Digite a segunda parte: ")
      leia(segundaString)

      // Verificação e mensagem de erro se uma das strings estiver vazia
      se (primeiraString = "") ou (segundaString = "") entao
         limpatela
         escreval("Erro: Certifique-se de que ambas as partes foram digitadas.")
      fimse
   fimenquanto
   limpatela
   // Concatenação das strings
   stringCompleta <- primeiraString + segundaString
   escreval("O resultado foi: ", stringCompleta)
fimprocedimento

Inicio

operacao <- 1
//chamada-operações
enquanto operacao <> 0 faca
   Escreval ("Digite a operação que deseja dentre as listadas abaixo: ")
   Escreval ("SOMA (01) | SUBTRAÇÃO (02) | MULTIPLICAÇÃO (03) | DIVISÃO (04) | FATORIAL (05) | JUROS SIMPLES (06) | JUROS COMPOSTO (07) | CONCATENAÇÃO DE PALAVRAS (08) | EQUACAO (09) | SAIR (0)")
   leia(operacao)
   //validação-operação válida
   enquanto ((operacao <0) ou (operacao > 8)) faca
      escreval ("Operação inválida! Tente novamente.")
      Escreval ("Digite a operação que deseja dentre as listadas abaixo: ")
      Escreval ("SOMA (01) | SUBTRAÇÃO (02) | MULTIPLICAÇÃO (03) | DIVISÃO (04) | FATORIAL (05) | JUROS SIMPLES (06) | JUROS COMPOSTO (07) | CONCATENAÇÃO DE PALAVRAS (08) | EQUACAO (09) | SAIR (0)")
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
         se (operacao = 4) entao
            lerOperacoesBasicas()
            dividir()
         senao
            se (operacao = 5) entao
               calculo_fatorial()
            senao
               se (operacao = 6) entao
                  jurosSimples()
               senao
                  se (operacao = 7) entao
                     jurosComposto()
                  senao
                     se (operacao = 8) entao
                        concatenacaoString()
                     senao
                        se (operacao = 9) entao
                           equacao()
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse



fimenquanto
Fimalgoritmo