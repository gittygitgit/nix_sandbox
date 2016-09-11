#!/bin/sh

 sed 's:^\(.*\)$:insert into dbo.eo_trade_action (a, b, c) values (\1);:' < raw1.csv
 
sed '-e s:^\(.*\)$:insert into dbo.eo_trade_action (a, b, c) values (\1);:' -e 's/(.*,?/(22,/'   < raw1.csv

