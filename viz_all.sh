#!/bin/bash

# Declare array of hashtags
declare -a StringArray=("코로나바이러스"  "コロナウイルス" "冠状病毒" "covid2019" "covid-2019" "covid19" "covid-19" "coronavirus" "corona" "virus" "flu" "sick" "cough" "sneeze" "hospital" "nurse" "doctor")

for hash in ${StringArray[@]}; do
   echo $hash
   python3 ./src/visualize.py --input_path=reduced.lang --key=#$hash | head > viz/$hash-lang
   python3 ./src/visualize.py --input_path=reduced.country --key=#$hash | head > viz/$hash-country
done

python3 ./src/visualize.py --input_path=reduced.lang --key=_all | head > viz/_all-lang
python3 ./src/visualize.py --input_path=reduced.country --key=_all | head > viz/_all-country

