#!/usr/bin/env bash
#(okay, there are bash functions in here too)

# Make Terminal Better...
mkcd()
{
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}
mkmv()
{
	mkdir -p -- "$2" &&
		mv "$1" "$2"
}
mvcd()
{
	mv "$1" "$2" &&
		cd -P -- "$2"
}
programming()
{
	cd $HOME/pr0gramming/
}
mkcdv()
{
    #BASEDIR=$(pwd)
    mkdir -p -- "$1" &&
        cd -P -- "$1" &&
        vim "$2"
}
rl()
{
  grep -rl "$2" .
}
f()
{
   find . -iname "*$1*" ${@:2}
}
r()
{
   grep "$1" ${@:2} -R
}
#clone()
#{
#   git clone $2
#
#   cd $2
#}

#Aliases - More value for ea keystroke!
alias cl='clear'
alias g+='g++ -pedantic -Wall -Werror -W -O2 -g -std=c++11 -o prog' # Jason Groven recommends using -O2 for optimizing code
alias gc='gcc -pedantic -Wall -Werror -W -O2 -g -o cprog' # Jason Groven recommends using -O2 for optimizing code
alias v='vim'
alias ndkbuild='$HOME/Library/Android/sdk/ndk-bundle/ndk-build'
alias src='source'
alias srb="source ~/.bashrc 2> /dev/null && source ~/.bash_profile 2> /dev/null && source ~/.bash_aliases 2> /dev/null"
alias ndk='cd /Users/DarkSide/Desktop/430ffmpegandroid/newGithubTut/android-ndk-r11c'
alias jaguar='ssh lshort2@jaguar.csuchico.edu'
alias qq='echo "gg n00b <(*_*)>" && sleep 0.3 && exit'
alias pdoc='perldoc'
alias prl='perl'
alias py='python'
alias py3='python3'
alias vprof='vim ~/.bash_profile'
alias vrc='vim ~/.bashrc'
alias cls='clear && ls'
alias clels='clear && ls'
alias pull='git pull'
alias push='git push'
alias commit='git commit'
alias add='git add'
alias checkout='git status'
alias checkout='git checkout'
alias stash='git stash'
alias m='man'
alias clone='git clone'
alias ..='cd ..'
alias ...='cd ../..'
alias :q='echo "this is not vim, you n00b." && sleep 2 && exit'
alias dot='cd $HOME/.dotFiles'
alias vdiff='vimdiff'
alias la='ls -a'
alias status='git status'
alias tar?='echo "tar -czvf nameOfArchive.tar.gz /path/to/dirOrFile"'

#alias p='perl'

