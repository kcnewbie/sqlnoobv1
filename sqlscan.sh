#!/bin/bash
#coded by kcnewbie
#thanks to NMAP

echo "             SqlNoob v.1 Scanner           "
echo " ------------------------------------------"
echo "| usage for mass: ./sqlscan.sh -f site.txt |"
echo " ------------------------------------------"


case $1 in
	-f) cat $2| for i in $(cat $2); do nmap -sV --script=http-sql-injection $i; done;;
	-s) $2 | nmap -sV --script=http-sql-injection $2 ;;

esac

