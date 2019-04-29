#/bin/sh

echo "
        |         Welcome aboard captain $(whoami)!
       / \        Today is $(date), we are $(uptime -p).
      / _ \       
     |.o '.|	  Space vessel computer:
     |'._.'|     	$(uptime | command grep -ohe 'load average[s:][: ].*') 
     |     |       	Disk: $(df -hT / | command grep /)
   ,'|  |  |'.     	Memory Total: $(free -mht | command grep Total: | awk '{print $2}'); Free: $(free -mht | command grep Total: | awk '{print $4}')
  /  |  |  |  \    	IP address: $(ip route | command grep default | awk '{print $7}')
  |,-'--|--'-.|    	Gateway: $(ip route | command grep default | awk '{print $3}')
"
