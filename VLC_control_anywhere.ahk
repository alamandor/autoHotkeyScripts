#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Space::
if WinExist("ahk_exe vlc.exe")
	{
	WinActivate, ahk_exe vlc.exe
	Send {Space}
	}
else MsgBox, You need to have VLC open!
return
