$script_path=Get-Location
$script_path="$script_path\Scripts"
Write-Output "$script_path"
$env:Path = "$script_path;" + $env:Path

oh-my-posh --init --shell pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/1_Shell.omp.json | Invoke-Expression
Import-Module PSColor
