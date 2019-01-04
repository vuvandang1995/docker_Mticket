FROM mysql:5.7
EXPOSE 3306
ENV MYSQL_DATABASE mticket_mdt  
ENV MYSQL_ROOT_PASSWORD 123456
ADD docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
