#!/usr/bin/env zsh

# Define Directories Used By Script
SCRIPTROOT=$HOME/kali-install
SCRIPTAPPS=$SCRIPTROOT/apps
SCRIPTCONFIGS=$SCRIPTROOT/config_files
SCRIPTICONS=$SCRIPTROOT/icons
SCRIPTWALLPAPERS=$SCRIPTROOT/wallpaper
SCRIPTOUTPUT=$SCRIPTROOT/script_output
SCRIPTINCLUDES=$SCRIPTROOT/includes

# Define Time The Script Was Run
timestamp="$(date +"%T")"
mkdir $SCRIPTOUTPUT
touch $SCRIPTOUTPUT/$timestamp.log
SCRIPTLOG=$SCRIPTOUTPUT/$timestamp.log

###########################
# Include Print Functions #
###########################
source $SCRIPTINCLUDES/print.sh

printBanner

##########################
# Update System Settings #
##########################
source $SCRIPTINCLUDES/update_system_settings.sh

# Ask the user some questions
read -q "INSTALL_GPU?Install GPU Drivers? (y,n): "
printf "\n"
read -q "INSTALL_RAZER?Install Razer Open Source Software Packages? (y,n): "
printf "\n"

#########################
# Clean Up Old Software #
#########################
source $SCRIPTINCLUDES/cleanup.sh

#################################################
# Install Apt Software: Can be downloaded with  #
# "apt install" without any other modifications #
# needed                                        #
#################################################
source $SCRIPTINCLUDES/install_standalone.sh

#####################
# Install Syncthing #
#####################
source $SCRIPTINCLUDES/install_syncthing.sh

#####################
# Install DirBuster #
#####################
source $SCRIPTINCLUDES/install_dirbuster.sh

#################################################
# Install ProtonVPN: Will continue installation #
# process after the script finalizes.           #
#################################################
sudo pip3 install protonvpn-cli

###################
# Install Discord #
###################
source $SCRIPTINCLUDES/install_discord.sh

##################
# Install Docker #
##################
source $SCRIPTINCLUDES/install_docker.sh

########################
# Install Sublime Text #
########################
source $SCRIPTINCLUDES/install_sublime.sh

######################
# Install Terminator #
######################
source $SCRIPTINCLUDES/install_terminator.sh

##############################
# Install Imgur Screenshot & #
# Set Printscreen Keybind    #
##############################
source $SCRIPTINCLUDES/install_imgur.sh

####################
# Install Weevely3 #
####################
source $SCRIPTINCLUDES/install_weevely.sh

######################################
# Install Razer Open Source Software #
######################################
if [[ $INSTALL_RAZER == 'y' ]]; then
	source $SCRIPTINCLUDES/install_razer.sh
fi

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

######################
# Update User Themes #
######################
source $SCRIPTINCLUDES/update_user_themes.sh

###############################
# Copy Scripts To Home Folder #
###############################
cp -r $SCRIPTROOT/scripts $HOME/scripts

#####################
# Install Oh-My-ZSH #
#####################
source $SCRIPTINCLUDES/install_omzsh.sh