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

The program includes two optional sub-processes that can be removed if desired:

1. **RandomBuySell Sequence**: There is a 1/50 chance for the program to activate this sequence. It automatically takes the user to Kira Beach, where it sells all currently caught fish and purchases 50 "Snitch Sardines." Note that this costs 400 Kamasu points (50 * 8), so ensure you have sufficient points or adjust the bait amount accordingly. After buying the bait, the program randomly selects one of four locations to return to**: Vasu Mountains, Elzion Airport, Lake Tiilen, or Acteul. Once back at a fishing spot, the program restarts.
2. **Auto-Restart**: After 180 seconds (3 minutes), the program automatically restarts itself. This feature prevents potential bugs from disrupting your AFK fishing as the program should never be active for more than 3 minutes without a restart.

## Customizability

If you possess some familiarity with AutoHotkey scripting, you'll find that the program is very easily customizable. The code has been designed with simplicity in mind, making it easy for users to make adjustments. The code is written in V1, so keep this in mind if you decide to make any changes.

## Issues and Contributions

If you encounter any problems while using the program, feel free to open an issue on the [GitHub repository](https://github.com/NoxNecro/Another-Eden-AutoHotkey/issues). Your feedback is welcome and can help improve the program for everyone.

Happy AFK fishing!

**Disclaimer**: This program is provided as-is, and the developer is not responsible for any consequences that may arise from its use. Use at your own discretion.
