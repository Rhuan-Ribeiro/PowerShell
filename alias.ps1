# ALIASES (NOMES ALTERNATIVOS)
# Um alias e um nome alternativo ou abreviado para um comando.
# Ele permite executar um cmdlet utilizando outro nome.

# Por exemplo:
# Get-ChildItem e dir executam o mesmo comando.
# Isso acontece porque "dir" e um alias de Get-ChildItem.

# Os aliases facilitam a digitacao dos comandos, principalmente durante o uso interativo do terminal.

# 1. GET-ALIAS
# O comando Get-Alias permite consultar os aliases disponiveis no PowerShell.

Get-Alias

# O resultado apresenta os aliases registrados na sessao.
# Como existem muitos aliases, a lista pode ser extensa.


# CONSULTANDO UM ALIAS ESPECIFICO

# O parametro -Name permite consultar um alias pelo nome.
# Neste exemplo, queremos descobrir a qual comando "dir" esta associado.

Get-Alias -Name dir

# O resultado indicara algo semelhante a:

# Name    Definition
# ----    ----------
# dir     Get-ChildItem

# Isso significa que dir e um nome alternativo para Get-ChildItem.


# CONSULTANDO OS ALIASES DE UM CMDLET

# O parametro -Definition permite descobrir quais aliases estao associados a um comando especifico.

Get-Alias -Definition Get-ChildItem

# No Windows, podemos encontrar aliases como:
# dir
# ls
# gci

# Todos eles podem executar Get-ChildItem.

# A disponibilidade de alguns aliases depende do ambiente e da versao do PowerShell.

# 2. ALIASES PARA NAVEGACAO
# GET-LOCATION

# Get-Location mostra o diretorio atual.
# Alguns aliases desse cmdlet sao: pwd e gl

Get-Location

pwd

gl

# Os tres exemplos mostram a localizacao atual.
# pwd e um alias bastante conhecido tambem em sistemas Unix.


# SET-LOCATION

# Set-Location altera o diretorio atual.

# Alguns aliases desse cmdlet sao: cd, chdir, sl

# O comando abaixo entra na pasta Documents do usuario.
# $HOME representa a pasta pessoal do usuario atual.

Set-Location "$HOME\Documents"

# Podemos executar a mesma operacao utilizando o alias cd.

cd "$HOME\Documents"

# Para voltar ao diretorio anterior na hierarquia de pastas, utilizamos dois pontos:

# .. = diretorio pai.

cd ..

# Vamos conferir onde estamos.

pwd

# 3. ALIASES PARA LISTAR ARQUIVOS E PASTAS
# O cmdlet Get-ChildItem lista os itens de um diretorio.

# Alguns aliases sao: dir, ls, gci

Get-ChildItem

dir

ls

gci

# Os quatro comandos apresentam o conteudo do diretorio atual.

# No Windows PowerShell, dir, ls e gci sao aliases de Get-ChildItem.

# Em outros sistemas operacionais, alguns aliases podem nao estar disponiveis
# para evitar conflitos com comandos nativos do sistema.

# 4. ALIAS PARA CRIAR ARQUIVOS E PASTAS
# O cmdlet New-Item permite criar arquivos e pastas.

# Seu alias mais comum e: ni

# Vamos criar uma pasta para demonstrar os aliases.

# O caminho fica dentro da pasta pessoal do usuario.

ni -Path "$HOME\AulaAliases_Exemplo" -ItemType Directory -Force

# -Path indica o local onde o item sera criado.
# -ItemType Directory indica que queremos uma pasta.
# -Force permite determinadas operacoes quando o item
# ja existe ou possui condicoes que exigem esse parametro.

# Agora vamos entrar na pasta criada.

cd "$HOME\AulaAliases_Exemplo"

# Vamos criar duas subpastas.

ni -Path ".\Documentos" -ItemType Directory -Force

ni -Path ".\Backup" -ItemType Directory -Force

# Tambem podemos usar ni para criar arquivos.

ni -Path ".\Documentos\relatorio.txt" -ItemType File -Force

ni -Path ".\Documentos\anotacoes.txt" -ItemType File -Force

# Vamos conferir a estrutura criada.

dir ".\Documentos"

# 5. ALIASES PARA COPIAR ARQUIVOS
# O cmdlet Copy-Item copia arquivos ou pastas.

# Alguns aliases sao: copy, cp, cpi

# Vamos copiar relatorio.txt para a pasta Backup.
# O arquivo original continuara em Documentos.

copy ".\Documentos\relatorio.txt" ".\Backup\relatorio_copia.txt"

# O alias copy executa Copy-Item.
# Podemos conferir o resultado utilizando dir.

dir ".\Backup"

# O comando abaixo faria a mesma operacao usando outro alias.
# Esta linha esta comentada para nao criar uma segunda copia.

# cp ".\Documentos\relatorio.txt" ".\Backup\segunda_copia.txt"

# 6. ALIASES PARA MOVER ARQUIVOS
# O cmdlet Move-Item move arquivos ou pastas.

# Alguns aliases sao: move, mv, mi

# Vamos mover anotacoes.txt para Backup.

move ".\Documentos\anotacoes.txt" ".\Backup"

# O arquivo deixa de ficar em Documentos e passa para Backup.
# Vamos conferir os dois diretorios.

dir ".\Documentos"

dir ".\Backup"

# O alias mv tambem pode executar Move-Item.

# Exemplo comentado:
# mv ".\Backup\anotacoes.txt" ".\Documentos"

# 7. ALIASES PARA RENOMEAR ARQUIVOS
# O cmdlet Rename-Item altera o nome de um arquivo ou pasta.

# Alguns aliases sao: ren, rni

# Vamos renomear anotacoes.txt.

ren ".\Backup\anotacoes.txt" "anotacoes_final.txt"

# O arquivo continua na pasta Backup, mas agora possui outro nome.

# Vamos conferir o resultado.

dir ".\Backup"

# Importante:
# Renomear nao e a mesma coisa que mover.
# Rename-Item altera o nome do item.
# Move-Item altera sua localizacao.

# 8. ALIASES PARA EXCLUIR ARQUIVOS
# O cmdlet Remove-Item exclui arquivos ou pastas.

# Alguns aliases sao: del, erase, rd, rm, ri, rmdir

# ATENCAO:
# A exclusao pode causar perda de dados.
# Confira sempre o caminho antes de executar o comando.

# Vamos excluir apenas a copia que criamos nesta atividade.

del ".\Backup\relatorio_copia.txt"

# O alias del executa Remove-Item.

# Tambem podemos utilizar rm ou erase, por exemplo.

# A linha abaixo esta comentada para evitar uma segunda
# tentativa de excluir o mesmo arquivo.

# rm ".\Backup\relatorio_copia.txt"

# Vamos conferir o conteudo da pasta Backup.

dir ".\Backup"

# O arquivo anotacoes_final.txt deve continuar na pasta.

# 9. RESUMO DOS ALIASES
# Get-Location
# Aliases: pwd, gl
# Funcao: mostra a localizacao atual.

# Get-ChildItem
# Aliases: dir, ls, gci
# Funcao: lista arquivos e pastas.

# Set-Location
# Aliases: cd, chdir, sl
# Funcao: navega entre diretorios.

# New-Item
# Alias: ni
# Funcao: cria arquivos e pastas.

# Copy-Item
# Aliases: copy, cp, cpi
# Funcao: copia arquivos ou pastas.

# Move-Item
# Aliases: move, mv, mi
# Funcao: move arquivos ou pastas.

# Rename-Item
# Aliases: ren, rni
# Funcao: renomeia arquivos ou pastas.

# Remove-Item
# Aliases: del, erase, rd, rm, ri, rmdir
# Funcao: exclui arquivos ou pastas.

# 10. CONCLUSAO
Write-Host "Demonstracao de aliases concluida!" -ForegroundColor Green

# IMPORTANTE:
# Os aliases sao uteis para digitar comandos rapidamente no terminal.

# Entretanto, em scripts que serao compartilhados, mantidos ou utilizados em ambientes diferentes, 
# prefira os nomes completos dos cmdlets.

# Exemplo:
# dir               -> Get-ChildItem
# cd ..             -> Set-Location ..
# copy arquivo.txt  -> Copy-Item arquivo.txt

# Os nomes completos tornam o codigo mais claro e facil
# de compreender por outros profissionais.