#bin/bash

mkdir /opt/hornet

apt update
apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg-agent \
     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io
/etc/init.d/docker start
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

docker-compose -v

# setup service
curl -LO https://raw.githubusercontent.com/Alps86/iota-hornet-docker/master/hornet.service
cp hornet.service /etc/systemd/system/hornet.service && rm hornet.service
systemctl enable hornet.service
systemctl daemon-reload
