Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "curl -o C:\\tmp\\rick.jpeg https://i.imgur.com/VmlIAvj.jpeg", 0, True
objShell.Run "rundll32 url.dll,FileProtocolHandler https://www.youtube.com/watch?v=dQw4w9WgXcQ", 0, True

dim wshShell
dim sUserName

Set wshShell = WScript.CreateObject("WScript.Shell")
sUserName = wshShell.ExpandEnvironmentStrings("%USERNAME%")

Set oShell = CreateObject("WScript.Shell")
Set oFSO = CreateObject("Scripting.FileSystemObject")

sWinDir = oFSO.GetSpecialFolder(0)
sWallPaper = "C:\tmp\rick.jpeg"

' update in registry
oShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", sWallPaper

' let the system know about the change
oShell.Run "%windir%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True