export CLICOLOR=1

#colors
black=$(tput -Txterm setaf 0)
red=$(tput -Txterm setaf 1)
green=$(tput -Txterm setaf 2)
yellow=$(tput -Txterm setaf 3)
dk_blue=$(tput -Txterm setaf 4)
pink=$(tput -Txterm setaf 5)
lt_blue=$(tput -Txterm setaf 6)

bold=$(tput -Txterm bold)
reset=$(tput -Txterm sgr0)

#pwd, time, user, and computer name in terminal line. 
export PS1='\n\[$bold\]\[$black\][\[$dk_blue\]\@\[$black\]]-[\[$green\]\u\[$yellow\]@\[$green\]\h\[$black\]]-[\[$pink\]\w\[$black\]]\[\033[0;33m\]\[\033[00m\]\[$reset\]\n\[$reset\]\$ '

export LSCOLORS=GxFxCxDxBxegedabagaced

#aliases
alias webroot='cd /var/www/html/'
alias modifyhost='sudo vim /etc/hosts'
alias modifybash='sudo vim ~/.bash_profile'
alias cpwd='pwd | pbcopy'
