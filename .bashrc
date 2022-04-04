# Hamza's Edit

# enable forth and backward search (ctrl+R), (ctrl+S)
stty -ixon

# enable bash completion in interactive shells
# https://askubuntu.com/a/545578/1051280  
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# MORE PATHES
export PPATH=$HOME/siege/.local/bin:$HOME

# ADD PYTHON_ENVIRONMENT PATH 
export VIRTUALENV_PYTHON=/usr/bin/python3.8
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=/mnt/d/Hamza
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.8
export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv

# ADD FLASK_APP
export FLASK_APP=flask_app

# ADD postgresql PATH
export POSTGRESQLPATH=/usr/lib/postgresql/12/bin/:$POSTGRESQLPATH




# Load pyenv automatically by adding
# the following to ~/.bashrc:

export PATH="/home/hamza/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# wsl get windows host ip
export winhost=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
if [ ! -n "$(grep -P "[[:space:]]winhost" /etc/hosts)" ]; then
	printf "%s\t%s\n" "$winhost" "winhost" | sudo tee -a "/etc/hosts"
fi


# End of Hamza's Edit
 -n "$PS1" && source ~/.bash_profile;
source ~/.profile;

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

