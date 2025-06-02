Invoke-Expression (&starship init powershell)

# Environment variables
$env:EDITOR = "code"
$env:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
$env:XDG_CONFIG_HOME = "$Home\.config\"

Function fConf {
	cd ~\.config\
}
Set-Alias cdc fConf

Function fCdRepos {
	cd ~\Documents\repos\
}
Set-Alias cdr fCdRepos

Function fCdReposWSL {
	wsl --cd ~/repos
}
Set-Alias cdrw fCdReposWSL

# enter %PSStyle to see all colors
$PSStyle.FileInfo.Directory = $PSStyle.Foreground.Blue

Set-PSReadLineOption -EditMode Vi
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -BellStyle None