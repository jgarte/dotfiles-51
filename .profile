ENV=$HOME/.kshrc
PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/code/email-scripts:$PATH"
PATH="$HOME/.pyenv/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="/usr/local/share/mblaze/contrib:$PATH"
[[ "$HOSTNAME" = dev ]] && export QUBES_GPG_DOMAIN=sys-gpg 

export PATH HOME TERM ENV
