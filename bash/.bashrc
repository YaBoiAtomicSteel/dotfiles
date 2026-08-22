#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\D{%H:%M:%S} \u@\h \W]\$ '

export LANG=en_US.UTF-8

alias sudo='sudo '
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
alias n='nnn'
alias fetch='fastfetch'

eval "$(starship init bash)"

dwlupdate(){
	sudo make -C /home/James/.config/dwl/ clean install
	return 0
}
