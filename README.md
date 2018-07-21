##### Requirements

1. docker
2. docker-compose

##### Generate new symfony demo project using composer
```
rm -rf app
mkdir app
docker-compose run --rm app composer create-project symfony/symfony-demo /home/developer/app
```

##### Start
```
docker-compose up -d
```

##### Generate assets

```
docker-compose run --rm yarn run build 
```

##### Initialize database
```
docker-compose exec app bin/console doctrine:schema:update
```

##### Browse
```
http://172.16.2.1
```
##### Stop

```
docker-compose down
```





