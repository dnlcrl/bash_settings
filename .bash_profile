export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

function ff { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; };\

function cdff { cd "`ff $@`"; };

function cbff { echo -ne "`ff $@`" | pbcopy; };

PS1='\h:\W \u\$ '  # Default

CURRENTUSER=`whoami`
if [ "$CURRENTUSER" = "root" ]; then
  PS1='\[\e[0;31m\]\h:\w \u\n\$ \[\e[0m\] '
else
  PS1='\[\e[0;32m\]\h:\w \u\n\$ \[\e[0m\]'
fi

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
