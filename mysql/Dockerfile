# mysql server
#
FROM softcrack/ssh
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get install -y mysql-server && sudo sed -i '/^bind-address/{s/^/#/}' /etc/mysql/my.cnf
EXPOSE 3306
ENTRYPOINT sudo service mysql start && bash -l
