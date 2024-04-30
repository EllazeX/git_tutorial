#!/bin/bash

mkdir cw2;
cd cw2;
echo "plik 1" > plik1.txt;
echo "plik 2" > plik2.txt;
echo "plik 3" > plik3.txt;
mkdir folder1 folder2 folder3;
mv plik1.txt ../cw2/folder1;
mv plik2.txt ../cw2/folder2;
mv plik3.txt ../cw2/folder3;
cd ..;
pwd > log.txt;
wc -m -l -w -c cw2/folder1/plik1.txt cw2/folder2/plik2.txt cw2/folder3/plik3.txt >> log.txt;
cat cw2/folder1/plik1.txt cw2/folder2/plik2.txt cw2/folder3/plik3.txt > suma.txt;
tac cw2/folder1/plik1.txt cw2/folder2/plik2.txt cw2/folder3/plik3.txt >> suma.txt;
grep -i -o '\bp[a-z]*\b' cw2/folder1/plik1.txt cw2/folder2/plik2.txt cw2/folder3/plik3.txt  >> log.txt;

