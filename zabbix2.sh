#!/bin/sh

# Valiable
ZBX_PASS=/usr/local/etc/zabbix2
ZBX_RC=/usr/local/etc/rc.d

# add Zabbix-agent
/usr/sbin/pkg_add -r zabbix2-agent

# copy configure 
/bin/cp ${ZBX_PASS}/zabbix_agentd.conf.sample ${ZBX_PASS}/zabbix_agentd.conf

# Value reWritable
sed -i '' -e 's/Server=127.0.0.1/Server={ZABBIX_SERVER_IP}/' ${ZBX_PASS}/zabbix_agentd.conf
sed -i '' -e 's/ServerActive=127.0.0.1/ServerActive={ZABBIX_SERVER_IP}/' ${ZBX_PASS}/zabbix_agentd.conf
sed -i '' -e 's/Hostname=Zabbix\ server/Hostname={SERVER_NAME}/' ${ZBX_PASS}/zabbix_agentd.conf
sed -i "" -e 's/\#\ EnableRemoteCommands=0/EnableRemoteCommands=1/' ${ZBX_PASS}/zabbix_agentd.conf

# auto start config
echo "zabbix_agentd_enable=\"YES\"" >> /etc/rc.conf

# Zabbix agent start
${ZBX_RC}/zabbix_agentd start
