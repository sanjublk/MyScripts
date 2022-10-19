#
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

export VISUAL=vim
export RTV_BROWSER=firefox
PATH=${HOME}/bin:${HOME}/.local/bin:${PATH}
set -o vi

##################################ALIAS############################################################

alias wallpaper='feh --randomize --bg-fill ~/.wallpapers/*'
alias rsave='youtube-dl -f bestvideo+bestaudio'
#alias ls='ls --color=auto'
alias rtv='rtv --enable-media'
alias redshift='redshift -P -O 2800'
alias espeak='espeak -s 125 -v en+m3 -p 25'
alias study='youtube-dl -f 135+140'
alias bell='aplay -q drop.wav && notify-send "process finished"'
alias togif='convert -delay 20 -loop 0'
alias shiftback='redshift -P -O 6500'
alias tw='taskwarrior-tui'
alias ls='exa --icons'
alias p='python'
alias e='vim'




###############################################RUST##############################################

. "$HOME/.cargo/env"
alias b='cargo build'
alias r='cargo run'


#############################################fzf############################################

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_COMMAND='fd --type f'



#####################################history#######################################################
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend  
# After each command, append to the history file and reread it
# PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history
# -c; history -r"
#
# #####################################prompt#############################################################
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.starship/config.toml

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
