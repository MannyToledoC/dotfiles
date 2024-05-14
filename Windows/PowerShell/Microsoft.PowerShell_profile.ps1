oh-my-posh init pwsh | Invoke-Expression
del alias:ls -Force
function ls-test {dir | ft name}
Set-Alias -Name ls -Value ls-test
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/neko.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "`~/.neko-override.omp.json" | Invoke-Expression
