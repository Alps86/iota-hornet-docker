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
all configurations are located in the file "docker-compose.yaml" 

### https setup with letsencrypt
* set your domain in **entrypoints.websecure.http.tls.domains.main**
* set your email in **certificatesresolvers.https.acme.email**

### admin access
create the password hash
```console
docker-compose run pwdhash
```

* set **DASHBOARD_AUTH_USERNAME**
* set **DASHBOARD_AUTH_PASSWORDHASH**
* set **DASHBOARD_AUTH_PASSWORDSALT**

## start node
```console
service hornet start
```

## stop node
```console
service hornet stop
```
