## Internet Speed Averager

A simple bash script that does some arithmitic on speedtest-cli results to grab the avg, min, max


Instructions for use:

0) Install speedtest-cli & bc
1) Set perform_speedtest.sh and do_math.sh to executable. 
2) Run perform_speedtest.sh for as long as you would like to collect samples.
3) Do some bash magic to turn your speedtest_results.txt into a two separate Download.results and Upload.results vertical lists of integers. 
4) Execute do_math.sh in the same directory as your two results files. 

```
Dir: /home/tj/git/Internet_Speed_Averager [master]
Usr: tj - Sat 19, 10:54AM > cat Calculated_Results.txt
Sample Size: 118

**Sums**
Down: 31743
Up : 1403

**Avg**
Down: 269
Down: 33 MB/s
Up: 11 Mb/s
Up: 1 MB/s

**Max**
Down: 283 Mb/s
Down: 35 MB/s
Up: 12 Mb/s
Up: 1 MB/s

**Min**
Down: 174 Mb/s
Down: 21 MB/s
Up: 10 Mb/s
Up: 1 MB/s
```
