FROM mariadb:10.11
RUN chown -R mysql:mysql /var/lib/mysql /var/run/mysqld /etc/mysql/conf.d
COPY ./scripts/*.sql /docker-entrypoint-initdb.d/
RUN apt-get update && apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
USER mysql

EXPOSE 3306
