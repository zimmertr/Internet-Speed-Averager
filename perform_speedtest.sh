#!/bin/bash
while true
do
    date >> speedtest_results.txt
    speedtest-cli >> speedtest_results.txt
    echo >> speedtest_results.txt
done
