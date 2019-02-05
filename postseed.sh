rm -rf /etc/rc.local

cat << EOF > /etc/rc.local
#!/bin/bash
/etc/init.d/greenbone-security-assistant start
/etc/init.d/openvas-scanner start
/etc/init.d/openvas-administrator start
/etc/init.d/openvas-manager start
# Set msfrpcd to username "metadmin" and password "metpass123" on port 1337
/usr/bin/msfrpcd -S -U metadmin -P metpass123 -p 1337 &

exit 0
EOF

chmod 755 /etc/rc.local

update-rc.d ssh enable
update-rc.d postgresql enable
update-rc.d metasploit enable
