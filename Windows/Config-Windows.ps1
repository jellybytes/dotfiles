# params:
#   set -> apply configes file into filesystem
#   get -> get current config files

$param=$args[0]
if ($param -eq "set") {
	# vscode
	# Copy-Item .\vscode\settings.json  ~\AppData\Roaming\Code\User\settings.json -Force
	# Copy-Item .\vscode\keybindings.json  ~\AppData\Roaming\Code\User\keybindings.json -Force
	# PowerShell
	Copy-Item .\ps\Microsoft.PowerShell_profile.ps1  ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 -Force
	Copy-Item .\ps\Microsoft.PowerShell_profile.ps1  ~\Documents\PowerShell\Microsoft.VSCode_profile.ps1 -Force
	Write-Output "PowerShell Profile configured!"
	# glazeWM
	Copy-Item .\glazewm\config.yaml ~\.config\glazewm\config.yaml -Force
	# superfile
	Copy-Item .\superfile\config.toml ~\.config\superfile\config.toml -Force
	# yasb
	Copy-Item .\yasb\config.yaml ~\.config\yasb\config.yaml -Force
	Copy-Item .\yasb\styles.css ~\.config\yasb\styles.css -Force
	# starship
	Copy-Item .\starship\starship.toml ~\.config\starship\starship.toml -Force

	Write-Output "machine configured!"
}
elseif ($param -eq "get") {
	# Copy-Item ~\AppData\Roaming\Code\User\settings.json .\vscode\settings.json -Force
	# Copy-Item ~\AppData\Roaming\Code\User\keybindings.json .\vscode\keybindings.json -Force
	# Power Shell
	Copy-Item ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 .\ps\Microsoft.PowerShell_profile.ps1 -Force
	Copy-Item ~\Documents\PowerShell\Microsoft.VSCode_profile.ps1 .\ps\Microsoft.VSCode_profile.ps1 -Force
	# glazeWM
	Copy-Item ~\.config\glazewm\config.yaml .\glazewm\config.yaml -Force
	# superfile
	Copy-Item ~\.config\superfile\config.toml .\superfile\config.toml -Force
	# yasb
	Copy-Item ~\.config\yasb\config.yaml .\yasb\config.yaml -Force
	Copy-Item ~\.config\yasb\styles.css .\yasb\styles.css -Force
	# starship
	Copy-Item ~\.config\starship\starship.toml .\starship\starship.toml -Force

	Write-Output "all configs copied!"
}
else {
	Write-Output "Error: Command not found"
}