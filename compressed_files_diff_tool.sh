#/bin/bash

# Reference: https://stackoverflow.com/a/61113635/2063546 
# Note that: It is applicable to most compressed files such as zip.

FILE1="/to/path/JAR_FILE_1.jar"
FILE2="/to/path/JAR_FILE_2.jar"

echo "See if there are some differences between those 2 JAR Files:"
colordiff \
  <(unzip -vqq "$FILE1"  | awk '{$2=""; $3=""; $4=""; $5=""; $6=""; print}' | sort -k3) \
  <(unzip -vqq "$FILE2"  | awk '{$2=""; $3=""; $4=""; $5=""; $6=""; print}' | sort -k3)
echo "==========================================================="
