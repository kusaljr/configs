# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt Paradox


# Load prompt config
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName}
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'kusaljr.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl-d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl-f' -PSReadlineChordReverseHistory 'Ctrl-r'


# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
