# zabbix-powermta
> PowerMTA monitoring with Zabbix

# Installation

## Zabbix Agent

1. Put the scripts directory in /etc/zabbix/
2. Put the zabbix_agentd.d files in /etc/zabbix/zabbix_agentd.d/
3. The Zabbix process needs access to run the pmta command. Copy the contents
of install/zabbix-powermta-sudoers into your sudo file, or try putting it in
/etc/sudoers.d/. Note: the latter did not work for me.
    1. You may need to adjust the path of the pmta executable in the sudoers config to match your environment.

## Zabbix Server

1. Import the powermta.template.xml file into the Zabbix folder and assign it to the hosts you want to collect stats on.

# Configuration

There are no triggers defined by default, but you could easily create a discovery rule of your own.

# TODO

- [ ] The aliveness check for the PowerMTA process is not complete. 
