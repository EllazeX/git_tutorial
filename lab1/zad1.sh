#!/bin/bash

cd ~;
mkdir cw1;
cd cw1;
echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit" > plik.txt;
mv plik.txt plik2.txt;
mkdir test;
cp plik2.txt test/test.txt;
cp -r test test2;
cd ~;
rm -r cw1;
