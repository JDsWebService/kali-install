{
	printMsg "cleanup.sh" "Clean Up Some Things Before The Installation Processes"

	sudo apt-get remove docker docker-engine docker.io containerd runc	
	sudo apt update

} 2>&1 | tee -a $SCRIPTLOG