. ~/.profile

export LC_CTYPE="en_US.UTF-8"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

if ! pgrep -x xcape >/dev/null 2>&1 ; then
    xcape &
fi

if ! pgrep -x redshift >/dev/null 2>&1 ; then
    redshift -l 32.7:-117 &
fi

if ! pgrep -x conky >/dev/null 2>&1 ; then
    conky -c $HOME/.config/conky/conky.conf &
fi

xrdb -merge ~/.Xresources &
setxkbmap -option ctrl:nocaps &
unclutter -idle 1 -noevents &
xidle -delay 5 -nw \
    -program "/usr/X11R6/bin/xlock \
    -dpmsstandby 5" \
    -timeout 1800 &
hsetroot -solid "#9eb8d3" &
picom -c &

exec bspwm
