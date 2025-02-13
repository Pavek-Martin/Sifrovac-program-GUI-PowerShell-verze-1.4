#!/usr/bin/bash
clear

array=("641" "732" "1098" "1281" "1464" "1840" "1992")

delka_array=${#array[@]}
for ((i = 0; i < $delka_array; i++ )); do
klic=${array[$i]}
echo $klic
rm -f $klic"x.txt"
sleep 1
rm -f $klic"xSort.txt"
sleep 1

for y in {01..30}; do
#echo "" > $klic"x.txt"
#cat "vysledky_pro_"$klic"_pouziti_jednoho_souboru_klice_test_"$y".txt" | tail -n 1; done >> $klic"x.txt"
cat "vysledky_pro_"$klic"_pouziti_jednoho_souboru_klice_test_"$y".txt" | tail -n 1 >> $klic"x.txt"
done

cat $klic"x.txt" | sort -r > $klic"xSort.txt"
sleep 1

done


