# docker-magento

## Clone the repo

```
git clone https://github.com/cpuch/docker-magento
```

## Build images

```
docker compose build
```

## Start containers

```
docker compose up -d
```

## Run magento commands

```
docker exec -it php-fpm php /var/www/html/magento/bin/magento <command>
```
