# mysql server
#
FROM softcrack/ubuntu
MAINTAINER Samuel Shan, shm.shan@gmail.com
EXPOSE 3306

RUN sudo apt-get update && sudo apt-get install -y mysql-server
RUN sudo adduser mysql admin
USER mysql
ENTRYPOINT exec dockerInit --init-dir /var/lib/mysql /usr/sbin/mysqld --bind-address=0.0.0.0 --datadir=/data/mysql
