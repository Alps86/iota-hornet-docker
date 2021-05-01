#bin/bash

read -p "EMAIL: " email
read -p "DOMAIN: " domain
read -p "DASHBOARD_AUTH_USERNAME: " username
read -p "DASHBOARD_AUTH_PASSWORDHASH:" hash
read -p "DASHBOARD_AUTH_PASSWORDSALT:" salt

echo "EMAIL=$email
DOMAIN=$domain
DASHBOARD_AUTH_USERNAME=$username
DASHBOARD_AUTH_PASSWORDHASH=$hash
DASHBOARD_AUTH_PASSWORDSALT=$salt" > /etc/default/hornet

cp hornet.service /etc/systemd/system/hornet.service && rm hornet.service
systemctl enable hornet.service
systemctl daemon-reload
