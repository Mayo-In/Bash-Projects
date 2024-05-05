#!/bin/bash
# Written by Mayuri
# Helps to list and sort the files in repository as per the requirememnt 

read -p "Enter the directory path : " path

echo
echo "1. Only list all the files in directory."
echo "2. List and sort the files in directory."
echo "3. sort in Ascending order."
echo "4. sort in Descending order."
echo
read -p "Select the listing type : " choice

case $choice in

1 ) echo "You have selected only listing of the files."
     ls $path;;
2 ) echo "You have selected listing and sorting of the files."
     ls $path | sort;;
3 ) echo "You have selected listing and Ascending sorting of the files."
    ls -la $path>result.txt 
    awk '{print $5 $9}' result.txt | sort -n ;;
4 ) echo "You have selected listing and Dscending sorting of the files."
    ls -la $path>result.txt 
    awk '{print $5 $9}' result.txt | sort -rn ;; 
*) echo "Please enter correct choice.";;
esac
