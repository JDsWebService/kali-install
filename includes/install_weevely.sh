{
	printMsg "install_weevely.sh" "Installing Weevely3"
	
	git clone https://github.com/epinna/weevely3.git $HOME/shells/weevely3
	cd $HOME/shells/weevely3
	sudo pip3 install -r requirements.txt --upgrade
	cd $SCRIPTROOT

} 2>&1 | tee -a $SCRIPTLOG