#!/bin/bash

for item in /data-fast/twitter2020/geoTwitter20*.zip; do
    nohup ./src/map.py --input_path=$item &
done
