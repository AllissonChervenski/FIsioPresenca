FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=cerestdb
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=user

COPY init.sql /docker-entrypoint-initdb.d/
