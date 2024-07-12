[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S310DONO)
# FiveM Coordinate Saver Script

## Description

This FiveM script allows server administrators to save the coordinates of a player's position to a file with a custom name. It includes configurable options such as ACE permissions for access control and the ability to clear the coordinates file.

## Features

- **Save Coordinates:** Save player coordinates to a file with a custom name.
- **Clear Coordinates:** Clear the coordinates file with a command.
- **ACE Permissions:** Secure the commands with ACE permissions to restrict access.

## Configuration

The configuration options are available in the `Config` table within the script.

- `UseAcePermissions`: Enable or disable ACE permissions (default: `true`).
- `AcePermissionString`: The ACE permission string to control access (default: `AJ:Coords`).
- `FileName`: The name of the file to save coordinates to (default: `coords.txt`). Ensure this file is located in the same directory as your `server.cfg`.

## How to Use

1. **Add the script to your FiveM server:**
   - Drag `AJ_CoordSaver` to your server's resources folder.

2. **Create the coordinates file:**
   - Create a file named `coords.txt` (or the name you set in `Config.FileName`) in the same directory as your `server.cfg`.

3. **Edit your server configuration:**
   - Add `start AJ_CoordSaver` to your server configuration file (`server.cfg`).

4. **Configure ACE permissions (if enabled):**
   - Add the ACE permission for your desired group in your server configuration:
     ```
     add_ace group.[GROUP_NAME] AJ:Coords allow
     ```

5. **Start your server:**
   - Restart your FiveM server or start it if it’s not already running.

6. **Use the commands:**
   - **Save Coordinates:** Use `/pos [name]` to save the player's coordinates with the given name.
   - **Clear Coordinates:** Use `/clearcoords` to clear the coordinates file.

## Example

1. **Save Coordinates:**
   - `/pos myLocation`
   - This will save the player's current coordinates to `coords.txt` with the label "myLocation".

2. **Clear Coordinates:**
   - `/clearcoords`
   - This will clear the contents of `coords.txt`.
