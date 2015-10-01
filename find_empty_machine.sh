#!/bin/sh
#ug132 – ug180.eecg.utoronto.ca AND ug201 – ug249.eecg.utoronto.ca
for num in {132..140}
do
    host="wangze1@ug"$num".eecg.utoronto.ca"
    echo "========================="$host"==========================="
    # echo "ssh $host who"
    OUTPUT="$(ssh $host who)"
    echo "$OUTPUT"
done
