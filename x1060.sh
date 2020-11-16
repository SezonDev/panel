cd /var/www/xtream

wget http://kodi.ps/iptv/x1060.tar.gz

tar -xvzf x1060.tar.gz

wget http://127.0.0.1:8787/downloads/iptv_panel_pro.zip -O /tmp/iptv_panel_pro.zip

cd /root

wget http://127.0.0.1:8787/downloads/install_iptv_pro.zip

unzip install_iptv_pro.zip
cd
sudo php install_iptv_pro.php


sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"

sudo /sbin/iptables -t nat -A OUTPUT -p tcp --dport 8787 -j DNAT --to-destination 127.0.0.1:8787
sudo /sbin/iptables -t nat -A OUTPUT -p tcp --dport 443 -j DNAT --to-destination 127.0.0.1:443
