# Useful shell script that alerts when a open spot is available.
while :;
do
  echo "Checking for open spot at time: $(date)"
  curl 'https://www.omnipong.com/T-tourney.asp?t=102&r=4084&h='  --compressed 2>/dev/null | rg -o --pcre2 "(?<=>).*?(?=<)" | /usr/bin/grep -E "RR|Total" | /usr/bin/grep -A 1 Open | rg -o "Remaining slots: \d+"
  if curl 'https://www.omnipong.com/T-tourney.asp?t=102&r=4084&h='  --compressed 2>/dev/null | rg -o --pcre2 "(?<=>).*?(?=<)" | /usr/bin/grep -E "RR|Total" | /usr/bin/grep -A 1 Open | rg -o "Remaining slots: \d+" | grep -v 0; then
    say "Open spot is available!!!"
  else
    echo "No open spot available!!!"
  fi
  sleep 60;
done
  # timeSlots=`curl 'https://my.uscis.gov/appointmentscheduler-appointment/field-offices/state/WA'   -H 'authority: my.uscis.gov'   -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="96", "Google Chrome";v="96"'   -H 'accept: application/json'   -H 'x-newrelic-id: Uw4AUFRSGwEDVFVUAAkF'   -H 'x-csrf-token: GvxVo5uWHvjkq5RoOCYkXXbw5MTWd1YQwQvPoYiYN8fig2K4XPhxmg7Z7QO9bR1zwVzA74/rVf55o0sHFpwlEA=='   -H 'sec-ch-ua-mobile: ?0'   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'   -H 'sec-ch-ua-platform: "macOS"'   -H 'sec-fetch-site: same-origin'   -H 'sec-fetch-mode: cors'   -H 'sec-fetch-dest: empty'   -H 'referer: https://my.uscis.gov/appointmentscheduler-appointment/ca/en/office-search'   -H 'accept-language: en-US,en;q=0.9'   -H 'cookie: _myuscis_session_rx=197649480232538b75b0c011e707b536; browser.timezone=America%2FLos_Angeles; _ga=GA1.3.2095828179.1640682621; _gid=GA1.3.816606026.1640682621; __utma=163591203.2095828179.1640682621.1640682621.1640682621.1; __utmc=163591203; __utmz=163591203.1640682621.1.1.utmcsr=google|utmccn=(organic)|utmcmd=organic|utmctr=(not%20provided); QSI_HistorySession=https%3A%2F%2Fmy.uscis.gov%2Fen%2Fappointment%2Fv2~1640682623059%7Chttps%3A%2F%2Fmy.uscis.gov%2Fen%2Fappointment%2Fv2%2Fmanage~1640682639012%7Chttps%3A%2F%2Fmy.uscis.gov%2Fen%2Fappointment%2Fv2~1640682646721%7Chttps%3A%2F%2Fmy.uscis.gov%2Fen%2Fappointment%2Fv2%2Fmanage~1640682678633%7Chttps%3A%2F%2Fmy.uscis.gov%2Fen%2Fappointment%2Fv2~1640682679812; _myuscis_session=T1Y0YTRKaVM3M1IvTWdtTDBlUGJ0c3NkYVIyWXJtcC9oR0U4WVI3R1lnZnlhV05ZWjNjVGsreW1YMDZoUHh3T01Gb1FMcTVCekVuUzZJZmVWTGx0a0NMTzFPY2ozbkYrdFFBSElCK2VzL1Z0L3NCamhnT3FJaEpHeGhVcUJ5dExMd2pFYTlkWlMwRlZrZS9FSHVBcnlRPT0tLWQvaW9icXV4LzRJRzBJMS9YSzJyNGc9PQ%3D%3D--28c29f5304128c77ba2880ebf6311506d174dde4; __utmb=163591203.8.9.1640683835839'   -H 'if-none-match: W/"f9c67f02640db21f4ee08fd443180f09"'   --compressed 2>/dev/null | jq -c '.[] | select(.description | contains("SEATTLE")) | {timeSlots}'`
  # echo $timeSlots
  # say $timeSlots
  # if curl https://www.paddlepalace.com/Nittaku-J-Top-40-Training-Ball-Bulk-Pack/productinfo/BNAJK/WHITE/ 2>/dev/null | /usr/bin/grep "10-Dozen White" | grep "In Stock"; then
  #   say "Training balls are in stock!!!"
  # else
  #   echo "Training balls are out of stock!!!"
  # fi
