# Load prompt config
# oh-my-posh --init --shell pwsh --config C:\Users\kimic\AppData\Local\Programs\oh-my-posh\themes/theempty.omp.json | Invoke-Expression
# oh-my-posh --init --shell pwsh --config C:\Users\kimic\AppData\Local\Programs\oh-my-posh\themes/kushal.omp.json | Invoke-Expression
# oh-my-posh --init --shell pwsh --config C:\Users\kimic\AppData\Local\Programs\oh-my-posh\themes/tokyonight_storm.omp.json | Invoke-Expression
oh-my-posh --init --shell pwsh --config C:\Users\kimic\AppData\Local\Programs\oh-my-posh\themes/theempty.star.omp.json | Invoke-Expression

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

# On command 'vs' open Visual Studio project in current folder
function vs {
    Get-ChildItem *.sln -Recurse | Invoke-Item
}
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
