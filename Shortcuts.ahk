msg1 := "Press F1 to launch Google Chrome"
msg2 := "Press F2 to launch File Explorer"
msg3 := "Press F3 to launch Terminal"
msg4 := "Press F4 to launch Notepad"
msg5 := "Press F5 to launch Powershell"
msg6 := "Press F6 to show this POP UP again"
msg7 := "Press F7 to launch Task Manager"
msg8 := "Press Scroll Lock to open up Instagram"
msg9 := "Press Pause to open up ChatGPT"
msg10:= "Press Print Scrn to open up Youtube"
msg11:= "Press Numpad Del to open up 10 Fast Fingers"


popup(){
	global msg1, msg2, msg3, msg4, msg5, msg6, msg7, msg8, msg9, msg10
	MsgBox, %msg1%`n%msg2%`n%msg3%`n%msg4%`n%msg5%`n%msg6%`n%msg7%`n%msg8%`n%msg9%`n%msg10%
}


f1::
	If WinExist("ahk_exe chrome.exe") {
		WinActivate
	}
	else {
		Run, chrome.exe
	}
return

f2::
	If WinExist("ahk_exe CabinetWClass") {
		WinActivate
	}
	else {
		Run, explorer.exe
	}
return

f3::
	If WinExist("ahk_exe wt.exe") {
		WinActivate
	}
	else {
		Run, wt.exe
	}
return

f4::
    If WinExist("ahk_exe notepad.exe") {
        WinActivate
    }
    else {
        Run, %A_WinDir%\System32\notepad.exe
    }
return


f5::
	If WinExist("ahk_exe powershell.exe") {
		WinActivate
	}
	else {
		Run, powershell.exe
	}
return

f6::
	popup()
return
f7::
	If WinExist("ahk_exe taskmgr.exe") {
		WinActivate
	}
	else {
		Run, taskmgr.exe
	}
return
ScrollLock::
	Run, chrome.exe instagram.com
return
Pause::
	Run, chrome.exe chatgpt.com/?model=5
return
PrintScreen::
	Run, chrome.exe youtube.com
return
NumpadDel::
	Run, chrome.exe 10fastfingers.com/typing-test
return
