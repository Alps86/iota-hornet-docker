## Info
This setup only works with a correct domain.

## install docker
```console
curl -LO https://raw.githubusercontent.com/Alps86/iota-hornet-docker/master/setup.sh
chmod +x setup.sh
./setup.sh
```

## installation directory
```console
cd /opt/hornet
```

## get config
```console
curl -LO https://raw.githubusercontent.com/gohornet/hornet/main/config.json
curl -LO https://raw.githubusercontent.com/gohornet/hornet/main/peering.json
```

## config
```console
curl -LO https://raw.githubusercontent.com/Alps86/iota-hornet-docker/master/docker-compose.yml
curl -LO https://raw.githubusercontent.com/Alps86/iota-hornet-docker/master/config.env
```

change the **config.env**

### https setup with letsencrypt
* set your domain
* set your email

### admin access
create the password hash
```console
docker-compose run pwdhash
```

* set **DASHBOARD_AUTH_USERNAME**
* set **DASHBOARD_AUTH_PASSWORDHASH**
* set **DASHBOARD_AUTH_PASSWORDSALT**

## update config
```console
cp config.env /etc/default/hornet
```

## start node
```console
service hornet start
```

## stop node
```console
service hornet stop
```

## visit the dashboard
```console
https://example.com
```
