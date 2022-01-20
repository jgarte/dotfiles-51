. ~/.profile

export LC_CTYPE="en_US.UTF-8"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

setxkbmap -option ctrl:nocaps &
pkill xcape 
xcape &
xrdb -merge ~/.Xresources &
unclutter -idle 1 -noevents &
xidle -delay 5 -nw \
        -program "/usr/X11R6/bin/xlock \
        -dpmsstandby 5" \
        -timeout 1800 &
hsetroot -solid "#9eb8d3"
picom -c &
exec bspwm
