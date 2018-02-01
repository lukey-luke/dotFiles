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
  grep -rl "$1" .
}
rn()
{
  grep -rn "$1" .
}
f()
{
   find . -iname "*$1*" ${@:2}
}
r()
{
   grep "$1" ${@:2} -R
}
dlpage()
{
  wget \
    --recursive \
    --no-clobber \
    --page-requisites \
    --html-extension \
    --convert-links \
    --restrict-file-names=windows \
    --domains website.org \
    --no-parent \
      "$1"
}

# Extract function to extract many common file formats
# function from https://github.com/xvoland/Extract/blob/master/extract.sh
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in $@
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar) 
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}



#Aliases - More value for ea keystroke!
alias cl='clear'
alias g+='g++ -pedantic -Wall -Werror -W -O2 -g -std=c++11 -o prog' # Jason Groven recommends using -O2 for optimizing code
alias gc='gcc -pedantic -Wall -Werror -W -O2 -g -o cprog' # Jason Groven recommends using -O2 for optimizing code
alias v='vim'
alias ndkbuild='$HOME/Library/Android/sdk/ndk-bundle/ndk-build'
alias src='source'
alias srb="source ~/.bashrc 2> /dev/null && source ~/.bash_profile 2> /dev/null && source ~/.bash_aliases 2> /dev/null"
alias ndk='cd /Users/DarkSide/Desktop/430ffmpegandroid/newGithubTut/android-ndk-r11c'
alias desktop='cd ~/Desktop'
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
alias clone='git clone'
alias pull='git pull'
alias pul='git pull'
alias push='git push'
alias commit='git commit'
alias add='git add'
alias branch='git branch'
alias checkout='git checkout'
alias status='git status'
alias stash='git stash'
alias poop='git stash pop'
alias m='man'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias :q='echo "this is not vim, you n00b." && sleep 2 && exit'
alias dot='cd $HOME/.dotFiles'
alias vdiff='vimdiff'
alias la='ls -a'

