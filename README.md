# Autohotkey shorcuts
This script transforms the CapsLock key into something more useful than its normal use, by adding the possibility to use it like a "shift" or "control" key, and create personalized shorcuts based on that. I use it to be able to type some symbols that I use a lot in a easier way, but feel free to change the script the way you want. 

You can still turn on the normal CapsLock behaviour by using the `Ctrl + CapsLock` shorcut, also. 

Furthermore, this script also implements *key chords*, just like in vscode, to trigger some desired actions. This is possible due to the great library that is included here as submodule, so thanks to `tylerjcw` for that!

# How to install everything
1. Install Autohotkey v2 (it has to be v2), from this link: https://www.autohotkey.com.

2. Clone this repository (or just download the zip folder and unzip it) somewhere in your computer.

3. Press the keys `Windows + R` to open the *run* window. Then type `shell:startup` and click OK. This will take you to the folder that is run by Windows everytime that you turn your computer on.

4. Create a shortcut from the file `keys.ahk` and paste it into that startup folder.

5. Done! Every time that you turn your computer on now, the shorcuts should be loaded automatically. If you want to run it manually, just right click on the `keys.ahk` file and select `run script`. 
