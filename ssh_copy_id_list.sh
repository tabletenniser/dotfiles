#!/bin/sh
#ug132 – ug180.eecg.utoronto.ca AND ug201 – ug249.eecg.utoronto.ca
for num in {132..140}
do
    # echo "wangze1@ug"$num".eecg.utoronto.ca"
    host="wangze1@ug"$num".eecg.utoronto.ca"
    # echo "ssh-copy-id $host"
    ssh-copy-id $host
done
