FROM nginx:stable

# Скопировать с локального компьютера файлы конфигурации и аутентификации nginx
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/.htpasswd /etc/nginx/.htpasswd
COPY ./nginx/1.txt /usr/share/nginx/html/1.txt

RUN mkdir -p /log/nginx/

CMD ["nginx","-g","daemon off;"]
