
# Aliases
Set-Alias ll ls
Set-Alias j z

# To install hack font
# oh-my-posh font install hack


# Prompt Init 
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/space.omp.json" | Invoke-Expression

# Import Module & Configuration
Import-Module Terminal-Icons
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Function
function which($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
