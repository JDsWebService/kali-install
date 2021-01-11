{

	printMsg "install_discord.sh" "Installing Discord"
	
	wget -O $SCRIPTAPPS/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
	sudo gdebi -n $SCRIPTAPPS/discord.deb

} 2>&1 | tee -a $SCRIPTLOG