; Finds open browser window player youtube, skips +-5 seconds and returns to last active window
SetTitleMatchMode, Regex
WinGet, ActiveID, ID, A
#IfWinExist YouTube
^'::
	WinActivate, -\sYouTube\s-*.*
	Send, {Right}
	WinActivate, ahk_id %ActiveID%
	Return
^;::
	WinActivate, -\sYouTube\s-*.*
	Send, {Left}
	WinActivate, ahk_id %ActiveID%
	Return
#IfWinExist