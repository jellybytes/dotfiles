# params:
#   config -> apply configes file into filesystem
#   get-config -> get current configured 

$param=$args[0]
if ($param -eq "set-config") {
	# Visual Code Editor
	Copy-Item .\vscode\settings.json  ~\AppData\Roaming\Code\User\settings.json -Force
	Copy-Item .\vscode\keybindings.json  ~\AppData\Roaming\Code\User\keybindings.json -Force
	# Power Shell
	Copy-Item .\PowerShell\Microsoft.PowerShell_profile.ps1  ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 -Force
	Copy-Item .\PowerShell\Microsoft.PowerShell_profile.ps1  ~\Documents\WindowsPowerShell\Microsoft.VSCode_profile.ps1 -Force

	Write-Output "PowerShell Profile succsessfully set!"
}
elseif ($param -eq "get-config") {
	# Visual Code Editor
	Copy-Item ~\AppData\Roaming\Code\User\settings.json .\vscode\settings.json -Force
	Copy-Item ~\AppData\Roaming\Code\User\keybindings.json .\vscode\keybindings.json -Force
	# Power Shell
	Copy-Item ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 .\PowerShell\Microsoft.PowerShell_profile.ps1   -Force

	Write-Output "PowerShell Profile copied!"
}
else {
	Write-Output "Error: Command not found"
}