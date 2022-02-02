# Load prompt config
oh-my-posh --init --shell pwsh --config C:\Users\kimic\AppData\Local\Programs\oh-my-posh\themes/theempty.omp.json | Invoke-Expression

#Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PsReadLineOption -PredictionViewStyle ListView

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias clr clear 
