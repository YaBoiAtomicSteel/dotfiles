#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(starship init bash)"

export LANG=en_US.UTF-8
export EDITOR=nvim
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export PATH="$HOME/.local/bin:$PATH"
export MANROFFOPT="-c"
export LESS="-R"

# Tokyo Night man pages
export LESS_TERMCAP_mb=$'\e[1;38;2;247;118;142m'   # #f7768e
export LESS_TERMCAP_md=$'\e[1;38;2;187;154;247m'   # #bb9af7
export LESS_TERMCAP_so=$'\e[1;38;2;122;162;247m'   # #7aa2f7
export LESS_TERMCAP_us=$'\e[4;38;2;125;207;255m'   # #7dcfff
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'

# su
alias sv='sudoedit'
alias reboot='sudo reboot now'
alias shutdown='shutdown now'

# tools
alias ls='ls --color=auto'
alias ll='ls --color=auto -la'
alias grep='grep --color=auto'
alias dmesg='dmesg --color=always'
alias v='nvim'
alias n='nnn'
alias matrix='unimatrix'
alias bc='bc -ql'
alias wman='wikiman'

# programming
alias smci='sudo make clean install'
alias objdump='objdump -Mintel'
alias gdb='gdb -q'
alias gcc='gcc -g'
alias gch='gcc -g -m32'

arch(){ echo -e '\n\n'; fastfetch; }
dwlupdate(){ mv -f ~/.config/dwl/config.h ~/.config/dwl/config.def.h.orig; sudo make -C ~/.config/dwl/ clean install; }
dwledit(){ v ~/.config/dwl/config.def.h; }
powerdraw(){ watch -n 1 'awk "{printf \"%.2f W\", \$1*1e-6}"' /sys/class/power_supply/BAT0/power_now; }
