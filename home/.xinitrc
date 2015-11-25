#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xmodmap ~/.Xmodmap&
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &

sh ~/.fehbg &
mpd /home/vision/.config/mpd/config &
numlockx &

anacron -t ${HOME}/.anacron/anacrontab -S ${HOME}/.anacron/ &> ${HOME}/.anacron/log &

export GTK2_RC_FILES="$HOME/.gtkrc-2.0" &
exec awesome

