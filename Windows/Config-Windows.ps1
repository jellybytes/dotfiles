# params:
#   set -> apply configes file into filesystem
#   get -> get current config files

$param=$args[0]
if ($param -eq "set") {
	# vscode synced via account
	# Copy-Item .\vscode\settings.json  ~\AppData\Roaming\Code\User\settings.json -Force
	# Copy-Item .\vscode\keybindings.json  ~\AppData\Roaming\Code\User\keybindings.json -Force
	# PowerShell
	Copy-Item .\ps\Microsoft.PowerShell_profile.ps1  ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 -Force
	# glazeWM
	Copy-Item .\glazewm\config.yaml ~\.config\glazewm\config.yaml -Force
	# superfile
	Copy-Item .\superfile\config.toml ~\.config\superfile\config.toml -Force
	# yasb
	Copy-Item .\yasb\config.yaml ~\.config\yasb\config.yaml -Force
	Copy-Item .\yasb\styles.css ~\.config\yasb\styles.css -Force
	# starship
	Copy-Item .\starship\starship.toml ~\.config\starship\starship.toml -Force
	# wt
	Copy-Item .\wt\settings.json ~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -Force

	Write-Output "machine configured!"
}
elseif ($param -eq "get") {
	# Power Shell
	Copy-Item ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 .\ps\Microsoft.PowerShell_profile.ps1 -Force
	# glazeWM
	Copy-Item ~\.config\glazewm\config.yaml .\glazewm\config.yaml -Force
	# superfile
	Copy-Item ~\.config\superfile\config.toml .\superfile\config.toml -Force
	# yasb
	Copy-Item ~\.config\yasb\config.yaml .\yasb\config.yaml -Force
	Copy-Item ~\.config\yasb\styles.css .\yasb\styles.css -Force
	# starship
	Copy-Item ~\.config\starship\starship.toml .\starship\starship.toml -Force
	# wt
	Copy-Item ~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json .\wt\settings.json

	Write-Output "all configs copied!"
}
else {
	Write-Output "Error: Command not found"
}