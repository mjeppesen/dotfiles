; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

;#z::Run www.autohotkey.com

;^!n::
;IfWinExist Untitled - Notepad
	WinActivate
;else
	Run Notepad
;return


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

CapsOn=false

Capslock::
;suspend to prevent calling esc
Suspend on
Send, {ESC}
Suspend off
return

Esc::
;use global variable to keep track of state
;if CapsOn = false
;{
;CapsOn = true
;SetCapsLockState, on
;}
;else
;{
;CapsOn = false

SetCapsLockState, off
Suspend on
Send, {ESC}
Suspend off

;}
return

^j::
; CTRL-J toggles between MAtlab and VIM
IfWinActive, ahk_class SunAwtFrame
{
    WinActivate, ahk_class Vim
    
} else {
WinActivate, ahk_class SunAwtFrame
}

^k::
; execute clipboard in Matlab
IfWinActive, ahk_class Vim
{
	WinActivate, ahk_class SunAwtFrame	
	Send, ^0^v{Enter}
    	WinActivate, ahk_class ahk_class Vim
} else if WinActive, ahk_class SunAwtFrame	
{
	Send, ^0^v{Enter}
} 
Return


; Note: this needs me to vnoremap ^e to y (or something can't quite remember)
; so that vim does the yank
; Note the # means that the key works normally for other programs
^l::
#IfWinActive, ahk_class Vim
{
	;Suspend on
	;Send, {Esc}
	;Suspend off
	Send, ^e^k
}
Return

^i::
#IfWinActive, ahk_class Vim
{
  ;Suspend on
  ;Send, {Esc}
  ;Suspend off
  Send, yiw^k
}
Return
