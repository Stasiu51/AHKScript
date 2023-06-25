#Requires AutoHotkey v2.0

+#!r::Reload

; Macros
pwd1_path := "C:\Users\Stasiu Wolanski\Projects\AutoHotkey\Data\pwd1.txt"
pwd2_path := "C:\Users\Stasiu Wolanski\Projects\AutoHotkey\Data\pwd2.txt"
:X*:/p1::Send(FileRead(pwd1_path))
:X*:/p2::Send(FileRead(pwd2_path))
:*:/em::wolanski58@gmail.com
:*:/cem::sw902@cam.ac.uk

; General shortcuts
+CapsLock::SetCapsLockState(!GetKeyState("CapsLock", "T"))
CapsLock::Esc
NumpadDiv::Send("^{Backspace}")
NumpadMult::Send("^f")
#!`;::Send("!{F4}")
#!Enter::WinMaximize "A"

; Spotify shortcuts
#!s::{
    If WinExist("ahk_exe spotify.exe"){
        WinActivate("ahk_exe spotify.exe")
    } Else {
        Run("C:\Users\Stasiu Wolanski\AppData\Roaming\Spotify\spotify.exe")
    }
}
#HotIf WinExist("ahk_exe spotify.exe")
!#p::Send("{Media_Play_Pause}")
!#o::Send("{Media_Prev}")
!#[::Send("{Media_Next}")
#HotIf

; Chrome shortcuts
#!c::{
    If WinExist("ahk_exe chrome.exe"){
        WinActivate("ahk_exe chrome.exe")
    } Else {
        Run("chrome.exe")
        Sleep(500)
        Send("^l")
    }
}
#HotIf WinActive("ahk_exe chrome.exe")
NumpadEnter::Send("^t")
NumpadAdd::Send("^{Tab}")
NumpadSub::Send("+^{Tab}")

; Type in bar, both numlock and not
Numpad0::Send("^l")
NumpadIns::Send("^l")

Numpad0 & NumpadDot::Send("^w")
NumpadIns & NumpadDel::Send("^w")
#HotIf

; VPN Shortcuts
#!v::{
Run('"C:\Program Files\Private Internet Access\piactl.exe" set region dedicated-uk-london-191.101.34.4',,"Hide")
Run('"C:\Program Files\Private Internet Access\piactl.exe" connect',,"Hide")
}
^#!v::{
Run('"C:\Program Files\Private Internet Access\piactl.exe" set region uk-london',,"Hide")
Run('"C:\Program Files\Private Internet Access\piactl.exe" connect',,"Hide")
}
+#!v::{
Run('"C:\Program Files\Private Internet Access\piactl.exe" disconnect',,"Hide")
}