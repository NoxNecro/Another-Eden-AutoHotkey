#Persistent
SetTitleMatchMode, 3
IfWinExist, ANOTHER EDEN
{
WinActivate
	loop {
			; Press and hold the space bar for after battle skip
			Send, {Space down}
			Sleep, 250
			Send, {Space up}

			; Walk left to right
			Send, {Right down}
			Sleep, 1000
			Send, {Right up}
			Sleep, 200

			; Stop and press the attack button ("q" key)
			Send, {q down}
			Sleep, 100
			Send, {q up}
			Sleep, 100

			; Walk right to left
			sleep 100
			Send, {Left down}
			Sleep, 1000
			Send, {Left up}
			Sleep, 200
			}
}

F12::ExitApp
