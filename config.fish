alias v="ssh awang@192.168.153.130"
alias v2="ssh root@192.168.153.154"
alias rc="source ~/.config/fish/config.fish"
alias pi='ssh pi@198.244.107.112'
alias sec_pull='cd ~/Desktop/sec; and git pull; and openssl des3 -d -in ~/Desktop/sec/sec.enc -out ~/Desktop/sec/sec.txt; and cd -'
alias sec='vim ~/Desktop/sec/sec.txt'
alias sec_push='openssl des3 -in ~/Desktop/sec/sec.txt -out ~/Desktop/sec/sec.enc; and cd ~/Desktop/sec; and git commit -m Update_password -a; and git push; and cd -'
alias sublime='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias ck='ps aux | sort -nrk 3,3 | head -n 5'

alias gh=hg
alias sl=ls
alias l='ls -al'

set -g -x fish_greeting ''
set -g theme_color_scheme solarized
