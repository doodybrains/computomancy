#!/bin/bash

cd
echo " "
echo " "
echo "                              📁 💫 📁 💫 📁 all of your folders are aligned 📁 💫 📁 💫 📁"
echo " "
sleep 1
echo " "
echo "         💀 📁 💀 📁 💀 📁 but Downloads/ is in retrograde 📁 💀 📁 💀 📁 💀"
echo " "
sleep 1
echo " "
echo "                     📁 📁 📁 one moment... 📁 📁 📁 "
echo " "
echo " "

find . -iname "*.${1}" -print 2>&1 | grep -v "Permission denied" | sed -e 's/^/./' > ./computomancy/files.txt

find . -iname "*.${1}" -print 2>&1 | grep -v "Permission denied" | sed -e 's;[^/]*/; 📁;g;s; |; 📁;g' > ./computomancy/tree.txt

cd computomancy

echo " "
echo " "

#this might make your computer explode...
max=0
deepestDarkestFile=0
while read f; do
  count=$(echo ${f} | grep -o '📁' | wc -l)
  echo -n "$f "
  if (( $count > $max )); then
    max=$count;
    deepestDarkestFile=$f;
  fi;
done <./tree.txt

maxPath=0
deepestDarkestPath=0
while read path; do
  countPath=$(echo ${path} | grep -o '/' | wc -l)
  if (( $countPath > $maxPath )); then
    maxPath=$countPath;
    deepestDarkestPath=$path;
  fi;
done <./files.txt

cat $deepestDarkestPath > ./deepest-file.txt

sed -i '' 's/sun/file/g' ./computoscope.txt
sed -i '' 's/Moon/browser/g' ./computoscope.txt
sed -i '' 's/planet/folder/g' ./computoscope.txt
sed -i '' 's/Taurus/computer/g' ./computoscope.txt
sed -i '' 's/lunar/ssh/g' ./computoscope.txt
sed -i '' 's/Uranus/Caches/g' ./computoscope.txt
sed -i '' 's/Jupiter/Calendars/g' ./computoscope.txt
sed -i '' 's/Mars/Desktop/g' ./computoscope.txt
sed -i '' 's/MaxFolders/${max}/g' ./computoscope.txt
sed -i '' 's/FillInSine/${deepestDarkestFile}/g' ./computoscope.txt

xxd -b ./deepest-file.txt > ./computational-sine.txt

sed -i '' 's/1/📂/g' ./computational-sine.txt
sed -i '' 's/0/📁/g' ./computational-sine.txt

echo " "
echo " "
echo " "
echo " "
echo "your computational sine is $max folders deep"
sleep 2
echo " "
echo " "
echo " "
echo "              ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "       📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo "     getting computoscope                  ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "            📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo " "
echo " "
sleep 2
open $deepestDarkestPath
cat ./computational-sine.txt
sleep 2
open ./computoscope.txt
