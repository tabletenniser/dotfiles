#/bin/sh

TOTAL_MEM=$(free -mht | command grep Total: | awk '{print $2}')
FREE_MEM=$(free -mht | command grep Total: | awk '{print $4}')

DARKGREY="$(tput sgr0 ; tput bold ; tput setaf 0)"
RED="$(tput sgr0 ; tput setaf 1)"
GREEN="$(tput sgr0 ; tput setaf 2)"
BLUE="$(tput sgr0 ; tput setaf 4)"
NC="$(tput sgr0)" # No Color

echo "${GREEN}
        |         Welcome aboard captain ${RED}$(whoami)!${GREEN}
       / \        Today is ${RED}$(date)${GREEN}, we are ${RED}$(uptime -p)${GREEN}.
      / _ \       
     |.o '.|	  Space vessel computer:
     |'._.'|     	Load: ${RED}$(uptime | command grep -ohe 'load average[s:][: ].*' | cut -d ':' -f2)${GREEN}
     |     |       	Disk: ${RED}$(df -hT / | command grep /)${GREEN}
   ,'|  |  |'.     	Memory Total: ${RED}${TOTAL_MEM}${GREEN}; Free: ${RED}${FREE_MEM}${GREEN}
  /  |  |  |  \    	IP address: ${RED}$(ip route | command grep default | awk '{print $7}')${GREEN}
  |,-'--|--'-.|    	Gateway: ${RED}$(ip route | command grep default | awk '{print $3}')${DARKGREY}
${NR}"
