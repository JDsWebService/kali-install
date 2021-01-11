{

	printMsg "install_docker.sh" "Installing Docker"
	
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository \
	   "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
	sudo apt-get update
	sudo apt-get install -y docker-ce docker-ce-cli containerd.io

} 2>&1 | tee -a SCRIPTLOG