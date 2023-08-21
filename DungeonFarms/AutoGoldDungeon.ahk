#Persistent
SetTitleMatchMode, 3 ; Window title must match "ANOTHER EDEN" exactly
x = 0
IfWinExist, ANOTHER EDEN
{ 
WinActivate
sleep 500
send {f down}
sleep 50
send {f up}
sleep 3000
click 1390, 180
sleep 1000
click 900, 550
MsgBox, click OK after choosing your team
sleep 2000
click 1130, 888
sleep 6000

MsgBox, 4132, , Are you on the right side of the map?, 
sleep 8000
IfMsgBox Yes 
{
	WalkLeftDown(3700)
	WalkRightDown(2800)
	WalkLeft(2000)
	Battle(regular) 
	WalkleftUp(2500)
	WalkRight(1500)
	Battle(regular)
	WalkLeft(3000)
	Battle(regular)
	WalkLeftDown(2000)
	WalkLeft(8000) 
	Battle(boss)
	WalkLeft(4000)
	WalkRightUp(2100)
	WalkLeftUp(2000)
	WalkLeft(1000)
	Battle(regular)
	WalkRight(5000)
	Battle(regular)
	WalkRightUp(4500)
	WalkLeft(4000)  
	Battle(regular)
	WalkLeftUp(2600)
	WalkRight(3000)
	Battle(regular) 
	WalkRightUp(2500)
	WalkLeft(5000)
	Battle(regular)
	WalkLeft(8000)
	battle(boss)
	WalkLeft(5000)
	WalkRightDown(5000)
	Battle(regular)
	WalkRightDown(3000)
	WalkLeft(8000)
	Battle(regular)
	WalkLeft(7000)
	}
else {
	sleep 1000
	WalkRightDown(7000)
	WalkLeft(5000)
	sleep 2000
	Battle(boss)
	WalkLeft(2000)
	WalkRightUp(3000)
	Battle(regular)
	WalkRight(4000)
	Battle(regular)
	WalkLeftDown(100)
	WalkRight(5000)
	Battle(regular)
	WalkRightUp(3000)
	WalkLeftUp(3000)
	WalkRightUp(2000)
	WalkLeft(4000)
	Battle(regular)
	WalkLeftUp(2200)
	WalkRight(4000)
	Battle(regular)
	WalkRightUp(6000)
	WalkLeft(7000)
	Battle(regular)
	WalkLeft(7000)
	Battle(boss)
	WalkLeft(3000)
	WalkRightDown(4000)
	Battle(regular)
	WalkLeftDown(4000)
	WalkRight(6000)
	Battle(regular)
	WalkRightDown(3000)
	Battle(regular)
	WalkLeft(5000)
	Battle(regular)
	WalkRightUp(3000)
	WalkLeft(7000)
	}

Send {f down}
sleep 50
Send {f up} 
sleep 3000
WalkLeft(250)
sleep 500
Send {f down}
sleep 100
Send {f up}
sleep 500
Send {space down}
sleep 200
Send {space up}
sleep 100
Walkleft(4000)
Send {y down}
sleep 50
Send {y up}
Battle(boss)
reload
}


WalkRight(x)
{
	send {d down }
	sleep x
	send {d up}
	return
}

WalkLeft(y)
{
	send {a down }
	sleep y
	send {a up}
	return
}

WalkLeftDown(a)
{
	send {s down }
	send {a down}
	sleep a
	send {a up}
	send {s up}
	return
}

WalkRightDown(b)
{
	send {s down }
	send {d down}
	sleep b
	send {d up}
	send {s up}
	return
}

WalkLeftUp(c)
{
	send {w down }
	send {a down}
	sleep c
	send {a up}
	send {w up}
	return
}
WalkRightUp(d)
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
if (enemy == boss) {
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