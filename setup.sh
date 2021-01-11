#!/usr/bin/env zsh

###########################
# Include Print Functions #
###########################
source $SCRIPTINCLUDES/print.sh

# Print Script Banner
printBanner

#####################################
# Define Directories Used By Script #
#####################################
printMsg "setup.sh" "Defining variables to be used throughout the script"

SCRIPTROOT=$HOME/kali-install
SCRIPTAPPS=$SCRIPTROOT/apps
SCRIPTCONFIGS=$SCRIPTROOT/config_files
SCRIPTICONS=$SCRIPTROOT/icons
SCRIPTWALLPAPERS=$SCRIPTROOT/wallpaper
SCRIPTOUTPUT=$SCRIPTROOT/script_output
SCRIPTINCLUDES=$SCRIPTROOT/includes
TIMESTAMP="$(date +"%T")"

# Define Time The Script Was Run
printMsg "setup.sh" "Creating Script Output File"
mkdir -p $SCRIPTOUTPUT
touch $SCRIPTOUTPUT/$TIMESTAMP.log
SCRIPTLOG=$SCRIPTOUTPUT/$TIMESTAMP.log

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
printMsg "setup.sh" "Installing ProtonVPN"
sudo pip3 install protonvpn-cli
printMsg "setup.sh" "ProtonVPN Installed! Make sure that you run the protonvpn init command after this script is finished running."
read "Press [ENTER] to continue..."

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
	printMsg "setup.sh" "Installing nVidia Drivers"
	sudo apt install -y nvidia-driver nvidia-cuda-toolkit
fi

###############################
# Update & Upgrade Everything #
###############################
printMsg "setup.sh" "Updating & Upgrading Everything"
sudo apt update
sudo apt -y full-upgrade -y

######################
# Update User Themes #
######################
source $SCRIPTINCLUDES/update_user_themes.sh

###############################
# Copy Scripts To Home Folder #
###############################
printMsg "setup.sh" "Copying Scripts to Home Folder"
cp -r $SCRIPTROOT/scripts $HOME/scripts

#####################
# Install Oh-My-ZSH #
#####################
printMsg "setup.sh" "Installing Oh-My-ZSH"
source $SCRIPTINCLUDES/install_omzsh.sh