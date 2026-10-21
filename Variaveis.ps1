Clear-Host

# VARIAVEIS
# Variavel é um espaço na memória usado para guardar informação

# Declarando nossas variaveis
$Nome = 'Rhuan'
# $Idade = 22
# $Altura = 1.70
# $Aprovado = $true

# Exibindo
# Write-Host 'Teste $Nome' # Aspas simples apenas mostram o texto, não substitui a variavel pelo valor
# Write-Host "Nome: $Nome" # Com aspas duplas podemos substituir a variavel pelo valor dela
# Write-Host "Idade: $Idade anos" # Também podemos ter variaveis com valores númericos"
# Write-Host "Altura: $Altura" # Valores decimais...
# Write-Host "Status: $Aprovado" # Até booleanos, que são Verdadeiro e Falso

# Matriz / Array
# Matriz guarda uma coleção de valores em uma única variavel
# $Impares = 1, 3, 5, 7, 9 # Matriz é uma variavel com vários valores.
# $Frutas = @('uva', 'maca', 'banana')

# Write-Host "Minha fruta favorita é: $($frutas[2])"
# Write-Host "Primeiro impar: $($Impares[0])"

# INPUT

$NomeUsuario = Read-Host "Por favor, escreva o seu nome"
Write-Host "Seu nome e $NomeUsuario ? Eu sei..."

$IdadeUsuario = [int](Read-Host "Por favor, escreva a sua idade")
Write-Host "Voce tem $idadeUsuario anos e vai fazer $($idadeUsuario + 1)"

