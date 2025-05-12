# neovim config path
$env:XDG_CONFIG_HOME = "$Home\.config\"
Set-Alias spf $env:UserProfile\.config\superfile\run.bat

# enter %PSStyle to see all colors
$PSStyle.FileInfo.Directory = $PSStyle.Foreground.Blue

$env:EDITOR = "code"

function prompt {
	write-host "" -ForegroundColor Gray -NoNewline
	write-host "$env:UserName" -ForegroundColor Cyan -NoNewline
	write-host "@" -ForegroundColor Green -NoNewline
	write-host "$env:COMPUTERNAME" -ForegroundColor Cyan  -NoNewline
	write-host " " -ForegroundColor Gray -NoNewline
	write-host $ExecutionContext.SessionState.Path.CurrentLocation -NoNewline
	return "\> "
}