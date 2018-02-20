alias dc='docker-compose'

alias eb='cd ~/workspace/projects/eventboard.io && workon eb'
alias starteb='eb && dc up -d && dc logs -f web'

alias weather="curl -k https://wttr.in/SLC"

#source ~/.git-completion.bash


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


