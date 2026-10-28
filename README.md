<div align="center">

# PowerShell na Prática

### Scripts comentados para a disciplina de **Gestão de Sistemas Operacionais**

![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Nível](https://img.shields.io/badge/Nível-Iniciante-2ea44f?style=for-the-badge)
![Curso](https://img.shields.io/badge/Curso-Informática_para_Internet-orange?style=for-the-badge)
![Módulo](https://img.shields.io/badge/Módulo-1_de_3-blueviolet?style=for-the-badge)

*Aprenda PowerShell lendo, executando e experimentando. Cada script é uma aula comentada.*

</div>

---

## Sobre o repositório

Este repositório reúne os **scripts `.ps1`** utilizados nas aulas de **Gestão de Sistemas Operacionais**, para a turma de **Informática para Internet** (1º módulo de 3).

Cada arquivo funciona como uma **mini-aula**: contém os comandos, **explicações detalhadas** do que cada um faz e **exemplos práticos**, tudo escrito em comentários. Você pode ler o arquivo como se fosse uma apostila e executar os comandos linha a linha para ver o resultado.

> **Dica:** o objetivo não é decorar comandos, e sim entender a lógica do PowerShell para conseguir descobrir e usar novos comandos sozinho.

---

## O que você vai aprender

- Entender a estrutura **Verbo-Substantivo** dos cmdlets
- Usar o **sistema de ajuda** do PowerShell
- Executar comandos e interpretar suas saídas
- Usar o **pipeline** (`|`) para combinar comandos
- Dar os primeiros passos na **automação** com scripts

---

## Estrutura do repositório

```text
Powershell
 ├── arquivos .ps1   -> um script comentado por tema de aula
 └── README.md
```

Cada arquivo `.ps1` é independente: abra o que corresponde ao tema da aula e acompanhe os comentários.

---

## Como usar

### 1. Baixe o repositório

```bash
git clone https://github.com/Rhuan-Ribeiro/Powershell.git
cd Powershell
```

Ou clique em **Code > Download ZIP** aqui no GitHub.

### 2. Abra o PowerShell

Pressione `Win` + `X` e escolha **Terminal** (ou **Windows PowerShell**). Alguns comandos exigem **Executar como administrador**, e isso estará avisado nos comentários.

### 3. Libere a execução de scripts (se necessário)

Por segurança, o Windows pode bloquear scripts. Para liberar **apenas na sessão atual**:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

### 4. Execute ou estude o script

```powershell
.\NOME-DO-ARQUIVO.ps1
```

> **Recomendação:** em vez de rodar o arquivo inteiro de uma vez, abra no **VS Code** ou no **PowerShell ISE** e execute **linha por linha** (`F8` seleciona e executa o trecho). Assim você vê o efeito de cada comando.

---

## Como ler os scripts

Os arquivos seguem um padrão de comentários para facilitar o estudo:

```powershell
# ============================================
# TEMA: Listando arquivos
# ============================================

# O que é: Get-ChildItem lista o conteúdo de uma pasta
# Apelidos (aliases): ls, dir, gci
# Exemplo:
Get-ChildItem C:\Users
```

| Marcação | Significado |
|:--------:|-------------|
| `TEMA` | Título da seção |
| `O que é` | Explicação do comando |
| `Exemplo` | Uso prático para você testar |
| `ATENÇÃO` | Cuidado ao executar |

---

## Ferramentas recomendadas

| Ferramenta | Para que serve |
|------------|----------------|
| [Windows Terminal](https://aka.ms/terminal) | Terminal moderno do Windows |
| [Visual Studio Code](https://code.visualstudio.com/) | Editor com extensão oficial de PowerShell |
| [Documentação da Microsoft](https://learn.microsoft.com/powershell/) | Referência oficial completa |

---

## Três comandos para nunca ficar perdido

```powershell
Get-Help Get-Process        # Mostra como usar um comando
Get-Command *service*       # Descobre comandos pelo nome
Get-Member                  # Mostra propriedades e métodos de um objeto
```

---

## Avisos importantes

- **Leia antes de executar.** Alguns comandos alteram o sistema (remover arquivos, parar serviços).
- **Teste em ambiente seguro**, como uma máquina virtual, quando o script avisar.
- Use `-WhatIf` para simular um comando antes de executá-lo de verdade.

---

## Contribuições e dúvidas

Encontrou um erro de digitação ou tem uma sugestão? Abra uma **[Issue](../../issues)** ou envie um **Pull Request**. Dúvidas sobre o conteúdo podem ser levadas para a aula.

---

## Autoria

Material desenvolvido para a disciplina de **Gestão de Sistemas Operacionais** · Curso de **Informática para Internet** · 1º módulo.

**Autor:** [@Rhuan-Ribeiro](https://github.com/Rhuan-Ribeiro)

---

<div align="center">

Se este material te ajudou, deixe uma estrela no repositório.

</div>
