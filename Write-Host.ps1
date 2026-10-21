# COMANDOS
# Os comandos do PowerShell são chamados de cmdlets.
# Muitos cmdlets seguem o padrão "Verbo-Substantivo":
# Verbo = a ação que será realizada
# Substantivo = aquilo sobre o qual a ação será realizada

# Exemplo:
# Write-Host
# Write = escrever/exibir
# Host  = ambiente do terminal

# Clear-Host
# Limpa todo o conteúdo que está sendo exibido no terminal.

Write-Host "Olá, mundo!"
# Write-Host exibe uma mensagem diretamente no terminal.
# O texto deve ficar entre aspas, pois é uma String (texto).

# PARAMETROS DOS COMANDOS
# Parâmetro é uma opção que modifica ou configura o funcionamento de um comando.
# Ele geralmente começa com "-" e recebe um valor que define como o comando deve agir.
# Exemplo: -ForegroundColor Blue
# -ForegroundColor é o parâmetro e Blue é o valor informado para ele.

Write-Host -ForegroundColor Blue "Meu nome é Rhuan"
# -ForegroundColor define a cor do texto (primeiro plano).
# Neste exemplo, o texto será exibido na cor azul.

Write-Host -BackgroundColor Blue "Estou aprendendo PowerShell"
# -BackgroundColor define a cor do fundo do texto.
# Neste exemplo, o fundo será exibido na cor azul.

Write-Host -ForegroundColor Green -BackgroundColor Yellow "Legal, né?"
# Podemos usar mais de um parâmetro no mesmo comando.
# Aqui, o texto ficará verde e o fundo ficará amarelo.


