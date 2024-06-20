# Add script directory to path
$script_path=Get-Location
$script_path="$script_path\Scripts"
$env:Path = "$script_path;" + $env:Path

# Import Modules
Import-Module PSColor

# Prompt
function prompt {
	"[$([char]27)[32m$([Environment]::UserName)$([char]27)[0m" + "@" + "$([char]27)[32m$((Get-ChildItem  Env:Computername).Value)$([char]27)[0m" + "$([char]27)[34m:" + "$((Get-Location).Path.Split("\")[-1])" + "$([char]27)[0m]> "
}