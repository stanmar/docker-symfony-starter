##### Requirements

1. docker
2. docker-compose
3. Ubuntu (others os not tested)


##### Generate new symfony project using composer
```
rm -rf app
mkdir app
docker-compose run --rm app composer create-project symfony/skeleton /home/developer/app
```

##### Start
```
docker-compose up -d
```

and browse your site at http://172.16.2.1


##### Shutdown 
```
docker-compose down
```

##### How to use php composer 

```
docker-compose run --rm app composer
```
or if project is running
```
docker-compose exec app composer
```

##### How to use symfony bin/console

```
docker-compose run --rm app bin/console
```
or if project is running
```
docker-compose exec app bin/console
```

