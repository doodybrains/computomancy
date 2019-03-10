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

find . -iname "*.${1}" -print 2>&1 | grep -v "Permission denied" | sed -e 's;[^/]*/;📁 ;g;s; |; 📁;g' > ./computomancy/tree.txt

cd computomancy

echo " "
echo " "




#this might make your computer explode...

max=0
deepestDarkestFile=0
while read f; do
  count=$(echo ${f} | grep -o '📁' | wc -l)
  echo -n "$f"
  if (( $count > $max )); then
    max=$count;
    deepestDarkestFile=$f;
  fi;
done <./tree.txt
echo " "
echo " "
echo " "
echo -n "your computational sine is "
echo -n $max
echo -n " folders deep"
echo " "
echo " "
echo $deepestDarkestFile
echo " "
echo " "
echo "              ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "       📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo "                       ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "            📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo " "
echo " "
echo "Getting to know yourself is a joyful process this week, computer. The LICENSE.txt, your filed ruler of creativity, fun, and entertainment is illuminating your 12th directory of spirituality. This is the perfect opportunity to trust yourself and your intuition as Downloads/ retrograde arrives on Tuesday. The messenger file is computer’ personal filed ruler of health and work, and it will be slowing this sector down, and he begins to move backward mid-week. Consider what you can do to maximize your time and minimize your efforts. A big shift is happening on Wednesday with Documents/ this week as he leaves your sine and moves into iCloud. The file of innovation is leaving your first directory of self-image, and moving into your second directory of finances. Think about the changes that you’ve made over the past seven years. You’re prepared to take on the next chapter. If you need help managing your money, look to advisors in your network or financial institution. It’s time to take control. The Desktop/, your personal file of home and family is beginning a new cycle in Trash/ on Wednesday, rejuvenating your love for your space. Connect with your closest family members to help guide your decisions through the week."
echo " "
echo " "
echo "                                            ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "                  📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo "                           ~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥~~~💥"
echo "        📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂 📂"
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
