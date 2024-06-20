$script_path=Get-Location
$script_path="$script_path\Scripts"
Write-Output "$script_path"
$env:Path = "$script_path;" + $env:Path

Import-Module PSColor