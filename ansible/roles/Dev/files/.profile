# BASH Style
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[31;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# GRC
source "`brew --prefix grc`/etc/grc.bashrc"

# Configuration
export SVN_EDITOR=vi
export ONZRA_SSHCONFIG_EMAIL="dave@onzra.com"

# Shell Commands
alias ls='ls -GFlh'

# Debugging
alias xdebug_on='export XDEBUG_CONFIG="idekey=PHPStorm"'
alias xdebug_off='unset XDEBUG_CONFIG'
alias xdebug_profile_on='export XDEBUG_CONFIG="idekey=PHPStorm profiler_enable=1"'
alias xdebug_profile_off='unset XDEBUG_CONFIG'

# Logging
alias log_www='clear; echo -n -e "\033]0;Logging WWW\007"; tail -fqn0 /opt/local/var/db/mysql55/*.err /opt/local/apache2/logs/error_log'

# Helpers
alias copy_sshkey='cat ~/.ssh/id_rsa.pub | pbcopy'

# SSH alias tab completion
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh

# Theme switching
function theme {
	NAME=$1; if [ -z "$NAME" ]; then NAME="Peppermint"; fi
	osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"$NAME\""
}
# Switches theme when SSHing
# TODO: have this function parse .ssh/config and look for Theme declaration to switch to per ssh config or use Steve's thing
function ssh {
	theme "Solarized Dark"
	/usr/bin/ssh "$@"
	theme "Peppermint"
}

#Path update
export PATH=vendor/bin:/usr/local/sbin:$PATH:$HOME/.rvm/bin
