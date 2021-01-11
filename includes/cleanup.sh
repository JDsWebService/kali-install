{
	printMsg "clean.sh: Clean Up Some Things Before The Installation Processes\n\n"
	sudo apt-get remove docker docker-engine docker.io containerd runc
	sudo apt update
} | tee -a $SCRIPTLOG