alias dc='docker-compose'

alias eb='cd ~/workspace/projects/eventboard.io && workon eb'
alias starteb='eb && dc up -d && dc logs -f web'
alias o='octoeb'

alias weather="curl -k https://wttr.in/SLC"

#source ~/.git-completion.bash

source /usr/local/bin/virtualenvwrapper.sh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_HIDE_BRANCH_ICON=false
POWERLEVEL9K_SHOW_CHANGESET=false
POWERLEVEL9K_CHANGESET_HASH_LENGTH=12
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
POWERLEVEL9K_VCS_HIDE_TAGS=false

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%K{white}%F{black} %f%k%F{white}%f "

POWERLINE_RIGHT_B="status history time"

REPOSITORY=634428562670.dkr.ecr.us-west-2.amazonaws.com/eventboard/core
# Common dev scripts

# ssh-add -K ~/.ssh/id_rsa
# eval $(aws ecr get-login --region us-west-2)
