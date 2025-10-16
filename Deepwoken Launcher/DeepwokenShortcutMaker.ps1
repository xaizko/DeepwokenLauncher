# DON'T CHANGE THIS UNLESS YOU KNOW WHAT YOU'RE DOING
$BatchFileName = "DeepwokenLauncherScript.bat"
$IconFileName  = "deepwokenlogo.ico"

# Get the directory where this script is located.
$ScriptDir = $PSScriptRoot

# Define the full paths using the script's own directory.
$TargetFile = "$ScriptDir\$BatchFileName"
$IconFile   = "$ScriptDir\$IconFileName"

# Define the path for shortcut
$ShortcutFile = "$ScriptDir\Deepwoken.lnk"

# Create the shell object needed to make shortcuts.
$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($ShortcutFile)

# Set the Shortcut Properties
$Shortcut.TargetPath = $TargetFile
$Shortcut.IconLocation = $IconFile
$Shortcut.WindowStyle = 7
$Shortcut.WorkingDirectory = $ScriptDir

$Shortcut.Save()

Write-Host "Success! The Deep Is Calling"
Write-Host "Drag the shortcut to your desktop if you wish"
Read-Host "Press Enter to exit."