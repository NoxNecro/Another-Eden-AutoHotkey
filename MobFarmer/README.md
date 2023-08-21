# Another Eden Walk Farmer by NoxNecro

This is an AutoHotkey program developed by NoxNecro (me) for automating mob farming in Another Eden. The program aims to farm mobs by automatically performing various actions, allowing you to farm event points or materials while afk.

## How It Works

The Walk Farmer operates through the following steps:

1. Walks Left
2. Walks Right
3. Attacks while walking right and left

Mind blowing, right?

**IMPORTANT**
The default attack button is "a". This is also the button for walking to the left. This means that you gotta change your default attack button to something else (atleast while running this afk farmer.
If you change your attack button to "q" like I did, you won't have to change the program, but if you want to change it to something else you'll have to edit the code.
To change the key change
```
Send, {q down}
Sleep, 100
Send, {q up}
```
"q" in the above line to your attack key.


Also make sure that your attacker can oneshot all enemies to make sure you don't die, and that their attacks cost 0 mp. Otherwise you'll eventually be out of mp after a while of farming.

## Customizability

If you possess some familiarity with AutoHotkey scripting or programming in general, you'll find that the program is very easily customizable. The code has been designed with simplicity in mind, making it easy for users to make adjustments. The code is written in V1, so keep this in mind if you do decide to make any changes.

## Installation

Check out [this guide](https://github.com/NoxNecro/Another-Eden-AutoHotkey/blob/main/README.md#installation) in the main README, or alternatively go to the latest releases [here](https://github.com/NoxNecro/Another-Eden-AutoHotkey/releases/latest).

## Issues

If you encounter any problems while using the program, feel free to open an issue on the [GitHub repository](https://github.com/NoxNecro/Another-Eden-AutoHotkey/issues). Your feedback is welcome and can help improve the program for everyone.

Happy AFK farming!

**Disclaimer**: This program is provided as-is, and the developer is not responsible for any consequences that may arise from its use. Use at your own discretion.
