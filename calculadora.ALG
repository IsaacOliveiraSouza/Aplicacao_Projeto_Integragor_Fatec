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
a, b, c, delta, x1, x2, raiz: real
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
      raiz <- RaizQuad(delta)
         // Duas raízes reais distintas
         x1 := (-b + raiz) / (2 * a)
         x2 := (-b - raiz) / (2 * a)
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
   limpatela
   // Concatenação das strings
   stringCompleta <- primeiraString + segundaString
   escreval("O resultado foi: ", stringCompleta)
fimprocedimento

procedimento converte_decimal_para_binario()
   var
      i, j: inteiro
      decimal: real
      resultado: vetor[1..100] de inteiro
   inicio
      escreva("Digite um número em base 10: ")
      leia(decimal)
      i <- 1
      enquanto decimal >= 1 faça
         resultado[i] <- decimal % 2
         decimal <- decimal / 2
         i <- i + 1
      fimEnquanto
      limpatela
      escreva("Número em binário: ")
      j <- i - 1
      para i de j até 1 passo -1 faça
         escreva(resultado[i])
      fimPara
      escreval("")
fimprocedimento

procedimento converte_binario_para_decimal()
   var
      binario: real
      decimal,base, expoente, digito, i, j, tamanho: real
      caractere_atual: caractere
   inicio
    escreva("Digite o número binário: ")
    leia(binario)
      decimal <- 0
      base <- 2
      expoente <- 0

    enquanto (binario > 0) faça
        digito <- binario % 10
        decimal <- decimal + (digito * (base ^ expoente))
        // Remove o último dígito do número binário
        binario <- binario / 10
        // Incrementa o expoente
        expoente <- expoente + 1
    fimenquanto
              limpatela
    // Exibe o número convertido
    escreval("O número binário em decimal é: ", decimal)
   fimprocedimento


procedimento converte_binario_para_octal()
   var
      binario: real
      octal, base,decimal, expoente, digito, i, j, tamanho: real
   inicio
    escreva("Digite o número binário: ")
    leia(binario)

    octal <- 0
    base <- 2
    expoente <- 0

    // Primeiro, converte o binário para decimal
    decimal <- 0
    enquanto (binario >= 1) faça
        digito <- binario % 10
        decimal <- decimal + (digito * (base ^ expoente))
        binario <- binario / 10
        expoente <- expoente + 1
    fimenquanto

    // Agora, converte o número decimal para octal
    octal <- 0
    expoente <- 0
    enquanto (decimal >= 1) faça
        digito <- decimal % 8
        octal <- octal + (digito * (10 ^ expoente))
        decimal <- decimal / 8
        expoente <- expoente + 1
    fimenquanto
                    limpatela
    // Exibe o número convertido
    escreval("O número binário em octal é: ", octal)
   fimprocedimento

procedimento converte_octal_para_binario()
   var
      octal, decimal, binario, base, expoente, digito, i, j, tamanho: real
   inicio
    escreva("Digite o número octal: ")
    leia(octal)

    // Convertendo o número octal para decimal
    decimal <- 0
    expoente <- 0
    base <- 8
    enquanto (octal >= 1) faça
        digito <- octal % 10
        decimal <- decimal + (digito * (base ^ expoente))
        octal <- octal / 10
        expoente <- expoente + 1
    fimenquanto

    // Convertendo o número decimal para binário
    binario <- 0
    expoente <- 0
    base <- 2
    enquanto (decimal >= 1) faça
        digito <- decimal % 2
        binario <- binario + (digito * (10 ^ expoente))
        decimal <- decimal / 2
        expoente <- expoente + 1
    fimenquanto
                     limpatela
    // Exibe o número convertido
    escreval("O número octal em binário é: ", binario)
   fimprocedimento

procedimento converte_binario_para_hexadecimal()
   var
      binario,i, digito, indice: inteiro
      decimal, base, expoente: real
      hexadecimal: vetor[1..20] de caractere // Vetor para armazenar os dígitos hexadecimais temporariamente
      digitos_hex: vetor[0..15] de caractere
   inicio
    escreva("Digite o número binário: ")
    leia(binario)

    // Inicializa o vetor de dígitos hexadecimais
    digitos_hex[0] <- "0"
    digitos_hex[1] <- "1"
    digitos_hex[2] <- "2"
    digitos_hex[3] <- "3"
    digitos_hex[4] <- "4"
    digitos_hex[5] <- "5"
    digitos_hex[6] <- "6"
    digitos_hex[7] <- "7"
    digitos_hex[8] <- "8"
    digitos_hex[9] <- "9"
    digitos_hex[10] <- "A"
    digitos_hex[11] <- "B"
    digitos_hex[12] <- "C"
    digitos_hex[13] <- "D"
    digitos_hex[14] <- "E"
    digitos_hex[15] <- "F"

  // Convertendo o número binário para decimal
    decimal <- 0
    expoente <- 0
    base <- 2
    enquanto (binario > 0) faça
        digito <- binario mod 10
        decimal <- decimal + (digito * (base ^ expoente))
        binario <- binario div 10
        expoente <- expoente + 1
    fimenquanto

    // Convertendo o número decimal para hexadecimal
    indice <- 1
    enquanto (decimal >= 1) faça
        digito <- decimal mod 16 // Obtém o dígito correspondente
        hexadecimal[indice] <- digitos_hex[digito] // Armazena o dígito hexadecimal no vetor
        decimal <- decimal / 16 // Atualiza decimal usando divisão inteira
        indice <- indice + 1
    fimenquanto
                   limpatela
    // Exibe o número convertido em ordem inversa
    escreva("O número binário em hexadecimal é: ")
    indice <- indice - 1
    para i de indice ate 1 passo -1 faca
        escreva(hexadecimal[i])
    fimpara
    escreval("")
   fimprocedimento


procedimento converte_hexadecimal_para_binario()
   var
      hexadecimal, binarioString, parteHexadec: caractere

      digito_hex, index, j, indice, tamanho, numDigitos: inteiro
   inicio
     escreva("Digite um numero Hexadecimal:")
               leia(hexadecimal)
               binarioString <- ""
               numDigitos <- compr(hexadecimal)

               // Loop para percorrer cada digito hexadecimal.
               para index <- 1 ate numDigitos faca
                  // Obtem o caractere hexadecimal atual.
                  parteHexadec <- copia(hexadecimal, index, 1)

                  // Converte o caractere hexadecimal para inteiro.
                  escolha parteHexadec
                  caso "0"
                     binarioString <- binarioString + "0000"
                  caso "1"
                     binarioString <- binarioString + "0001"
                  caso "2"
                     binarioString <- binarioString + "0010"
                  caso "3"
                     binarioString <- binarioString + "0011"
                  caso "4"
                     binarioString <- binarioString + "0100"
                  caso "5"
                     binarioString <- binarioString + "0101"
                  caso "6"
                     binarioString <- binarioString + "0110"
                  caso "7"
                     binarioString <- binarioString + "0111"
                  caso "8"
                     binarioString <- binarioString + "1000"
                  caso "9"
                     binarioString <- binarioString + "1001"
                  fimescolha

        se (parteHexadec = "A") ou (parteHexadec = "a") entao
            binarioString <- binarioString + "1010"
        fimse
        se (parteHexadec = "B") ou (parteHexadec = "b") entao
            binarioString <- binarioString + "1011"
        fimse
        se (parteHexadec = "C") ou (parteHexadec = "c") entao
            binarioString <- binarioString + "1100"
        fimse
        se (parteHexadec = "D") ou (parteHexadec = "d") entao
            binarioString <- binarioString + "1101"
        fimse
        se (parteHexadec = "E") ou (parteHexadec = "e") entao
            binarioString <- binarioString + "1110"
        fimse
        se (parteHexadec = "F") ou (parteHexadec = "f") entao
            binarioString <- binarioString + "1111"
        fimse

               fimpara
               limpatela
               // Mostra o resultado da conversao
               escreval("O numero hexadecimal ", hexadecimal, " em binario: ", caracpnum(binarioString))

   fimprocedimento


Procedimento bases()
var
   base: inteiro
Inicio
   escreval("Qual conversao deseja realizar:")
   escreval("B10xB2 (01) | B2XB10 (02) | B2XB8 (03) | B8XB2 (04) | B2XB16 (05) | B16XB2 (06)")
   leia(base)
   enquanto ((base < 1) ou (base > 6)) faca
      escreval ("Operação inválida! Tente novamente.")
      escreval("Qual conversao deseja realizar:")
      escreval("B10xB2 (01) | B2XB10 (02) | B2XB8 (03) | B8XB2 (04) | B2XB16 (05) | B16XB2 (06)")
      leia(base)
   fimenquanto

   se (base = 1) entao
      converte_decimal_para_binario()
   senao
      se (base = 2) entao
        converte_binario_para_decimal()
      senao
         se (base = 3) entao
            converte_binario_para_octal()
         senao
            se (base = 4) entao
                converte_octal_para_binario()
            senao
               se (base = 5) entao
                      converte_binario_para_hexadecimal()
               senao
                  converte_hexadecimal_para_binario()
               fimse
            fimse
         fimse
      fimse
   fimse
Fimprocedimento


Funcao RaizQuad (R: real):real
var
raiz, numRaiz, precisao, raizquadrada: real
Inicio
   //a precisao define a quantidade de casas decimais que a raiz sera decomposta
   precisao <- 0.000001
   //para calcular a raiz quadrada utilizamos o m?todo de m?dia aproimada
   //para comecar decompomos a raiz por 2
   raiz <- R / 2

   //procedimento de decomposi??o da raiz
   enquanto raiz > precisao faca
      numRaiz <- (raiz + R / raiz) / 2
      se (raiz - numRaiz) < precisao entao
         raiz <- numRaiz
         //assim que a raiz for decomposta ate a casa decimal definida
         //precisao, interrompemos o processo
         interrompa
      fimse
      //definimos o valor de raiz de delta!
      raiz <- numRaiz
      raizquadrada  <- raiz
      Retorne raizquadrada
   fimenquanto
FimFuncao

Inicio

operacao <- 1
//chamada-operações
enquanto operacao <> 0 faca
   Escreval ("Digite a operação que deseja dentre as listadas abaixo: ")
   Escreval ("SOMA (01) | SUBTRAÇÃO (02) | MULTIPLICAÇÃO (03) | DIVISÃO (04) | FATORIAL (05) | JUROS SIMPLES (06) | JUROS COMPOSTO (07) | CONCATENAÇÃO DE PALAVRAS (08) | EQUACAO (09) | CONVERSAO DE BASES (10)| SAIR (0)")
   leia(operacao)
   //validação-operação válida
   enquanto ((operacao <0) ou (operacao > 10)) faca
      escreval ("Operação inválida! Tente novamente.")
      Escreval ("Digite a operação que deseja dentre as listadas abaixo: ")
      Escreval ("SOMA (01) | SUBTRAÇÃO (02) | MULTIPLICAÇÃO (03) | DIVISÃO (04) | FATORIAL (05) | JUROS SIMPLES (06) | JUROS COMPOSTO (07) | CONCATENAÇÃO DE PALAVRAS (08) | EQUACAO (09) | CONVERSAO DE BASES (10) | SAIR (0)")
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
                        senao
                           se (operacao = 10) entao
                               bases()
                           fimse
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