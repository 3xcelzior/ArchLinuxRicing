#
# ~/.bashrc
#

alias starwars='telnet towel.blinkenlights.nl'
alias badexcuse='telnet towel.blinkenlights.nl 666 '
alias hack=' telnet telehack.com'
alias MUD='telnet aardmud.org'
alias chess='telnet freechess.org'
alias Noir='telnet mucks.cyberleo.net 7878'


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
##PS1='┌─┤ \u@\h │───────────────────────────────────────────────────────────────────────────────────│ \W │\n└───│ \A │────<<< '
PS1="\[$(tput setaf 1)\]┌─╼\[$(tput setaf 5)\] [\u]\[$(tput setaf 1)\] ───\[$(tput setaf 7)\] [\w]\n\[$(tput setaf 1)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 1)\]└────╼\"; else echo \"\[$(tput setaf 1)\]└╼\"; fi) \[$(tput setaf 7)\]"


screenfetch

##figlet ArchLinux

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
