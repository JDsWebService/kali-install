# Install OpenRazer
sudo gpasswd -a $USER plugdev
echo 'deb http://download.opensuse.org/repositories/hardware:/razer/Debian_Testing/ /' | sudo tee /etc/apt/sources.list.d/hardware:razer.list
curl -fsSL https://download.opensuse.org/repositories/hardware:razer/Debian_Testing/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/hardware_razer.gpg > /dev/null
sudo apt update
sudo apt install -y openrazer-meta

# Install Polychromatic
echo "deb http://ppa.launchpad.net/polychromatic/stable/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list.d/polychromatic.list
sudo apt-key adv --recv-key --keyserver keyserver.ubuntu.com 96B9CD7C22E2C8C5
sudo apt-get update
sudo apt-get install -y polychromatic