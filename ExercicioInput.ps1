# ATIVIDADE:

# Peça para o usuário digitar um número no terminal, e depois faça o terminal falar qual é o número antecessor e o sucessor.

# RESOLUÇÃO:

$numero = [int](Read-Host "Escreva um numero")
Write-Host "Seu numero e: $numero"

Write-Host "O numero antecessor e $($numero - 1)"

$sucessor = $numero + 1

Write-Host "O sucessor e $sucessor"
