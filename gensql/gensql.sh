#!/bin/sh

IFS=$','
while read -ra tokens i; do
  printf "INSERT dbo.tConnectionInformation (ApplicationId, ConnectionUrl, ConnectionInfoDescription, ConnectionGroup, ConnectionInfoWeight, ConnectionType, LastSequenceRead) VALUES ('PRDXLR', '%s', '%s', '%s', %s, '%s', 0);\n" ${tokens[0]} ${tokens[1]} ${tokens[2]} ${tokens[3]} ${tokens[4]}
  #echo "here"
  #for i in ${tokens[@]}; do
  #  echo $i
  #done
#done < urlfoo.txt > PRD1BKP.out
done < urlxlrbkp.txt > PRDXLRBKP.out
