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
      hexadecimal: caractere
      binario: vetor[1..80] de caractere // Vetor para armazenar o número binário temporariamente
      digitos_hex: vetor[0..15] de caractere
      binario_digito: vetor[0..15] de caractere
      digito_hex, i, j, indice, tamanho: inteiro
   inicio
    escreva("Digite o número hexadecimal: ")
    leia(hexadecimal)

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

    // Inicializa o vetor com representações binárias
    binario_digito[0] <- "0000"
    binario_digito[1] <- "0001"
    binario_digito[2] <- "0010"
    binario_digito[3] <- "0011"
    binario_digito[4] <- "0100"
    binario_digito[5] <- "0101"
    binario_digito[6] <- "0110"
    binario_digito[7] <- "0111"
    binario_digito[8] <- "1000"
    binario_digito[9] <- "1001"
    binario_digito[10] <- "1010"
    binario_digito[11] <- "1011"
    binario_digito[12] <- "1100"
    binario_digito[13] <- "1101"
    binario_digito[14] <- "1110"
    binario_digito[15] <- "1111"

    // Obtém o tamanho do valor hexadecimal
    tamanho <- compr(hexadecimal)
    indice <- 1

    // Converte cada caractere do hexadecimal para binário
    para i de 1 ate tamanho faca
        // Procura o índice correspondente do caractere hexadecimal
        para j de 0 ate 15 faca
            se (digitos_hex[j] = hexadecimal[i]) entao
                digito_hex <- j
                // Armazena a representação binária correspondente
                para k de 1 ate 4 faca
                    binario[indice] <- binario_digito[digito_hex][k]
                    indice <- indice + 1
                fimpara
            fimse
        fimpara
    fimpara

    // Exibe o número convertido
    escreva("O número hexadecimal em binário é: ")
    para i de 1 ate indice - 1 faca
        escreva(binario[i])
    fimpara
    escreval("")
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



fimenquantogit add 
Fimalgoritmo