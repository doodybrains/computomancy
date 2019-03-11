#!/bin/bash
if [ ! -d "tree.txt" ]; then
  touch tree.txt
fi

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

find . -iname "*.${1}" -print 2>&1 | grep -v "Permission denied" | sed -e 's%/[^/]*$%/%' > ./computomancy/files.txt

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

# need to connect these two, horoscope should read from cine file

foldersArray=()
while read line; do
  for word in $line; do
    foldersArray+=($word)
  done
done < files.txt

sed -i '' 's/planet/folder/g' ./horoscope.txt
sed -i '' 's/Taurus/computer/g' ./horoscope.txt
sed -i '' 's/lunar/ssh/g' ./horoscope.txt
sed -i '' 's/Uranus/Caches/g' ./horoscope.txt
sed -i '' 's/Jupiter/Calendars/g' ./horoscope.txt
sed -i '' 's/Mars/Desktop/g' ./horoscope.txt

echo " "
echo " "
echo " "
echo "your computational sine $deepestDarkestFile is $max folders deep"
echo " "
echo " "
echo " "
echo "              ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "       📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo "                       ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "            📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo " "
echo " "
cat ./horoscope.txt
echo " "
echo " "
echo "      ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "                  📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo "                           ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "        📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
