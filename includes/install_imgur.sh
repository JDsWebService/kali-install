{
	# Install Imgur-Screenshot
	printMsg "install_imgur.sh" "Installing Imgur-Screenshot from Git"
	git clone https://github.com/jomo/imgur-screenshot.git $HOME

	# Disable All Other Screenshot Keys
	printMsg "install_imgur.sh" "Removing all keybindings related to screenshots"
	gsettings set org.gnome.settings-daemon.plugins.media-keys window-screenshot-clip "['']"
	gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot-clip "['']"
	gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot-clip "['']"
	gsettings set org.gnome.settings-daemon.plugins.media-keys screencast "['']"
	gsettings set org.gnome.settings-daemon.plugins.media-keys window-screenshot "['']"
	gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot "['']"
	gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot "['']"

	# Create A Custom Keybind For Printscreen
	printMsg "install_imgur.sh" "Installing custom keybinding for the Printscreen Key"
	PRINTSCREEN_CMD="$HOME/imgur-screenshot/ingur-screenshot -l true"
	python set_custom_shortcut.py "Imgur-Screenshot" "$PRINTSCREEN_CMD" "Print"

} 2>&1 | tee -a $SCRIPTLOG