# Docker Nginx configuration

# Описание

## Технологии
* Docker
* Nginx - web сервер
* git - система управления версиями


## Как запустить c GitHub:

Клонируйте репозиторий и перейдите в него в командной строке:

```
git clone https://github.com/m9yrizo/mcc_test_task.git
```

```
cd mcc_test_task
```
Смонтируйте docker image:

```
docker build -t <имя образа> .
```

Запустите контейнер на основе созданного docker image:

```
docker run -d --name <имя контейнера> -it -p 80:80 <мя образа>
```

**С помощью DockerHub:**
 
Запустите контейнер на основе образа из DockerHub:

```
docker run -d --name <имя контейнера> -it -p 80:80 mcc_test_task:latest
```

____________________________________

Стартовая страница Nginx доступна по адресу `localhost/`

Страница обслуживающая Файл доступна по адресу `localhost/1`


**Аутентификация:**

Аутентификация реализована на основе Nginx basic auth для страницы обслуживающей файл.
Помните, что браузер запоминает страницы и повторное открытие страницы `localhost/1` будет происходить без аутентификации.

Для очистки данных о просмотренных страницах воспользуйтесь средствами браузера, прим. Chrome: 
`Ctrl+Shift+Del` -> Дополнительные.

**Логирование:**

Логи access и error nginx вынесены в отдельную папку в одноименные файлы для удобства анализа.

**Авторы:**

* Белов Андрей `https://github.com/m9yrizzo`