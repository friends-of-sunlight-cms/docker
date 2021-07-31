# Env
EDITOR=nano

# Stop if not interactive
case $- in
    *i*) ;;
      *) return;;
esac

# Generic
alias c='clear'
alias cc="echo -e '\0033\0143' && clear"
alias ll='ls -l'
alias ls='ls -F --color=auto --show-control-chars'
alias pcd='cd /var/www/html'

# PHP
alias xphp='php -d zend_extension=$(echo /usr/local/lib/php/extensions/no-debug-non-zts-*/xdebug.so)'
