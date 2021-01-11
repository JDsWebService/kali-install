{
	printMsg "update_user_themes.sh" "Updating User Themes, Icons, & Wallpaper"
		
	sudo cp -r $SCRIPTICONS/* /usr/share/icons
	cp -r $SCRIPTWALLPAPERS $HOME/Pictures
	gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
	gsettings set org.gnome.desktop.interface icon-theme "Flatery-Indigo"
	gsettings set org.gnome.desktop.background picture-uri "file:///home/${USER}/Pictures/wallpaper/kali-minimal.png"
	gsettings set org.gnome.desktop.screensaver picture-uri "file:///home/${USER}/Pictures/wallpaper/kali-minimal.png"
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "BOTTOM"
	
} 2>&1 | tee -a $SCRIPTLOG