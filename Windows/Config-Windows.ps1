# params:
#   config -> apply configes file into filesystem
#   get-config -> get current configured 

$param=$args[0]
if ($param -eq "config") {
	# Visual Code Editor
	Copy-Item .\vscode\settings.json  ~\AppData\Roaming\Code\User\settings.json -Force
	Copy-Item .\vscode\keybindings.json  ~\AppData\Roaming\Code\User\keybindings.json -Force
}
if ($param -eq "get-config") {
	# Visual Code Editor
	Copy-Item ~\AppData\Roaming\Code\User\settings.json .\vscode\settings.json -Force
	Copy-Item ~\AppData\Roaming\Code\User\keybindings.json .\vscode\keybindings.json -Force
}
else {
	Write-Output "Error: Command not found"
}