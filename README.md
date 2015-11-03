# Rocket Button Example

## Requirements
 * Intel Galileo Gen 2
 * Seeedstudio Grove Starter Kit Plus
 * Account on Helix App Cloud (app.cloud.windriver.com)
 
## Description

In this simple example, we make an LED blink by pressing a push button.
 
## Instructions

### Setting up your hardware

1. Disconnect the power supply and USB cables from your device.

2. Plug the Grove Shield into the Arduino headers.

3. Plug the Grove Button into D3.

4. Plug the Grove LED into D7.

5. Connect the FTDI Serial Cable to your board.

6. Connect the power supply to your board to power it on.

### Connecting to Helix App Cloud

1. Go to Helix App Cloud (https://app.cloud.windriver.com/)

2. If you already have a Wind River Account, sign in.  Otherwise proceed to sign up now for a new account.

3. Once you have logged in, you may follow the Getting Started instructions to connect your Galileo Gen 2 board to Helix App Cloud (https://app.cloud.windriver.com/sdk/showDoc?id=86&doc=docs/getting_started.md) 

### Creating the Rocket Button example

1. Go to the main Helix App Cloud page.

2. Select the device you wish to use.

3. Under the heading "Application Projects" at the bottom of the screen, click the button labeled, "Create new project".

4. In the "Create a new project" window, enter a project name (e.g. "arduino-button").

5. Under "Project template" select "Empty C Project" from the drop-down list.

6. Click "OK".

### Importing the Rocket Button example

1. Click the green "Open" button inside your new project to open the editor in a new tab.

2. In another browser window, go to https://github.com/wind-river-rocket/arduino-button

3. Click the "Copy to clipboard" icon located next to the heading "HTTPS clone URL" on the right-hand side.

4. Return to the Helix App Cloud IDE and click on the blue terminal window at the bottom of the screen.

5. Enter the git clone command followed by pasting the GitHub URL we just copied and press enter: e.g. (git clone https://github.com/wind-river-rocket/arduino-button.git)

5. Export the WIND_PROJECT_ROOT variable: export WIND_PROJECT_ROOT

6. Execute the setup.sh command to import the code into your "Empty C Project" (e.g. setup.sh)

### Running the Rocket Button example

1. Expand the arrow next to the "src" folder to find the "arduino-button.c" example.

2. Double click the "arduino-button.c" file to open the source code in the editor.

3. Click the "Build" button from the menu bar at the top of the screen to compile the example.

4. Click the "Run Project" button from the menu bar at the top of the screen to download it to your device and begin executing.

5. Press the push button to make the LED light up.

NOTE: If the debugger is enabled then a breakpoint will stop the example at the main() function and the Debugger view will open on the right-hand side.  To resume your program click the play button.
