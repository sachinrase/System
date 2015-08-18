[ -f /proc/net/if_inet6 ] && echo "IPv6 ready system" || echo "No IPv6 support found"  ;
cat /proc/sys/net/ipv6/conf/all/disable_ipv6
 
 
yinst stop -all
 
echo "net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1" >> /etc/sysctl.conf
sysctl -p
echo "options ipv6 disable=1"  >>  /etc/modprobe.conf
reboot
