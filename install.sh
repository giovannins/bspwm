#! /bin/sh 
DOTHOME="home"
DOTCONFIG=".config"

# INSTALL ALL DEPENDENCES
# exec sudo xbps-install -Suy arandr base-devel bash-completion bspwm dmenu feh git htop mpv neofetch neovim nerd-fonts NetworkManager picom polybar pulseaudio python3 python3-pip rxvt-unicode sxhkd Thunar xdg-user-dirs xorg xrandr

# CREATE USER'S DIRECTORY
# exec xdg-user-dirs-update $HOME

# COPY DOTFILE/HOME TO SYSTEM $HOME
exec cp $DOTHOME/.Xresources $DOTHOME/.bashrc $DOTHOME/.xinitrc $HOME

# COPY DOTFILES/.CONFIG FILES TO THE SYSTEM'S $HOME/.CONFIG
exec mkdir $HOME/.config/bspwm/ $HOME/.config/sxhkd/ $HOME/.config/polybar/
exec cp $DOTCONFIG/bspwm/bspwmrc $HOME/.config/bspwm/
exec cp $DOTCONFIG/sxhkd/sxhkdrc $HOME/.config/sxhkd/