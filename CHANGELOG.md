# BETA x.x.x-001

- Initial Creation of the Script

# BETA x.x.x-002

- Updated README
- Updated License
- Made Script Modular
- Updated order to include `update_system_settings` to be first in order to prevent the screen from going black during the installation process
- Added CHANGELOG
- Changed installation order to put installation of Oh-My-ZSH last as it kicks us out of the script
- Updated `install_dirbuster` to include the force flag when removing the dirbuster directory from `apps`
- Changed line 87 of `setup.sh` for syntax error

#BETA x.x.x-003

- Updated `.zshrc` to remove duplicate `/user/` folder when defining the `ZSH` variable. `$HOME` includes the users username, and theres no need to specify `$HOME/$USER/..`.
- Changed all includes to have the `.sh` extension for easier reading in Sublime Text
- Added Script Banner
- Added Script Print Functions
- Added a `mkdir` command for Script Output