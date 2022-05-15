# Useful shell script that alerts when a open spot is available.
while :;
do clear;
  # Maps to calgary,helifax,montreal,ottawa,quebec city,toronto and vancouver
  earliest_date='2023-12-31'
  earliest_index='0'
  for i in {89..95}
  do
    resp=`curl "https://ais.usvisa-info.com/en-ca/niv/schedule/37089586/appointment/days/${i}.json?appointments\[expedite\]=false"   -H 'Accept: application/json, text/javascript, */*; q=0.01'   -H 'Accept-Language: en-US,en;q=0.9'   -H 'Connection: keep-alive'   -H 'Cookie: _ga=GA1.2.45772946.1652643649; _gid=GA1.2.102225295.1652643649; __utma=35557041.45772946.1652643649.1652643649.1652643649.1; __utmc=35557041; __utmz=35557041.1652643649.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); __utmb=35557041.4.9.1652643694720; _yatri_session=SUQxV0RFRElmME9iQ0RBVEFWK0F5VFI1MlZ4Z3E2K1gxNlRwenNGVXFiTEo0VlBqR25YUUZUYjVqaHdHdFZMZjVSa0p3bjgwSWl6WkxmM1JpZDhXcytVNFkzRVd6MWFWTnF3VFJMOUQzOU5lK0N5RDg0NEhMaW91eU53aUlDSXFINlRoS0xmUUFvbVkxVFZia1RnYXdndjV3UVBEbE1yZ2ZocC9oTSt3L3ZvZ2pDK0RCREZxQXpiVVlKSGNuTndWTCswVU5ybE9LSEVoL2JpMWJFQ0hKdlFUMS9HcllFeTlWOCt6blAzNVZkNkZJUURZaGRSbkk2ejhrWmh0eDNUNW9iVE5XUDBBeS9vTzlHeFNKZUNHM1dsazREM1NYOURHdk10YkxxSnVsbGxFTXIwbWxJK2g3VjNaNE5INGhjOTB1WCt6Rzk0WU55RGduT2FrcWdSYW9Sa2hqKzJTellTd1RkdnBmdHJaRkdCNGtqOHhtT2dJWkZZRWpFR2tEZTYrdGFxQjhhZG1JNUlYd1dZdVUvUHZBV0ltdUlQVUpYYWFCb0k2VjZ4dDVJaGsya0tIQzBMQjliUSszWm53YWJWWUxvOXNjUUxxc3RUa2ZGTVFmNkNlaW55MGxLejQycVNLTU5nNExmMk8xRGpIYzZRK1VQdFMrMlZKRE96alJMdHJxWDZwM0hlTnJGL2RqbmxsSld3U2MrN09QRFVSOVdvdkh3azd6b0JSYUZFPS0tRlIzVXBpZ0lLWHA0M2YxZUs2REMrdz09--026169f8a85532fbde4442d415e8128702a6ccde'   -H 'Referer: https://ais.usvisa-info.com/en-ca/niv/schedule/37089586/appointment'   -H 'Sec-Fetch-Dest: empty'   -H 'Sec-Fetch-Mode: cors'   -H 'Sec-Fetch-Site: same-origin'   -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36'   -H 'X-CSRF-Token: iY+G+yXtiwm50x1ca1j9Hw2vDeNxnfLsUaP1bl8jNhwjSHkFPcQlmjaqIcK5NmMu1JyskP5MTx03aUNnctS95A=='   -H 'X-Requested-With: XMLHttpRequest'   -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="101", "Google Chrome";v="101"'   -H 'sec-ch-ua-mobile: ?0'   -H 'sec-ch-ua-platform: "macOS"'   --compressed 2>/dev/null | jq 'min_by(.date).date'`
    if [[ $? -eq 0 ]]; then
      echo $i, $resp
      (( resp < earliest_date )) && earliest_date=$resp && earliest_index=$i
    fi
    sleep 0.001;
  done
  echo "Earliest date is $earliest_date at $earliest_index"
  sleep 300;
done
