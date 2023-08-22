# Another Eden Auto Fisher by NoxNecro

This is an AutoHotkey program developed by NoxNecro (me) for automating fishing in Another Eden. The program aims to simplify the fishing process by automatically performing various actions, allowing you to catch fish while afk.

## How It Works

The Auto Fisher operates through the following steps:

1. When activated, the program checks if Another Eden is currently in the foreground. If not, it switches to Another Eden.
2. The program checks whether you are currently at a fishing spot.
   - If you are not in a fishing spot, it checks if you are in battle. If you are, the program fights the battle and then restarts itself.
   - If you are not in a fishing spot and not in battle, the program enters the fishing spot.
3. If you are in a fishing spot, the program initiates the fishing process.
4. The program randomly selects one of five spots in the fishing pond to click on. By quadrisecting the fishing area, the program maximizes the fish-catching efficiency without missing too many fish*.
5. When a fish bites, the program automatically reels it in.
6. The program detects if a fish has been caught and clicks on any popup windows that appear.
7. The program restarts, preparing for the next fish to be caught.

## Additional Features

Only **AutoFish** has the following additional features:
1. **RandomBuySell Sequence**: There is a 1/50 chance for the program to activate this sequence. It automatically takes the user to Kira Beach, where it sells all currently caught fish and purchases 50 "Snitch Sardines." Note that this costs 400 Kamasu points (50 * 8), so ensure you have sufficient points or adjust the bait amount accordingly. After buying the bait, the program randomly selects one of four locations to return to**: Vasu Mountains, Elzion Airport, Lake Tiilen, or Acteul. Once back at a fishing spot, the program restarts.
2. **Auto-Restart**: After 180 seconds (3 minutes), the program automatically restarts itself. This feature prevents potential bugs from disrupting your AFK fishing as the program should never be active for more than 3 minutes without a restart.

**AutoFish** & **SimpleFisher** have the following feature:
1. The program will exit and enter the current pond with a 1/40 chance, giving the area a chance to refresh if it has been 30 minutes.

## Customizability

If you possess some familiarity with AutoHotkey scripting, you'll find that the program is very easily customizable. The code has been designed with simplicity in mind, making it easy for users to make adjustments. The code is written in V1, so keep this in mind if you decide to make any changes.

## Installation

Check out [this guide](https://github.com/NoxNecro/Another-Eden-AutoHotkey/blob/main/README.md#installation) in the main README, or alternatively go to the latest releases [here](https://github.com/NoxNecro/Another-Eden-AutoHotkey/releases/latest).

## Issues

If you encounter any problems while using the program, feel free to open an issue on the [GitHub repository](https://github.com/NoxNecro/Another-Eden-AutoHotkey/issues). Your feedback is welcome and can help improve the program for everyone.

Happy AFK fishing!

## Showcase
<a href="http://www.youtube.com/watch?feature=player_embedded&v=zuKLEm0CVoI
" target="_blank"><img src="http://img.youtube.com/vi/zuKLEm0CVoI/0.jpg" 
alt="Automatic fishing showcase" width="240" height="180" border="10" /></a>

**Disclaimer**: This program is provided as-is, and the developer is not responsible for any consequences that may arise from its use. Use at your own discretion.
