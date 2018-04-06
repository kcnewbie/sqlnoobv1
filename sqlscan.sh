#!/bin/bash
#coded by kcnewbie
#thanks to NMAP

echo -e "SqlNoob v.1 Scanner"
echo -e " -------------------------------"
echo -e "| usage: ./sqlscan.sh           "
echo -e "--------------------------------"


case $1 in
	-f) cat $2| for i in $(cat $2); do nmap -sV --script=http-sql-injection $i; done;;
	-s) read $2 | nmap -sV --script=http-sql-injection $2 ;;

esac

