{
	printMsg "update_system_settings.sh" "Updating system settings to prevent screensaver and other misc minor adjustments"
	# Disable Screensaver
	gsettings set org.gnome.desktop.session idle-delay 0
	# Disable Machine Suspension
	gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type "nothing"
	# Set your power button to turn off your system
	gsettings set org.gnome.settings-daemon.plugins.power power-button-action "interactive"
	# Set mouse sensitivity
	gsettings set org.gnome.desktop.peripherals.mouse speed -0.72500000000000000
	# Show seconds in your clock
	gsettings set org.gnome.desktop.interface clock-show-seconds true

} 2>&1 | tee -a $SCRIPTLOG