alias dc='docker-compose'
alias dm='docker-machine'

alias eb='cd $HOME/workspace/projects/eventboard.io && workon eb'
alias dg='cd $HOME/workspace/projects/insights-data-grabber && . .venv/bin/activate'
alias dep='cd $HOME/workspace/projects/teem-dev-deploy'
alias starteb='eb && dc up -d && dc logs -f web'
alias o='octoeb'
alias ef='cd $HOME/workspace/projects/ender-front/ember-deployment'
alias startef='ef && ember server'

alias weather="curl -k https://wttr.in/SLC"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status anaconda time battery)
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


# Other Aliases

alias channels='cd /home/faris/workspace/projects/channels'

alias cloak='/home/faris/ink/cloak_vpn/start.sh'

alias zp='cd ~/workspace/projects/zaneprep && workon zaneprep'

alias utah='cd ~/workspace/projects/utah'
alias slcpy='cd ~/workspace/projects/slcpy.com && workon slcpy'
alias startslcpy='slcpy && docker-compose up -d'

alias pastryio='cd ~/workspace/projects/pastryio && workon pastryio'
alias startpastryio='pastryio && ./manage.py runserver'

alias geovinci='cd ~/workspace/projects/geovinci && workon geovinci'
alias startgeo='geovinci && ./manage.py runserver'

alias coalio='cd ~/workspace/projects/coalio && workon coalio'
alias startcoalio='coalio && ./manage.py runserver'

alias zpcorp='cd ~/workspace/projects/zpcorporate && workon zpcorporate'
alias startzpcorp='zpcorp && ./manage.py runserver'

alias zc='cd ~/workspace/projects/zaniac && workon zaniac'
alias startzc='zc && ./manage.py runserver'
alias zcel='zc && ./manage.py celery worker --loglevel INFO'

alias thumbjax='cd ~/workspace/projects/thumbjax && workon thumbjax'

alias uttr='cd ~/workspace/projects/uttr && workon uttr'
alias startuttr='uttr && ./manage.py runserver'

alias ux='cd ~/workspace/projects/ux_sand_redesign && workon ux_sand_redesign'
alias startux='ux && python ux_sand_redesign/__init__.py'

alias stripeyou='cd ~/workspace/projects/stripeyou && workon stripeyou'
alias stripestart='stripeyou && python app.py'

alias bf='cd ~/workspace/projects/brainfreeze && workon brainfreeze'
alias bfstart='bf && python brainfreeze/__init__.py'

alias artpy='cd ~/workspace/projects/artofpython && workon artpy'
alias mcpy='cd ~/workspace/projects/mcpy && workon mcpy'
alias startartpy='artpy && python presentation/app.py'

alias zadmin='cd ~/workspace/projects/zp-admin'

alias zadmin='cd ~/workspace/projects/zp-admin'

alias sauce='cd ~/workspace/projects/saucesmere && workon sauce'
alias startsauce='sauce && ./manage.py runserver'

alias egghead='cd ~/workspace/projects/EggheadAngularWorkshop'
alias startegghead='egghead && json-server database.json'

alias luckyflask='cd ~/workspace/projects/lucky_flask && workon lucky_flask'
alias startlucky='luckyflask && cd apps/03_frysauce/ && python run.py'

# This changes every year :)
alias pycon2016='cd ~/workspace/projects/pycon2016 && workon pycon2016'
alias pycon='cd ~/workspace/projects/pycon2019'

alias upython='cd ~/workspace/projects/utahpython.github.com'
alias startupy='upython && jekyll serve'

alias fcis='cd ~/workspace/projects/farischebib.is && workon fcis'
alias startfcis='fcis && cd output && python -m http.server'

alias fspace='cd ~/workspace/projects/faris.space'

alias airmot='cd ~/workspace/projects/airmotive'

alias lexfashion='cd ~/workspace/projects/lexie_fashion'
alias lexphotos='cd ~/workspace/projects/lexie_photos'

alias djmusic='cd ~/workspace/projects/django_music && workon djmusic'

alias meethelp='cd ~/workspace/projects/meetup_help'

alias datehelp='cd ~/workspace/projects/pycon2019/pycon-us-2019-dealing-with-datetimes && source activate dt'


export WORKON_HOME=~/.virtualenvs/
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
source /home/faris/.local/bin/virtualenvwrapper.sh


GPG_TTY=$(tty)
export GPG_TTY


alias wing='cd ~/workspace/projects/justwingit'
