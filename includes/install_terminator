git clone https://github.com/gnome-terminator/terminator.git $HOME/terminator
cd $HOME/terminator
python3 setup.py build
python3 setup.py install --single-version-externally-managed --record=install-files.txt
sudo gtk-update-icon-cache -q -f /usr/share/icons/Flatery-Indigo
cd $SCRIPTROOT
sudo rm -r $HOME/terminator

# Change Terminator Themes & Settings
mkdir -p $HOME/.config/terminator/plugins
wget https://git.io/v5Zww -O $HOME/.config/terminator/plugins/terminator-themes.py
cp $SCRIPTCONFIGS/terminator_config $HOME/.config/terminator/config