#!/bin/bash
search_folder="/home/akhil/Desktop/left_deep_match/*"
folder="/home/akhil/Desktop/left_deep_match"
images=()
j=0;
for i in $search_folder
do
images[$j]=$i
j=$(expr $j + "1")
done
tLen=$(expr ${#images[@]} - "1")
echo $tLen
for(( i=0; i<$tLen; i++));
do
k=$(expr $i + "1")
i1=$(expr $i + "3")
i2=$(expr $i + "4")
b="/home/akhil/Desktop/left_deep_match_features/$k.txt"
im1="$folder/$i1"
im2="$folder/$i2"
echo $im1
echo $im2
echo $b
./deepmatching $im1 $im2 -downscale 2 -out $b
done


