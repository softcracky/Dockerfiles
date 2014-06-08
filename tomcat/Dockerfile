# tomcat
#
FROM softcrack/ssh
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get install -y tomcat7
EXPOSE 8080
ENTRYPOINT sudo service tomcat7 start && bash -l
