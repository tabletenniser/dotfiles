# Useful shell script that alerts when a open spot is available.
# i=3
# echo `$(i)`
for i in {0..5000}
do
  resp=`curl "https://leetcode.com/contest/api/ranking/weekly-contest-281/?pagination=${i}&region=global"   -H 'authority: leetcode.com'   -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="98", "Google Chrome";v="98"'   -H 'x-newrelic-id: UAQDVFVRGwEAXVlbBAg='   -H 'sec-ch-ua-mobile: ?0'   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36'   -H 'content-type: application/json'   -H 'accept: application/json, text/javascript, */*; q=0.01'   -H 'x-requested-with: XMLHttpRequest'   -H 'sec-ch-ua-platform: "macOS"'   -H 'sec-fetch-site: same-origin'   -H 'sec-fetch-mode: cors'   -H 'sec-fetch-dest: empty'   -H 'referer: https://leetcode.com/contest/weekly-contest-281/ranking/4/'   -H 'accept-language: en-US,en;q=0.9'   -H 'cookie: _ga=GA1.2.1874293132.1644780773; _gid=GA1.2.1618032985.1644780773; gr_user_id=ddef6646-c823-4a33-8368-010c373635e3; 87b5a3c3f1a55520_gr_session_id=bbbc8212-c08a-4a83-af0d-c93d9b9e91ef; 87b5a3c3f1a55520_gr_session_id_bbbc8212-c08a-4a83-af0d-c93d9b9e91ef=true; __utma=217727755.1874293132.1644780773.1644780774.1644780774.1; __utmc=217727755; __utmz=217727755.1644780774.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); csrftoken=wXELloUvDr6PkFopWilwv6urCm771HQ9i8Qnq0V64UMOnQGDU0kyuu1Ayhs0zGj7; messages="c733dcfa79752f5f6f7f914014cb594f3048134d$[[\"__json_message\"\0540\05425\054\"Successfully signed in as aaron62.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzI0MTU4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGYxOTljZjYwNWJhZTEzOGI2OThkNTZmMGJkYjk2ODkxMjM2OThlZCIsImlkIjozMjQxNTgsImVtYWlsIjoidGFibGV0ZW5uaXNlckBnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFhcm9uNjIiLCJ1c2VyX3NsdWciOiJhYXJvbjYyIiwiYXZhdGFyIjoiaHR0cHM6Ly9hc3NldHMubGVldGNvZGUuY29tL3VzZXJzL2Fhcm9uNjIvYXZhdGFyXzE1NDg4MjEzMzMucG5nIiwicmVmcmVzaGVkX2F0IjoxNjQ0NzgwNzg0LCJpcCI6IjczLjk3LjEzMS4xMDkiLCJpZGVudGl0eSI6IjkxOWIzY2MzZGRlODgxNzU4YzRhYTJjYmFmNjJmN2Y2Iiwic2Vzc2lvbl9pZCI6MTc5ODQxNjd9.YktPeY5-2LfdRJj59AWK6TWqzEwXQ9sEXs7mmeR3wbg; 87b5a3c3f1a55520_gr_last_sent_sid_with_cs1=bbbc8212-c08a-4a83-af0d-c93d9b9e91ef; 87b5a3c3f1a55520_gr_last_sent_cs1=aaron62; c_a_u="YWFyb242Mg==:1nJKdB:WyKft4kODOkgpQdwmi7sDF6iPAY"; __utmb=217727755.11.9.1644781166190; 87b5a3c3f1a55520_gr_cs1=aaron62; _gat=1'   --compressed 2>/dev/null | grep -q woshi71`
  if [[ $? -eq 0 ]]; then
    echo $i
  fi
  # echo $i
  # echo $resp
  sleep 0.001;
done