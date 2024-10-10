#!/bin/bash
grep -l "sample" dataset1/* | xargs -I {} sh -c 'count=$(grep -o "CSC510" {} | uniq -c | awk "{s+=\$1} END {print s}"); if [ "$count" -ge 3 ]; then echo "$count $(wc -c < {}) {}"; fi' | gawk '{print $1, $2, $3}' | sort -k1,1nr -k2,2nr| sed 's/file_/filtered_/'
