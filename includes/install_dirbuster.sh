{
	printMsg "install_dirbuster.sh" "Installing DirBuster into the opt directory, and update the bash file to point to the correct Java file used by the initialize file."
	
	git clone https://gitlab.com/kalilinux/packages/dirbuster.git $SCRIPTAPPS/dirbuster
	sudo cp -r $SCRIPTAPPS/dirbuster /opt
	sudo chmod +x /opt/dirbuster/
	sudo cp $SCRIPTCONFIGS/DirBuster-1.0-RC1.sh /opt/dirbuster
	rm -rf $SCRIPTAPPS/dirbuster

} 2>&1 | tee -a $SCRIPTLOG