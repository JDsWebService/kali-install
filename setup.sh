#!/usr/bin/env zsh

# Define Directories Used By Script
SCRIPTROOT=$HOME/kali-install
SCRIPTAPPS=$SCRIPTROOT/apps
SCRIPTCONFIGS=$SCRIPTROOT/config_files
SCRIPTICONS=$SCRIPTROOT/icons
SCRIPTWALLPAPERS=$SCRIPTROOT/wallpaper
SCRIPTOUTPUT=$SCRIPTROOT/script_output
SCRIPTINCLUDES=$SCRIPTROOT/includes

# Ask the user some questions
read -q "INSTALL_GPU?Install GPU Drivers? (y,n): "
read -q "INSTALL_RAZER?Install Razer Open Source Software Packages? (y,n): "

#########################
# Clean Up Old Software #
#########################
source $SCRIPTINCLUDES/cleanup

#################################################
# Install Apt Software: Can be downloaded with  #
# "apt install" without any other modifications #
# needed                                        #
#################################################
source $SCRIPTINCLUDES/install_standalone

#####################
# Install Oh-My-ZSH #
#####################
source $SCRIPTINCLUDES/install_omzsh

#####################
# Install Syncthing #
#####################
source $SCRIPTINCLUDES/install_syncthing

#####################
# Install DirBuster #
#####################
source $SCRIPTINCLUDES/install_dirbuster

#################################################
# Install ProtonVPN: Will continue installation #
# process after the script finalizes.           #
#################################################
sudo pip3 install protonvpn-cli

###################
# Install Discord #
###################
source $SCRIPTINCLUDES/install_discord

##################
# Install Docker #
##################
source $SCRIPTINCLUDES/install_docker

########################
# Install Sublime Text #
########################
source $SCRIPTINCLUDES/install_sublime

######################
# Install Terminator #
######################
source $SCRIPTINCLUDES/install_terminator

##############################
# Install Imgur Screenshot & #
# Set Printscreen Keybind    #
##############################
git clone https://github.com/jomo/imgur-screenshot.git $HOME
python set_custom_shortcut.py "Imgur-Screenshot" "/home/jonathan/imgur-screenshot/imgur-screenshot -l true" "Print"

####################
# Install Weevely3 #
####################
source $SCRIPTINCLUDES/install_weevely

######################################
# Install Razer Open Source Software #
######################################
if [[ $INSTALL_RAZER == 'y' ]]; then
	source $SCRIPTINCLUDES/install_razer
done

#######################
# Install GPU Drivers #
#######################
if [[ $INSTALL_GPU == 'y' ]]; then
	sudo apt install -y nvidia-driver nvidia-cuda-toolkit
fi

###############################
# Update & Upgrade Everything #
###############################
sudo apt update
sudo apt -y full-upgrade -y

##########################
# Update System Settings #
##########################
source $SCRIPTINCLUDES/update_system_settings

###############################
# Copy Scripts To Home Folder #
###############################
cp -r $SCRIPTROOT/scripts $HOME/scripts

###################################
# Finish Installing ProtonVPN-CLI #
###################################
sudo protonvpn init