#! /bin/sh 
DOTHOME=$HOME/dotfiles/home/
DOTCONFIG=$HOME/dotfiles/.config/

# INSTALL ALL DEPENDENCES
sudo xbps-install -Suy arandr base-devel bash-completion bspwm dmenu feh git htop lxappearance mpv neofetch neovim nerd-fonts NetworkManager nitrogen picom polybar pulseaudio python3 python3-pip rxvt-unicode sxhkd Thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman xdg-user-dirs xorg xrandr &&
clear && echo "Dependences installed!"

# CREATE USER'S DIRECTORY
xdg-user-dirs-update
echo "User's default dirs created!"

# COPY DOTFILE/HOME TO SYSTEM $HOME
cp $DOTHOME/.Xresources $DOTHOME/.bashrc $DOTHOME/.xinitrc $HOME
cp $DOTHOME/.wallpaper/*.jpg $HOME/.wallpaper/ & mkdir -p $HOME/.wallpaper 
echo "\$HOME copy!"

# Apply Xresources
xrdb $HOME/.Xresources
echo "Xresources configurate!"

# COPY DOTFILES/.CONFIG FILES TO THE SYSTEM'S $HOME/.CONFIG
mkdir -p $HOME/.config/bspwm/ $HOME/.config/sxhkd/ $HOME/.config/polybar/ $HOME/.config/picom
echo "Created folders!"
cp $DOTCONFIG/bspwm/bspwmrc $HOME/.config/bspwm/
cp $DOTCONFIG/sxhkd/sxhkdrc $HOME/.config/sxhkd/
cp $DOTCONFIG/polybar/config.ini $HOME/.config/polybar/
cp $DOTCONFIG/polybar/launch.sh $HOME/.config/polybar/
chmod +x $HOME/.config/polybar/launch.sh
cp $DOTCONFIG/picom/picom.conf $HOME/.config/picom/
echo ".Config copy!"
echo "_________________________________________"
echo "Your base system is installed! Now you can run 'startx' or reboot and login to get into"