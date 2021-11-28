# Useful shell script that alerts when a open spot is available.
while :;
do clear;
  curl https://www.cvs.com/vaccine/intake/ 2>/dev/null | /usr/bin/grep "We are adding"
  if curl https://www.cvs.com/vaccine/intake/ 2>/dev/null | /usr/bin/grep "We are adding"; then
    say "No vaccine appointment!!!"
  else
    say "Vaccine appointment available!!!"
  fi
  sleep 30;
done
