# TODO

- Fonts. Inconsolata. Consolas.
- PHPStorm config
- PyCharm config
- ONZRA VPN
- Sentact VPN
- Create log_www alias for logging dev applications
- Add some variables into .profile for setting things like theme and log directory
- Ability to switch themes using ssh config (make production pink)
- Commands to start/stop apache, mysql, etc. that work with homebrew
- Other fun stuff in: https://github.com/mathiasbynens/dotfiles/
- Solarized theme for other apps
- Create peppermint theme for PHPStorm / TextMate?
- Rsync music with NAS
- Script for resizing backgrounds. Fit within 5120x2880 (imac 5k res). Warn if below 2560x1440.
 - Or maybe some kind of ls wrapper that lists them with colors based on resolution.

### PHPStorm color schemes

Add color scheme XML files.

    ~/Library/Preferences/WebIde80/colors/Obsidian.xml

Set global color scheme.

    ~/Library/Preferences/WebIde80/options/colors.scheme.xml
    <global_color_scheme name="Obsidian" />

### VI

Set up a .vimrc file

Pathogen for plugins
https://github.com/tpope/vim-pathogen/blob/master/README.markdown

Solarized for vim
http://ethanschoonover.com/solarized/vim-colors-solarized

### Transmission

set prefs?

Use `~/Documents/Torrents` to store incomplete downloads

    defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
    defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Documents/Torrents"

Don't prompt for confirmation before downloading

    defaults write org.m0k.transmission DownloadAsk -bool false

Trash original torrent files

    defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

Hide the donate message

    defaults write org.m0k.transmission WarningDonate -bool false

Hide the legal disclaimer

    defaults write org.m0k.transmission WarningLegal -bool false
