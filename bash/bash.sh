#Aliase

alias ll="ls -alh  --time-style=long-iso"
alias sl="ls"

alias push="git status && read yes && git add --all && git commit -m\"(no message)\" && git pull --rebase && git push"


#!/bin/bash

bold=$(tput bold)
red=$(tput setaf 1)
green=$(tput setaf 2)
normal=$(tput sgr0)


function BOLD {
    echo -e "\n${bold}$1 ${normal}"
}

function HEADING1 {
    echo -e "\n${bold}####### $1 ####### ${normal}"
}

function HEADING2 {
    echo -e "\n${bold}### $1 #### ${normal}"
}

function HEADING3 {
    BOLD "$1"
}

function HEADING {
    HEADING1 "$1"
}

function ERROR {
     echo -e "\n${bold}${red}$1 ${normal}"
}

function SUCCESS {
     echo -e "\n${bold}${green}$1 ${normal}"
}
