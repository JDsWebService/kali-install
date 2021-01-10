git clone https://github.com/jomo/imgur-screenshot.git $HOME
# Disable All Other Screenshot Keys
gsettings set org.gnome.settings-daemon.plugins.media-keys window-screenshot-clip "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot-clip "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot-clip "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys screencast "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys window-screenshot "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot "['']"
# Create A Custom Keybind For Printscreen
python set_custom_shortcut.py "Imgur-Screenshot" "/home/jonathan/imgur-screenshot/imgur-screenshot -l true" "Print"