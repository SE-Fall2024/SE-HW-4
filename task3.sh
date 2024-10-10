awk -F',' 'NR > 1 && $3 == 2 && $13 == "S" { $6 = ($6 == "male" ? "M" : "F"); if ($7 != "") { sum += $7; count++ } print $0 } END { if (count > 0) print "Average Age:", sum / count }' titanic.csv
