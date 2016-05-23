### Customization
VSCode can be extensively customized using plugins written in CSS, JavaScript and TypeScript. Unfortunately, VSCode does not have support for an embedded terminal or web browser, regardless of any installed extensions. Plugins are search for and installed via opening the command pallette (with the keyboard shortcut <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) and typing `ext install`, then pressing <kbd>Enter</kbd>. Users can also customize VSCode's behaviour by editing the user's settings by going to <code>File&rarr;Preferences&rarr;User Settings</code> and editing one's `~/.config/Code/User/settings.json` file. For example, here's a settings.json file to get VSCode to syntax-highlight `.desktop`, `.directory`, `.install` and `PKGBUILD` files:

```json
{
    "files.associations": {
        "PKGBUILD":    "shellscript",
        "*.install":   "shellscript",
        "*.desktop":   "ini",
        "*.directory": "ini"
    }
}
```
