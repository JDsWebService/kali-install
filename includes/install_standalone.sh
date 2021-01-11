{
	printMsg "install_standalone.sh" "Install applications and software that does not need to be pulled from other locations and can just be pulled using the apt command"
	
	sudo apt install -y apt-transport-https gnome-tweaks arc-theme vlc gdebi-core wget ca-certificates curl gnupg-agent software-properties-common qbittorrent ffmpeg obs-studio npm openvpn dialog python3-pip python3-setuptools python3-gi python3-gi-cairo python3-psutil python3-configobj gir1.2-keybinder-3.0 gir1.2-vte-2.91 gettext intltool dbus-x11 kali-linux-everything

} 2>&1 | tee -a $SCRIPTLOG