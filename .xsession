. ~/.profile

export LC_CTYPE="en_US.UTF-8"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
setxkbmap -option ctrl:nocaps &
pkill -x xcape || true && xcape &
xsetroot -gray &
xrdb -merge ~/.Xresources &
unclutter -idle 1 -noevents &
xidle -delay 5 -nw -program "/usr/X11R6/bin/xlock -dpmsstandby 5" -timeout 1800 & 
redshift -l -32.7:116 &
feh --bg-fill --randomize ~/wallpaper
picom -c &
exec cwm 
