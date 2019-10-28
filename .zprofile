PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/Users/elias/app-dev/flutter/bin

# Adding TexLive (Latex) so tlmgr command is available
PATH="${PATH}":/usr/local/texlive/2019/bin/x86_64-darwin

#export PS1="\W \u\$ "

# set where virtual envs will live
# export WORKON_HOME=$HOME/.virtualenvs

# ensure all new envs are isolated from the site-packages directory
# export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

# user the same directory for virtualenvs as virtualenvwrapper
# export PIP_VIRTUALENV_BASE=$WORKON_HOME

# makes pop detect an active virtualenv and install to it
# export PIP_RESPECT_VIRTUALENV=true

# if [[ -r /usr/local/bin/virtualenvwrapper.sh ]];then
# 	source /usr/local/bin/virtualenvwrapper.sh
# else
# 	echo "WARNING: Can't find virtualenvwrapper.sh"
# fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/elias/google-cloud-sdk/path.bash.inc' ]; then . '/Users/elias/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/elias/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/elias/google-cloud-sdk/completion.bash.inc'; fi
