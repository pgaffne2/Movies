#Usage: bash script.sh wages.csv
cat $1 | sed 's/female\s/female /' | grep "female" | sort -n -k 2 | awk '{print $1,$2}' > sorted_file.csv
cat $1 | sed '/female/d' | sed 's/male\s/male /' | grep "male" | sort -n -k 2 | awk '{print $1,$2}' >> sorted_file.csv

