{
	printMsg "install_syncthing.sh" "Installing Syncthing"
	
	echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
	curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
	printf "Package: *\nPin: origin apt.syncthing.net\nPin-Priority: 990\n" | sudo tee /etc/apt/preferences.d/syncthing
	sudo apt-get update
	sudo apt-get install -y syncthing
	sudo cp /usr/share/applications/syncthing-start.desktop $HOME/.config/autostart

} 2>&1 | tee -a $SCRIPTLOG