# Useful shell script that alerts when a open spot is available.
while :;
do clear;
  curl https://www.paddlepalace.com/Nittaku-J-Top-40-Training-Ball-Bulk-Pack/productinfo/BNAJK/WHITE/ 2>/dev/null | /usr/bin/grep "10-Dozen White" | grep "Out"
  if curl https://www.paddlepalace.com/Nittaku-J-Top-40-Training-Ball-Bulk-Pack/productinfo/BNAJK/WHITE/ 2>/dev/null | /usr/bin/grep "10-Dozen White" | grep "In Stock"; then
    say "Training balls are in stock!!!"
  else
    echo "Training balls are out of stock!!!"
  fi
  sleep 30;
done
