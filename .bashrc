# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Make nano default editor
export EDITOR='nano'


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# Set default permissions to 755
umask 022

# Customize prompt to
# user@host- working directory
PS1="\e[0;35m[\u@\h- \w @]\$ \e[m"

source ~/.aliases


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
