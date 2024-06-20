# Linux configs
Run `bash dotfiles/linux/config-machine.sh`.

# Windows configs
In order to run scripts run: `PS C:\> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

To apply configs run the script: `PS C:\> dotfiles/windows/Config-Windos.ps1 set-config`. 

If configs on local machine changed run: `PS C:\> dotfiles/windows/Config-Windos.ps1 set-config` and commit changes.