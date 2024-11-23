#Programa para cálculo de média, variância e desvio padrão 

Este programa realiza cálculos de média, variância e desvio padrão a partir de um arquivo de entrada de dados númericos, utilizando de um módulo chamado **estatistica** para organizar as operações e leitura do arquivo

##Estrutura dos arquivos

###Entrada

O arquivo de entrada deve ser um arquivo de texto simples, contendo apenas números reais, com **um número em cada linha**

Observações:
- O arquivo deve conter apenas números
- O programa não trata caracteres ou linhas vazias

###Saída

Os resultados das estatísticas serão exibidos diretamente no terminal dessa maneira abaixo 

Informe o nome do arquivo
dados.txt
Resultados
Media:          25.14
Variancia:      19.04
Desvio padrao:  1.76

##Como executar

-Compile o programa usando:

gfortran modulo.f90 programa.f90 -o estatistica

-Execute o programa:

./estatistica

-Insira o nome do arquivo que contém os dados quando for solicitado

##Estrutura do código

###Módulo:

-Contém as funções media, variancia, desviop, além da subrotina leitura_dados para manipular o arquivo de entrada

###Programa principal:

-Usa o módulo para realizar os cálculos com os dados fornecidos pelo usuário


