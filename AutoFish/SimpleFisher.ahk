#Persistent
SetTitleMatchMode, 3 ; Window title must match "ANOTHER EDEN" exactly
SetTimer, RandomRestart, 180000
CoordMode, pixel, window
CoordMode, mouse, window
IfWinExist, ANOTHER EDEN
{ 
	WinActivate
	sleep 1500
	PixelGetColor, leaveButton, 1591, 127
	PixelGetColor, healthBar, 409, 620
	maxRepeats := 120
	Checks := 0
	sleep 1000

	if (leaveButton != 0x000000) {
		sleep 7000
		if (healthBar = 0xA7F69B) { ; if in battle
			sleep 500
			send {q down}
			sleep 50
			send { q up}
			sleep 5000
			click
			sleep 2000
			click
			sleep 3000
			reload
		}
		else { ; if outside of pond
			sleep 1000
			Send {f down}
			sleep 50
			Send {f up}
			sleep 3000
			PixelGetColor, bottomColor, 674, 893
		}
		
	}
	else { ; if in pond
		sleep 1000
		PixelGetColor, bottomColor, 674, 893
		sleep 750
	}

	RandomInOut: ; 1/25 chance to leave and re-enter pond for if 30 minutes have passed (meaning pond can refresh) but the program hasn't switched location yet
	random, inOut, 1, 25
	if (inOut = 1) {
		click 1500, 924
		sleep 1000
		send {f down}
		sleep 50
		send {f up}
		reload
	}	
		
	RandomSpot:
		sleep 1000
		Random, spot, 1, 5
		spotArray := ["600,450","1000,450","850,550","600,650","1000,650"] ; C:\Users\%Username%\Documents\AutoFish\RandomSpots.png
		splitCoords := StrSplit(spotArray[spot], ",")
		click, % splitCoords[1] "," splitCoords[2]
		GoSub ColorCheck
		return
		
	ColorCheck:	
		loop %maxRepeats%
		{
			PixelGetColor, currentColor, 674, 893
			if (currentColor != bottomColor)
			{
				GoSub ReelFish
				return
			}
			Sleep, 100
		}
		click 1650, 520
		sleep 100
		reload




	ReelFish:
	sleep 100
	click
	sleep 3500
	Loop {
		if (Checks >= 6) {
			break
		}
		PixelGetColor, CheckColor, 1113, 815, RGB
		PixelGetColor, currentColor, 674, 893
		if (CheckColor = 0xECEADE) {
			sleep 500
			click 1092, 752
			sleep 3000
			Checks++
			Checks++
		}
		else if (currentColor == bottomColor) {
			sleep 100
			reload
		}
		else {
			Checks++
			continue
		}
		checks++
		sleep 1000
	}
	sleep 500
	reload
	return


	RandomRestart:
	sleep 1000
	reload
	return

}



F12::ExitApp 