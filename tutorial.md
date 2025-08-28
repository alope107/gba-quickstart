# Getting Started
1. If you don't already have one, make a GitHub account and sign in. There should be a "Sign Up" button at the top right of this page.
1. In a new tab, go to https://github.com/alope107/gba-quickstart
1. Click the green "Use this template" button, then select "Create a new repository"
1. Name the repository what you want to call your game, then click "Create repository"
1. Once the repository is created, click the green "Code" button. In the pop-up switch to "Codespaces" and click "Create codespace on main"
1. The Codespace will open and start to build. The first time you do this for a repository it will take a while: approximately 2-5 minutes. It'll be faster when you re-open the Codespace later. If you're interested you can click on the blue "Building codespace" link on the bottom right to see the logs as it builds.
1. Once it's built and the setup scripts have run, a new terminal will open at the bottom of the screen. It should talk about executing a task, and will end with /workspaces/NAME-OF-YOUR-GAME where the name is filled in based on what you named the repository. There will also be a list of files that pop up on the left. The folder most relevant is "game". It comes preopulated with a skeleton for your first game. Click the arrow next to game to expand it and see what's inside.
1. Now we'll move your terminal's location to be in that game directory. In the terminal, type `cd game` and hit enter.
1. To be able to play any game, we need to first compile it into a ROM. You do this by changing into the game's directory and running `make`. You've already moved with cd, so type `make` into the terminal and hit enter. This will take a bit the first time because it needs to compile everything, but will be faster when you make changes in the future, since it will only need to compile what's been changed. If it's successful, you should see a `game.gba` file pop up under the game directory. There will be a few other things that pop up too, we can ignore them for now.
1. Next, we'll try running your game. On the left file picker, click on `tools.md`. Then, click on the "Emulator" link to open the web GBA emulator. It should open in a new tab.
1. Your .gba file should be listed. Click it and the emulator should start running the demo game! Use the arrow keys to move around.
1. Once you've had your fun, come back to the codespace tab. On the left file select, choose game/src/Main.cpp. This is where the game logic is. We'll be making two changes: changing the background color and the speed at which the character moves.
1. Find the line where the backdrop color is set. Instead of setting the color to `(0, 0, 0)` (black), change it so that it's set to `(31, 0, 0)` (red).
1. Find the line where the speed is set. Change the speed from 1.5 to 5.5.
1. We have made changes to our game, so we need to recompile. Check that the terminal is still in the `game` directory (`game` should show up as the end of the path). Type `make` to rebuild the game with your new changes. If it fails, address any of the compilation issues that come up.
1. Go back to the emulator tab and refresh and select your rom again. If you have already closed the tab, you can always reopen it by going to `tools.md` and clicking the Emulator link.
1. You should see your new changes!
1. Add/Commit/Push
1. Open LibreSpite
1. Edit sprite
1. Rebuild
1. Refresh
1. Resources
