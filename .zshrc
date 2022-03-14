############################
## ForumPlayer's zsh mods ##
############################

HISTFILE=~/.histfile
HIST_STAMPS="dd/mm/yyyy"
HISTSIZE=1000000000
SAVEHIST=1000000000

setopt autocd
setopt promptsubst
unsetopt beep
bindkey -e

#PS1=$'${(r:$COLUMNS::_:)}'$PS1
precmd() {
   for i in {1..$COLUMNS}; echo -n '_'
   echo -ne "\n"
#   drawline="${drawline}$i"
#   echo $drawline
#   PS1="${drawline}
#$PS1"
}




###--- KEYRING ---###
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    #export SSH_AUTH_SOCK
fi

unset SSH_AUTH_SOCK

#if [[ "$(tty)" == "/dev/tty1" ]]; then exec startx; fi

############################
############################

plugins=(fancy-ctrl-z catimg colorize emoji)

##source ~/.zsh/oh-my.zshrc
