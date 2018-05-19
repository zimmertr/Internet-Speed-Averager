#!/bin/bash
let downSum=0
let upSum=0

while read num; do
    downSum=$(echo "$downSum + $num" | bc)
done <Download.results

while read num; do
    upSum=$(echo "$upSum + $num" | bc)
done <Upload.results


let sampleSize=$(wc -l < Download.results)
let avgDown=$(echo "$downSum / $sampleSize" | bc) 
let avgUp=$(echo "$upSum / $sampleSize" | bc) 


let maxDown=0
let maxUp=0
while read num; do
    if [ "$num" -gt "$maxDown" ]; then
        maxDown=$num
    fi
done <Download.results

while read num; do
    if [ "$num" -gt "$maxUp" ]; then
        maxUp=$num
    fi
done <Upload.results

let minDown=999990
let minUp=999990
while read num; do
    if [ "$num" -lt "$minDown" ]; then
        minDown=$num
    fi
done <Download.results

while read num; do
    if [ "$num" -lt "$minUp" ]; then
        minUp=$num
    fi
done <Upload.results

echo Sample Size: $sampleSize
echo

echo "**Sums**"
echo Down: $downSum 
echo Up  : $upSum 
echo

echo "**Avg**"
echo Down: $avgDown
echo Down: $(echo "$avgDown / 8" | bc) MB/s
echo Up: $avgUp Mb/s
echo Up: $(echo "$avgUp / 8" | bc) MB/s
echo

echo "**Max**"
echo Down: $maxDown  Mb/s
echo Down: $(echo "$maxDown / 8" | bc) MB/s
echo Up: $maxUp Mb/s
echo Up: $(echo "$maxUp / 8" | bc) MB/s
echo

echo "**Min**"
echo Down: $minDown  Mb/s
echo Down: $(echo "$minDown / 8" | bc) MB/s
echo Up: $minUp Mb/s
echo Up: $(echo "$minUp / 8" | bc) MB/s
echo
