#Persistent
SetTitleMatchMode, 3 ; Window title must match "ANOTHER EDEN" exactly
x = 0
IfWinExist, ANOTHER EDEN
{
WinActivate ; Open the ANOTHER EDEN window

;The following code is example code and can be removed when you're creating your own macro 
WalkLeft(1000)
WalkRight(1500)
WalkDownRight(200)
}

WalkRight(b)
{
	send {d down }
	sleep b
	send {d up}
	return
}

WalkLeft(a)
{
	send {a down }
	sleep a
	send {a up}
	return
}

WalkLeftDown(f)
{
	send {s down }
	send {a down}
	sleep f
	send {a up}
	send {s up}
	return
}

WalkRightDown(e)
{
	send {s down }
	send {d down}
	sleep e
	send {d up}
	send {s up}
	return
}

WalkLeftUp(d)
{
	send {w down }
	send {a down}
	sleep s
	send {a up}
	send {w up}
	return
}
WalkRightUp(c)
{
	send {w down }
	send {d down}
	sleep d
	send {d up}
	send {w up}
	return
}


Battle(enemy)
{
sleep 5000
if (enemy == horror) {
	send {a down}
	sleep 50
	send {a up}
	sleep 5000
	loop, 10 {
		send {space down}
		sleep 500
		send {space up}
	}
	return
}
else if (enemy == regular) {
	sleep 3000
	send {1 down}
	sleep 50
	send {1 up}
	sleep 50
	send {3 down}
	sleep 50
	send {3 up}
	sleep 50
	send {a down}
	sleep 50
	send {a up}
	sleep 4000
	loop, 7 {
		send {space down}
		sleep 500
		send {space up}
	}
}
else if (enemy == finalBoss) {
	sleep 11000
	send {a down}
	sleep 50
	send {a up}
	sleep 6000
	loop, 20 {
	send {space down}
	sleep 1000
	send {space up}
	}
	return
}
}

F12::ExitApp 