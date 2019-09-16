#!/bin/bash
set -e

download_files=http://sourceforge.net/projects/vtigercrm/files/

declare -A versions
versions=(
     ["7.1.0"]=main*7.2.22*mariadb-server-10.3*vtigercrm*vtiger%20CRM%207.1.0/Core%20Product/vtigercrm7.1.0.tar.gz
     ["7.1.0-RC"]=main*7.2.22*mariadb-server-10.3*vtigercrm*vtiger%20CRM%207.1.0%20RC/Core%20Product/vtigercrm7.1.0rc.tar.gz
     ["7.0.1"]=main*7.2.22*mariadb-server-10.3*vtigercrm*vtiger%20CRM%207.0.1/Core%20Product/vtigercrm7.0.1.tar.gz
     ["7.0.0"]=main*7.2.22*mariadb-server-10.3*vtigercrm*vtiger%20CRM%207.0/Core%20Product/vtigercrm7.0.0.tar.gz
     ["6.5.0"]=main*5.6.40*mariadb-server-10.1*vtigercrm*vtiger%20CRM%206.5.0/Core%20Product/vtigercrm6.5.0.tar.gz
     ["6.4.0"]=main*5.6.40*mariadb-server-10.1*vtigercrm*vtiger%20CRM%206.4.0/Core%20Product/vtigercrm6.4.0.tar.gz
     ["6.3.0"]=main*5.6.40*mariadb-server-10.1*vtigercrm*vtiger%20CRM%206.3.0/Core%20Product/vtigercrm6.3.0.tar.gz
     ["6.2.0"]=main*5.6.40*mariadb-server-10.1*vtigercrm*vtiger%20CRM%206.2.0/Core%20Product/vtigercrm6.2.0.tar.gz
     ["6.1.0"]=main*5.6.40*mariadb-server-10.1*vtigercrm*vtiger%20CRM%206.1.0/Core%20Product/vtigercrm6.1.0.tar.gz
     ["6.1.0-Beta"]=main*5.6.40*mariadb-server-10.1*vtigercrm*Vtiger%20CRM%206.1.0%20Beta/Core%20Product/vtigercrm-6.1.0-ea.tar.gz
     ["6.0.0"]=robust*5.6.40*mariadb-server-10.1*vtigerCRM*vtiger%20CRM%206.0.0/Core%20Product/vtigercrm6.0.0.tar.gz
     ["6.0.0-RC"]=robust*5.6.40*mariadb-server-10.1*vtigerCRM*vtiger%20CRM%206.0%20RC/Core%20Product/vtigercrm-6.0.0rc.tar.gz
     ["6.0.0-Beta"]=robust*5.6.40*mariadb-server-10.1*vtigerCRM*vtiger%20CRM%206.0%20Beta/Core%20Product/vtigercrm-6.0Beta.tar.gz
     ["5.4.0"]=stale*5.3.29*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.4.0/Core%20Product/vtigercrm-5.4.0.tar.gz
     ["5.4.0-RC"]=stale*5.6.40*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.4.0%20RC/Core%20Product/vtigercrm-5.4.0-RC.tar.gz
     ["5.3.0"]=stale*5.6.40*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.3.0/Core%20Product/vtigercrm-5.3.0.tar.gz
     ["5.3.0-RC"]=stale*5.6.40*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.3.0%20RC/Core%20Product/vtigercrm-5.3.0-RC.tar.gz
     ["5.2.1"]=stale*5.6.40*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.2.1/Core%20Product/vtigercrm-5.2.1.tar.gz
     ["5.2.0"]=stale*5.6.40*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.2.0/Core%20Product/vtigercrm-5.2.0.tar.gz
     ["5.2.0-RC"]=stale*5.6.40*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.2.0%20RC/vtigercrm-5.2.0-RC.tar.gz
     ["5.2.0-VB2"]=stale*5.6.40*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.2.0%20VB2/vtigercrm-5.2.0-vb2.tar.gz
     ["5.2.0-VB1"]=stale*5.6.40*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.2.0%20VB1/vtigercrm-5.2.0-vb1.tar.gz
     ["5.1.0"]=stale*5.3.29*mariadb-server-10.3*vtigercrm*vtiger%20CRM%205.1.0/Core%20Product/vtigercrm-5.1.0.tar.gz
)
