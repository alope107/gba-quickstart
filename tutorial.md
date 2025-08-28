# Getting Started
## Creating the Codespace
1. If you don't already have one, make a GitHub account and sign in. There should be a "Sign Up" button at the top right of this page.
1. Once your accpunt is created, in a new tab go to https://github.com/alope107/gba-quickstart Keep this tutorial window open for reference.
1. On the quickstart repositor page click the green "Use this template" button, then select "Create a new repository"
1. Name the repository what you want to call your game, then click "Create repository"
1. Once the repository is created, click the green "Code" button. In the pop-up switch to "Codespaces" and click "Create codespace on main"
1. The Codespace will open and start to build. The first time you do this for a repository it will take a while: approximately 2-5 minutes. It'll be faster when you re-open the Codespace later. If you're interested you can click on the blue "Building codespace" link on the bottom right to see the logs as it builds.
## Compiling the sample game
1. Once the Codespace is built and the setup scripts have run, a new terminal will open at the bottom of the screen. It should talk about executing a task, and will end with /workspaces/NAME-OF-YOUR-GAME where the name is filled in based on what you named the repository. There will also be a list of files that pop up on the left. The folder most relevant is "game". It comes preopulated with a skeleton for your first game. Click the arrow next to game to expand it and see what's inside.
1. Now we'll move your terminal's location to be in that game directory. In the terminal, type `cd game` and hit enter.
1. To be able to play any game, we need to first compile it into a ROM. You do this by changing into the game's directory and running `make`. You've already moved with cd, so type `make` into the terminal and hit enter. This will take a bit the first time because it needs to compile everything, but will be faster when you make changes in the future, since it will only need to compile what's been changed. If it's successful, you should see a `game.gba` file pop up under the game directory. There will be a few other things that pop up too, we can ignore them for now.
## Running the sample game
1. Next, we'll try running your game. On the left file picker, click on `tools.md`. Then, click on the "Emulator" link to open the web GBA emulator. It should open in a new tab.
1. Your .gba file should be listed. Click it and the emulator should start running the demo game! Use the arrow keys to move around.
## Making changes to the sample game code
1. Once you've had your fun, come back to the codespace tab. On the left file select, choose game/src/Main.cpp. This is where the game logic is. We'll be making two changes: changing the background color and the speed at which the character moves.
1. Find the line where the backdrop color is set. Instead of setting the color to `(0, 0, 0)` (black), change it so that it's set to `(31, 0, 0)` (red).
1. Find the line where the speed is set. Change the speed from 1.5 to 5.5.
1. We have made changes to our game, so we need to recompile. Check that the terminal is still in the `game` directory (`game` should show up as the end of the path). Type `make` to rebuild the game with your new changes. If it fails, address any of the compilation issues that come up.
1. Go back to the emulator tab and **refresh the page** and select your rom again. If you have already closed the tab, you can always reopen it by going to `tools.md` and clicking the Emulator link.
1. You should see your new changes! Use the arrow keys to see the character zip around.
## Commiting and pushing your changes (IMPORTANT)
1. You've made some valuable changes and it's important to make sure those changes are saved. We will commit and pushyour changes using git to save them IN GITHUB CODESPACES YOU SHOULD COMMIT AND PUSH FREQUENTLY TO AVOID LOSING CHANGES! If you delete a codespace and it has unpushed changes, those are lost forever!
1. If you are familiar with git, you can use your normal command-line workflow to add/commit/push your changes. If you are new to git, you can choose to use the git plugin. On the left of your editor there should be an icon with a couple of circles, one of them blue with a number in it. Click that icon.
1. The sidebar will show that Main.cpp is changed. Hover over it, and click the plus sign that appears to the right of it. It should move to "Staged Changes".
1. Above the top green hilighted commit button, write a short message describing your changes, e.g. "Changed background to red and increased player speed".
1. Click on the Commit button. Then, click on the Sync Changes button that shows up. Click OK if there's an additional popup.
1. Great! You've pushed your changes! Make sure to do this each time you make a new update to your game you want to keep. This will make sure you have your changes saved, even if you delete the codespace.
## Editing a game sprite
1. Next, we'll be editing the player sprite. Click on the icon with the two pieces of paper on the left bar to go back to the file select. Choose the `tools.md` again, and this time open up the LibreSprite Sprite Editor. This should open LibreSprite in a new window.
1. Click on "Open File". Double click through the folders to get to NAME-OF-YOUR-GAME > game > graphics > dot.bmp.
1. This will open up the sprite for editing. You may need to zoom in using (ctrl +) or (cmd +) depending on you operating system.
1. Use the palette on the left to select a color, and draw a smiley face on the circle or make any other changes that strike your fancy. Save the file when you are finished.
1. Go back to the code editor. We have made a change, so we need to recompile our game. Yes, you need to recompile even if you've just changed a sprite! Make sure the terminal is in the `game` directory, and execute `make`.
1. Go back to the emulator and refresh the page. Reopen your ROM. You should see your new sprite! Play around and enjoy.
1. You've made some useful change, so it's time to commit and push your changes. Go back to the code editor and follow the same steps as before to commit and push the changes to `dot.bmp`
## Next steps
1. Congratulations! You are now a GameBoy Advance homebrew developer! There is a lot more to learn, but you're well on your way. Butano comes preloaded with a number of examples you can find in `third_party/butano/examples`. You can compile them by navigating your terminal to one of those example directories and running make. Afterward, the ROM should show up in the emulator page and you can test them out.
1. When you want to return to your codespace later, go back to your repository and click on the green Code button again and select Codespaces. You should see your exisiting Codespace where you can pick up where you left off.
1. Resources
- [Butano Docs](https://gvaliente.github.io/butano/)
- [GBA Dev Discord](https://discord.gg/ctGSNxRkg2)
- [GBA Dev Site](https://gbadev.net/)

The GBA Dev Discord is an excellent place to get help developing your game. If you run into problems with this environment itself, e.g. the emulator or LibreSprite doesn't work, please [open an issue here](https://github.com/alope107/gba-quickstart/issues). As a short term fix, you can try deleting your codespace and restarting it to see if that fixes the issue. JUST MAKE SURE YOU'VE COMMITTED AND PUSHED ANY CHANGES YOU WANT TO SAVE!

Have fun! More tutorials may be added later to help you learn more.

