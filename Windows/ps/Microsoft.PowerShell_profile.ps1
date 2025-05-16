# neovim config path
$env:XDG_CONFIG_HOME = "$Home\.config\"
Set-Alias spf $env:UserProfile\.config\superfile\run.bat

# enter %PSStyle to see all colors
$PSStyle.FileInfo.Directory = $PSStyle.Foreground.Blue

Set-PSReadLineOption -EditMode Vi
Set-PSReadLineKeyHandler -Chord Tab -Function Complete

$env:EDITOR = "code"

function prompt {
	write-host "[" -ForegroundColor Gray -NoNewline
	write-host "$env:UserName" -ForegroundColor Cyan -NoNewline
	write-host "] " -ForegroundColor Gray -NoNewline
	write-host $ExecutionContext.SessionState.Path.CurrentLocation -ForegroundColor Magenta
	return "> "
}