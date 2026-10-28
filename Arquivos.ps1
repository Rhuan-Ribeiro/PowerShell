# NAVEGACAO E GERENCIAMENTO DE ARQUIVOS E PASTAS

# O PowerShell e uma ferramenta de linha de comando utilizada
# para administrar sistemas operacionais e automatizar tarefas.

# Seus comandos sao chamados de cmdlets.

# Muitos cmdlets seguem o padrao "Verbo-Substantivo":
# Verbo = a acao que sera realizada.
# Substantivo = aquilo sobre o qual a acao sera realizada.

# Exemplos:
# Get-Location = obter a localizacao atual.
# New-Item = criar um item.
# Copy-Item = copiar um item.

# 1. GET-LOCATION

# O comando Get-Location mostra a localizacao atual do PowerShell.
# Ele informa em qual diretorio estamos trabalhando no momento.

Get-Location

# Ao executar, o PowerShell mostrara um caminho, como:
# C:\Users\Aluno

# 2. GET-CHILDITEM

# O comando Get-ChildItem lista os arquivos e as pastas existentes no diretorio atual.
# O comando também mostra a data da última modificação.

Get-ChildItem

# Tambem podemos consultar o conteudo de um caminho especifico, sem precisar entrar nele.

Get-ChildItem -Path "$HOME\Documents"

# -Path é um paramêtro que informa o caminho que queremos consultar.
# $HOME e uma variavel automatica do PowerShell que representa a pasta pessoal do usuario atual.

# Portanto, "$HOME\Documents" representa a pasta Documents dentro do perfil do usuario.

# 3. SET-LOCATION

# O comando Set-Location altera o diretorio atual.
# Ele permite navegar entre pastas pelo terminal

# Exemplo:
# Set-Location -Path "C:\Windows"

# O comando acima faria o PowerShell entrar na pasta Windows.

# Neste exemplo, nao vamos alterar o diretorio para esse local,
# faremos nossos testes dentro de uma pasta especifica.

# O simbolo "." representa o diretorio atual.

# O simbolo ".." representa o diretorio pai, ou seja, a pasta que esta um nivel acima da atual.

# Se estivermos em:
# C:\Users\Aluno\Documents

# E executarmos:
# Set-Location -Path ..

# Voltaremos para:
# C:\Users\Aluno

# 4. NEW-ITEM

# O comando New-Item permite criar arquivos e pastas.
# O que sera criado depende dos parametros utilizados.

# CRIANDO UMA PASTA

# Primeiro, vamos criar uma pasta exclusiva para a atividade.
# Ela ficara dentro da pasta pessoal do usuario.

# -Path indica onde o item sera criado.
# -ItemType define o tipo de item.
# Directory significa que sera criada uma pasta.
# -Force permite criar a pasta sem gerar erro apenas porque ela ja existe.

New-Item -Path "$HOME\AulaPowerShell_Exemplo" -ItemType Directory -Force

# Agora vamos entrar na pasta que acabamos de criar.

Set-Location -Path "$HOME\AulaPowerShell_Exemplo"

# Vamos conferir nossa localizacao atual.

Get-Location

# CRIANDO SUBPASTAS

# Vamos criar duas pastas dentro da pasta da atividade:
# Documentos e Backup.

# O caminho ".\Documentos" significa:
# "A pasta Documentos dentro do diretorio atual".

# O caractere "\" separa os niveis de um caminho no Windows.

New-Item -Path ".\Documentos" -ItemType Directory -Force

New-Item -Path ".\Backup" -ItemType Directory -Force

# Podemos conferir as pastas criadas.

Get-ChildItem

# CRIANDO ARQUIVOS

# O mesmo cmdlet New-Item tambem permite criar arquivos.

# -ItemType File indica que queremos criar um arquivo.

# Aqui criaremos dois arquivos de texto dentro da pasta
# Documentos. Eles servirao para os proximos exemplos.

New-Item -Path ".\Documentos\relatorio.txt" -ItemType File -Force

New-Item -Path ".\Documentos\anotacoes.txt" -ItemType File -Force

# Os arquivos acabaram de ser criados.
# Eles ainda estao vazios, pois nao adicionamos nenhum conteudo.

# Podemos conferir o resultado.

Get-ChildItem -Path ".\Documentos"


# 5. NAVEGANDO ENTRE DIRETORIOS

# Agora vamos utilizar Set-Location para entrar na pasta
# Documentos que criamos anteriormente.

Set-Location -Path ".\Documentos"

# Vamos verificar nossa localizacao.

Get-Location

# Agora estamos dentro de:
# AulaPowerShell_Exemplo\Documentos

# Se executarmos Get-ChildItem, veremos os arquivos
# que estao dentro dessa pasta.

Get-ChildItem

# Para voltar para a pasta anterior, utilizamos "..".

Set-Location -Path ..

# Agora voltamos para a pasta principal da atividade.
# Vamos confirmar.

Get-Location

# Essa demonstracao apresenta a diferenca entre navegar
# por caminhos relativos e consultar o diretorio atual.

# 6. COPY-ITEM

# O comando Copy-Item copia arquivos ou pastas.

# Exemplo da Sintaxe basica:
# Copy-Item -Path "origem" -Destination "destino"

# -Path indica qual item sera copiado.
# -Destination indica onde a copia sera colocada.

# Vamos copiar relatorio.txt da pasta Documentos para Backup.
# Tambem vamos dar um nome diferente para a copia.

Copy-Item -Path ".\Documentos\relatorio.txt" -Destination ".\Backup\relatorio_copia.txt" -Force

# O arquivo original continua em Documentos.
# A copia foi criada em Backup com o nome relatorio_copia.txt.
#
# Vamos conferir o conteudo da pasta Backup.

Get-ChildItem -Path ".\Backup"

# O parametro -Force permite realizar determinadas operacoes
# mesmo quando o destino ja existe ou possui atributos
# que normalmente dificultariam a operacao.
#
# Seu comportamento depende do cmdlet e da situacao.
# Por isso, deve ser utilizado com atencao.


# ============================================================
# 7. MOVE-ITEM
# ============================================================

# O comando Move-Item move um arquivo ou uma pasta
# de um local para outro.
#
# Diferentemente de Copy-Item, o item deixa de existir
# no local de origem depois que a movimentacao e concluida.
#
# Vamos mover anotacoes.txt da pasta Documentos para Backup.

Move-Item -Path ".\Documentos\anotacoes.txt" -Destination ".\Backup"

# Como o destino e uma pasta, o arquivo sera colocado dentro
# dela, mantendo seu nome original.
#
# Agora vamos conferir a pasta de origem.

Get-ChildItem -Path ".\Documentos"

# O arquivo anotacoes.txt nao deve mais aparecer aqui.
#
# Vamos verificar a pasta de destino.

Get-ChildItem -Path ".\Backup"

# Agora Backup deve conter:
# relatorio_copia.txt
# anotacoes.txt


# ============================================================
# 8. RENAME-ITEM
# ============================================================

# O comando Rename-Item renomeia um arquivo ou uma pasta.
#
# Ele nao serve para mover um item para outro diretorio.
# Para isso, usamos Move-Item.
#
# -Path indica qual item sera renomeado.
# -NewName informa o novo nome.
#
# Vamos renomear o arquivo que acabamos de mover.

Rename-Item -Path ".\Backup\anotacoes.txt" -NewName "anotacoes_final.txt"

# O arquivo agora se chama anotacoes_final.txt.
#
# A pasta onde ele esta armazenado continua sendo Backup.
#
# Vamos conferir o resultado.

Get-ChildItem -Path ".\Backup"

# Resultado esperado:
# relatorio_copia.txt
# anotacoes_final.txt


# ============================================================
# 9. REMOVE-ITEM
# ============================================================

# O comando Remove-Item exclui arquivos ou pastas.
#
# ATENCAO:
# A exclusao pode causar perda de dados.
# Sempre confira o caminho antes de executar esse comando.
#
# Para a demonstracao, removeremos apenas a copia
# que criamos durante esta atividade.
#
# O arquivo original relatorio.txt continuara em Documentos.

Remove-Item -Path ".\Backup\relatorio_copia.txt"

# Vamos conferir o conteudo de Backup novamente.

Get-ChildItem -Path ".\Backup"

# Agora deve existir apenas:
# anotacoes_final.txt
#
# Tambem podemos conferir se o arquivo original continua
# na pasta Documentos.

Get-ChildItem -Path ".\Documentos"

# O arquivo relatorio.txt deve continuar existindo.
#
# Isso ajuda a visualizar a diferenca entre:
# Copy-Item   = copiar, mantendo o original.
# Move-Item   = mover, retirando do local de origem.
# Remove-Item = excluir o item indicado.


# ============================================================
# 10. RESUMO DOS COMANDOS
# ============================================================

# Get-Location
# Mostra a localizacao atual.

# Get-ChildItem
# Lista arquivos e pastas.

# Set-Location
# Altera o diretorio atual.

# New-Item
# Cria arquivos ou pastas.

# Copy-Item
# Copia arquivos ou pastas.

# Move-Item
# Move arquivos ou pastas.

# Rename-Item
# Altera o nome de um arquivo ou pasta.

# Remove-Item
# Exclui arquivos ou pastas.

Write-Host "Demonstracao concluida!" -ForegroundColor Green