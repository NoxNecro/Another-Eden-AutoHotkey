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
	PixelGetColor, sestaHair, 117, 872
	maxRepeats := 120
	Checks := 0
	sleep 1000

	if (leaveButton != 0x000000) {
		sleep 7000
		if (sestaHair = 0xFFFFFF) { ; if in battle
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




	RandomSellBuy:
	random, sellBuy, 1, 50
	if (sellBuy = 1) {
		sleep 3000
		click 1595, 132 ; teleport button
		sleep 2500
		loop, 50 {
		send {WheelDown 2}
		sleep 50
		}
		sleep 500
		click 1200, 300 ; kira beach
		sleep 500
		click 400, 930 ; go button	
		sleep 5000
		click 1330, 375 ; sell button
		sleep 2000
		click 
		sleep 100
		click 
		sleep 100
		click
		sleep 500
		click
		sleep 500
		click
		sleep 500
		click 850, 930 ; sell fish ok button
		sleep 2000
		loop, 50 {
		send {WheelDown 2}
		sleep 50
		}
		sleep 500
		click 1100, 475 ; Snitch Sardines
		sleep 250
		Loop, 50 {
			click 550, 700 ; Fish amount up arrow
			sleep 50
		}
		click 350, 900 ; Buy
		sleep 100
		click 1000, 700 ; Confirm buy
		sleep 200
		click 850, 630 ; Purchase complete "ok"
		sleep 500
		send {Escape down}
		sleep 100
		send {Escape up}
		sleep 100
		send {f down}
		sleep 100
		send {f up}
		sleep 1500
		click 1595, 132 ; teleport
		sleep 750
		random, FishingLocation, 1, 4
		if (FishingLocation = 1) {
			sleep 1500
			Loop, 15 {
			send, {WheelDown 2}
			}
			sleep 1000
			click 1200, 240 ; vasu mountains
			sleep 1000
		}
		else if (FishingLocation = 2) {
			click 1200, 700 ; elzion airport
			sleep 1000
		}
		else if (FishingLocation = 3) {
			Loop, 15 {
			send, {WheelDown 2}
			}
			sleep 1000
			click 1200, 400 ;lake tiilen
			sleep 1000
		}
		else if (FishingLocation = 4) {
			Loop, 15 {
			send, {WheelDown 2}
			}
			sleep 1000
			click 1000, 550 ; acteul
			sleep 1000
		}
		click 400, 930 ; go button	
		sleep 5000
		send {f down}
		sleep 100
		send {f up}
		sleep 2000
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