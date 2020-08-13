# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

alias pbcopy='xsel --clipboard --input'
alias cls='clear'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias vim='nvim'
alias nvi='nvim'

# --- Change esc for capslock ---
#setxkbmap -option "caps:swapescape"


#if [ -f `which powerline-daemon` ]; then
#    powerline-daemon -q
#    POWERLINE_BASH_CONTINUATION=1
#    POWERLINE_BASH_SELECT=1
#    . /usr/share/powerline/bindings/bash/powerline.sh
#fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias config='/usr/bin/git --git-dir=/home/carlos/.cfg/ --work-tree=/home/carlos'

