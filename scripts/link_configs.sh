#!/bin/bash

home_dir="/home/tmak"
git_dir="$home_dir/git/configs"

# link bin directory to scripts direcotry
if [ ! -d $home_dir/bin ]
then
	ln -sf $git_dir/scripts/ $home_dir/bin
fi

# xinitrc
##if [ ! -f $home_dir/.xinitrc ]
##then
##	ln -sf $git_dir/xinitrc $home_dir/.xinitrc
##fi

# config dir
##if [ ! -d $home_dir/.config ]
##then
##	mkdir $home_dir/.config
##fi

# ssh config
if [ ! -d $home_dir/.ssh ]
then 
	mkdir $home_dir/.ssh
fi

if [ ! -f $home_dir/.ssh/config ]
then
	ln -sf $git_dir/ssh/ssh_config $home_dir/.ssh/config
fi

# bashrc
if [ ! -f $home_dir/.bashrc ]
then
	ln -sf $git_dir/bashrc $home_dir/.bashrc
fi

# bashrc ensure
if [ -f $home_dir/.bashrc ]
then
	ln -sf $git_dir/bashrc $home_dir/.bashrc
fi

# dunstrc
##if [ ! -d $home_dir/.config/dunst ]
##then
##	mkdir $home_dir/.config/dunst
##	ln -sf $git_dir/dunstrc ~/.config/dunst/dunstrc
##fi

# vimrc
if [ ! -f $home_dir/.vimrc ]
then
	ln -sf $git_dir/vim/vimrc $home_dir/.vimrc
fi

# Xresources
##if [ ! -f $home_dir/.Xresources ]
##then
##	ln -sf $git_dir/Xresources/Xresources_default_tweak $home_dir/.Xresources
##fi

# tmux
if [ ! -f $home_dir/.tmux.conf ]
then
	ln -sf $git_dir/tmux.conf $home_dir/.tmux.conf
fi

# zathura
if [ ! -d $home_dir/.config/zathura ]
then
	mkdir $home_dir/.config/zathura
fi

if [ ! -f $home_dir/.config/zathura/zathurarc ]
then
	ln -sf $git_dir/zathurarc $home_dir/.config/zathura/zathurarc
fi

# i3 dir
##if [ ! -d $home_dir/.config/i3 ]
##then
##	mkdir $home_dir/.config/i3
##fi

# i3 config
##if [ ! -f $home_dir/.config/i3/config ]
##then
##	ln -sf $git_dir/i3/i3_config $home_dir/.config/i3/config
##fi

# i3status dir
##if [ ! -d $home_dir/.config/i3status ]
##then
##	mkdir $home_dir/.config/i3status 
##fi

