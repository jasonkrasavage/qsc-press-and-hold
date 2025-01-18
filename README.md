# Tic Tac Toe

A Q-SYS plugin that provides momentary button controls with hold functionality and visual gauge feedback.

## Features

- Momentary buttons with configurable hold time
- Visual gauge feedback that can be displayed behind transparent buttons
- Support for both horizontal and vertical gauge orientations
- Configurable button dimensions and colors
- "Pressed" and "Held" LED outputs for logic control (with controllable pulse time)

## Setup Instructions

1. Add the plugin to your Q-SYS design
2. Configure the setup parameters:
   - Hold Time: Duration (in seconds) required for "Held" state
   - Pulse Time: Duration of LED feedback pulses
   - Button Width/Height: Must match actual UCI button dimensions
   - Background Color: Main button background (#00000000 for transparent)
   - Fill Color: Gauge fill color
   - Stroke Color: Button border color (set to #00000000 for none)
   - Is Vertical: Toggle between horizontal/vertical gauge orientation

3. On your UCI:
   - Place the plugin's graphic element where desired
   - Overlay a button control on top of the graphic
   - Configure the button with:
     - All transparent colors
     - If you want a stroke on the button, set it on the transparent button that is pressed, also add your text here
     - Add any corner radius to both the button and the graphic

## Usage

- Short press: Triggers "Pressed" LED pulse
- Long press: When held beyond Hold Time, triggers "Held" LED pulse
- Use "Pressed" and "Held" pins to drive your control logic
- Gauge feedback displays through transparent button overlay

## Tips

- Always match Button Width/Height values to actual UCI button size
- Use "#00000000" for any transparent color values
- Test hold timing to ensure proper user interaction


## PluginCompile

This plugin was created using the [Basic Plugin Framework](https://q-syshelp.qsc.com/DeveloperHelp/Content/Code_Examples/Basic_Plugin_Framework.htm#:~:text=Q%2DSYS%20plugins%20are%20small,it%20within%20the%20correct%20directory.) from Q-SYS, and scaled back to use only the necessary .lua files.

