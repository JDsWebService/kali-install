# Installation

Copy and paste the code block below to start the installation process.

```
git clone https://github.com/JDsWebService/kali-install.git $HOME/kali-install
cd $HOME/kali-install
chmod +x setup.sh
./setup.sh
```

*Note: This script is semi-autonomous. The software packages will sometimes ask you questions during the installation process.*

## Post Installation

In order to fully install everything, run the following commands after the script is done executing.

```
cd $HOME/kali-install
cp config_files/.zshrc $HOME/.zshrc
source $HOME/.zshrc
sudo protonvpn init
```

## Installation Notes

Some notes here are listed for reference purposes and testing. These will mainly be answering questions that are prompted during the installation process. These will be in order from seen first to seen last.

### Configuring lightdm (Blue Screen)

- Hit `OK`
- Choose `gdm3`

### xfce Configuration File

- Answer `N` for no. This will keep the currently installed version of the desktop environment

# WARNING

This script assumes that you are using the GNOME desktop environment. xfce & kde are **NOT** supported by this script!

# Contributing Authors / Packages

GNOME Icons

https://github.com/cbrnix/Flatery

GNOME Theme

https://github.com/horst3180/arc-theme

Custom Keybind Python Script

https://askubuntu.com/a/597414

Terminator Themes

https://github.com/EliverLara/terminator-themes

Kali-Linux Desktop Background

https://github.com/dorianpro/kali-linux-wallpapers

https://dorian.pro/

OpenRazer

https://software.opensuse.org/download.html?project=hardware%3Arazer&package=openrazer-meta

Polychromatic

https://polychromatic.app/download/debian/

Weevely3

https://github.com/epinna/weevely3

# Legal Notice

This script installs various programs, applications, and services to your machine. By using this script you are also agreeing to the respective Privacy Policies, Terms & Conditions, and other legal things. I do not own, nor do I hold the copyright to any of these tools, programs, or software being installed, and do not take any liability for anything that fucks up your system. This script is **USE AT YOUR OWN RISK**. You hereby agree by cloning this repository, or using this script that you release me from any and **ALL** legal liabilities, and you accept and understand the risks associated with using this script and the software it installs. This software must also be used for **EDUCATIONAL PURPOSES ONLY** and you hereby **AGREE** to use this script and the software it installs in an ethical and legal manner **ONLY**.

TL;DR

You fucking hack shit you aren't supposed to, thats on you. You get into some legal trouble, not my problem. If you're dumb enough to do stupid shit then you're to dumb to not be behind bars. Period. End of Discussion. *End rant*

*Created On: 1/9/2021*