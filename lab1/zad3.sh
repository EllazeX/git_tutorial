#!/bin/bash

mkdir folder;
touch folder/plik.txt;
ps aux >> folder/plik.txt;
df -h >> folder/plik.txt;
du -h --max-depth=1 | sort -n >> folder/plik.txt;
