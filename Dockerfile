FROM mysql:8.0
RUN chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
COPY ./*.sql /docker-entrypoint-initdb.d/
USER mysql
EXPOSE 3306