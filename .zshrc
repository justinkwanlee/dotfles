function parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Available Color List - https://www.ditig.com/256-colors-cheat-sheet
COLOR_GRAY=%F{245}
COLOR_MAGENTA=%F{91}
COLOR_GREEN=%F{2}
COLOR_SKY_BLUE=%F{111}
BOLD=%B

setopt PROMPT_SUBST
export PS1='${COLOR_SKY_BLUE}%n [$(date +%d%b%Y\ @\ %I:%M:%S%p)] ${BOLD}${COLOR_MAGENTA}%~${COLOR_GREEN}$(parse_git_branch) $%F{white} '

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

alias modifyhost='sudo vim /etc/hosts'
alias modifybash='sudo vim ~/.bash_profile'
alias cpwd='pwd | pbcopy'
