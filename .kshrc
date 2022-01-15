export BROWSER="firefox"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob=!.git/'
export GPG_TTY=$(tty)
export MAILDIR="$HOME/.mail"
export PATH="$HOME/.pyenv/bin:$PATH"
export TERMINAL="xterm"
export TTY=$(tty)
export EDITOR="nvim"

if [ "$HOSTNAME" = dev ]; then
    export BROWSER="qvm-open-in-dvm"
    export SSH_AUTH_SOCK=/run/user/1000/SSHAgent
    export PASSWORD_STORE_ENABLE_EXTENSIONS=true
else
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    gpgconf --launch gpg-agent
fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias ls='ls -ahF --color=auto'
else
    alias ls='ls -ahF'
fi

alias anki="/usr/local/bin/python3 anki"
alias cr='cargo run --'
alias d='pwd'
alias diff='colordiff'
alias dot="GIT_WORK_TREE=~ GIT_DIR=~/.dotfiles"
alias g="git"
alias ga="git add"
alias gaf="git add -f"
alias gc="git commit"
alias gcm="git commit -m"
alias gd="git diff"
alias gl="git log --graph --decorate --oneline --all"
alias gp="git push"
alias gs="git status"
alias mut='mbsync -a && mutt'
alias vi='nvim'
alias nv='nvim' # alas, muscle memory
alias pass="EDITOR=nvim --noplugin pass"
alias p3="python3"
alias tm="tmux"
alias todo="cat -n $HOME/.todo"

eval "$(pyenv init --path)"

set -o vi
export PS1="\[\e[0;36m\]\$\[\e[m\] "
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; \
}'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
