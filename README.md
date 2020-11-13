# CNAB

#### Dependências
* Docker
* Docker-compose

#### Buildando o projeto
```
docker-compose build
```
#### Preparando o ambiente
```
docker-compose run web bash
rails db:drop db:create db:migrate db:seed
```
#### Iniciando o projeto
```
docker-compose up
```
Feito isso, o projeto estara acessivel na porta 3000 do localhost atraves do seu browser