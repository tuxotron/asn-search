#!/bin/bash

if [ -z "$1" ]
  then
    echo "Enter the company name"
    exit 1
else
    google-chrome --headless --disable-gpu --dump-dom https://bgp.he.net/search\?search%5Bsearch%5D\=$1\&commit\=Search --virtual-time-budget=1000 > /home/chrome/page.html
    python3 /home/chrome/asn-search.py
fi
