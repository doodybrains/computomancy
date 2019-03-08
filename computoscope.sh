#!/bin/bash

if [ ! -d "tree.txt" ]; then
  touch tree.txt
fi

cd
echo " "
echo " "
echo "                              📁 💫 📁 💫 📁 all of the folders are aligned 📁 💫 📁 💫 📁"
echo " "
sleep 1
echo " "
echo "         💀 📁 💀 📁 💀 📁 but Downloads/ is in retrograde 📁 💀 📁 💀 📁 💀"
echo " "
echo " "
echo "                     📁 📁 📁 one moment... 📁 📁 📁 "
echo " "
echo " "

find . -print 2>&1 | grep -v "Permission denied" | sed -e 's;[^/]*/;📁   ;g;s;   |; 📁;g' > ./computomancy/tree.txt

cd computomancy

# echo "total number of files:"
# wc -l tree.txt
echo " "
echo " "

grep '[.]jpg$' tree.txt | tail -1
echo " "
grep '[.]png$' tree.txt | tail -1
echo " "
grep '[.]gif$' tree.txt | tail -1
echo " "
grep '[.]pdf$' tree.txt | tail -1
echo " "
grep '[.]md$' tree.txt | tail -1
echo " "
grep '[.]txt$' tree.txt | tail -1
echo " "
grep '[.]json$' tree.txt | tail -1
echo " "
grep '[.]html$' tree.txt | tail -1
echo " "
grep '[.]yml$' tree.txt | tail -1
echo " "
grep '[.]js$' tree.txt | tail -1
echo " "
grep '[.]ino$' tree.txt | tail -1
echo " "
grep '[.]py$' tree.txt | tail -1
echo " "
echo " "
echo " "


# echo "jpg"
# grep '[.]jpg$' tree.txt | wc -l
# echo " "
# grep '[.]jpg$' tree.txt | tail -1
# echo " "
# echo " "
#
# echo "png"
# grep '[.]png$' tree.txt | wc -l
# echo " "
# grep '[.]png$' tree.txt | tail -1
# echo " "
# echo " "
#
# echo "gif"
# grep '[.]gif$' tree.txt | wc -l
# echo " "
# grep '[.]gif$' tree.txt | tail -1
# echo " "
# echo " "
