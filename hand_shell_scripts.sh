Some Handy Tips
#
# How many time System Rebooted
#
last | grep -i boot

#
# Waht is resource limits
#

ulimit -a


#
# Postgres Restart  with logging
#

pg_ctl -D /var/lib/postgres/data/ -l pg_log.txt -o -i restart

p

#
# Viewing at Various Phyical Terminal Screen
#
less -f /dev/vcs

#
# Add/Remove Default GateWay
#

route del default
route add default gw 192.168.1.253


#------------------------------------------------------
#Searching file "N minuts ago"
#------------------------------------------------------
N=extact
-N=less than
+N= greater than

find  -cmin -<N>  -name "*.php"
find  -cdate-<N>  -name "*.php"

#------------------------------------------------------


%s/\.$\([0-9a-zA-Z_\[\].'$]*\) \./\<\<\1\>\>/ig
perl -pi -e s/OldText/NewText/g file.txt //replace using perl

perl -pi -e s/OldText/NewText/g `find . -name "*.conf"` //replace using perl in multiple files
%s/\(\t[0-9]*\)/\1\t/gci


#------------------------------------------------------
copy command in psql for dumping sql queries format

pg_dump -h 172.16.0.4 -u -D -t courses unitek_courses > dumplat.sql
psql -Uroot unitek_courses -P format=u -P fieldsep='\t' -P tuples_only -c 'select * from courses limit 10'

#------------------------------------------------------
hdparm -i /dev/hdx (where x is a, b, c etc).

#------------------------------------------------------

PS1='(\[$(tput md)\]\t <\w>\[$(tput me)\]) $(echo $?) \$ '

#------------------------------------------------------
Only Dir listing :->
ls -d */



#--------------------------------------Random Number


previous day
date -v-1d +"%d-%m-%Y"

#------------------------------------------------------
Geting a dilimiter base output in oracle


select max (x) from (select length(SMRFNBR||'|'||SMVENDOR||'|'||SMMANF||'|'||SMBRAND||'|'||SMVENDORSKU||'|'||SMTITLE||'|'||SMOFFERTEXT||'|'||SMDESC||'|'||SMCAT||'|'||SMSPERD||'|'||SMPRICE||'|'||SMPRNBR||'|'||SMPVRNBR) x from skumaster where smprnbr is null);
--------------------------

set pages 10000
set linesize 170
spool skuupdate
select SMRFNBR||'|'||SMVENDOR||'|'||SMMANF||'|'||SMBRAND||'|'||SMVENDORSKU||'|'||SMTITLE||'|'||SMOFFERTEXT||'|'||SMDESC||'|'||SMCAT||'|'||SMSPERD||'|'||SMPRICE||'|'||SMPRNBR||'|'||SMPVRNBR from skumaster where smprnbr is null;
spool off;



#------------------------------------------------------
Java scripts
http://www.mattkruse.com/javascript/selectbox/



#  freebsd tuning #
# http://rerepi.wordpress.com/2008/04/19/tuning-freebsd-sysoev-rit/


