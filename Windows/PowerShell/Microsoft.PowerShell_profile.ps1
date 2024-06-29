#/ -- PowerShell profile JellyBytes 20_06_23 -- /#

# Add script directory to path
$script_path="C:\Users\$env:username\Documents\WindowsPowerShell\Scripts"
$env:Path = "$script_path;" + $env:Path

# Colors
# Install with: Install-Module PSColor
Import-Module PSColor
$global:PSColor = @{
    File = @{
        Default    = @{ Color = 'White' }
        Directory  = @{ Color = 'Cyan'}
        Hidden     = @{ Color = 'DarkGray'; Pattern = '^\.' } 
        Code       = @{ Color = 'Magenta'; Pattern = '\.(java|c|cpp|cs|js|css|html)$' }
        Executable = @{ Color = 'Red'; Pattern = '\.(exe|bat|cmd|py|pl|ps1|psm1|vbs|rb|reg)$' }
        Text       = @{ Color = 'Red'; Pattern = '\.(txt|cfg|conf|ini|csv|log|config|xml|yml|md|markdown)$' }
        Compressed = @{ Color = 'Green'; Pattern = '\.(zip|tar|gz|rar|jar|war)$' }
    }
    Service = @{
        Default = @{ Color = 'White' }
        Running = @{ Color = 'DarkGreen' }
        Stopped = @{ Color = 'DarkRed' }     
    }
    Match = @{
        Default    = @{ Color = 'White' }
        Path       = @{ Color = 'Cyan'}
        LineNumber = @{ Color = 'Yellow' }
        Line       = @{ Color = 'White' }
    }
	NoMatch = @{
        Default    = @{ Color = 'White' }
        Path       = @{ Color = 'Cyan'}
        LineNumber = @{ Color = 'Yellow' }
        Line       = @{ Color = 'White' }
    }
}

# Set prompt format and colors [user@computer:folder]>
function prompt {
	"$([char]27)[0m[$([char]27)[0m" + # [
	"$([char]27)[32m$env:username$([char]27)[0m" + # user
	"$([char]27)[0m@$([char]27)[0m" + # @
	"$([char]27)[32m$env:computername$([char]27)[0m" + # computer
	"$([char]27)[35m:$([char]27)[0m" + # :
	"$([char]27)[34m$((Get-Location).Path.Split("\")[-1])" + # folder
	"$([char]27)[0m]$([char]27)[0m" + # ]
	"$([char]27)[0m>$([char]27)[0m" # >
}