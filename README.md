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

### change the config
```console
docker-compose run pwdhash
./config.sh
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
