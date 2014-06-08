# nginx
#
FROM softcrack/ssh
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get install -y nginx
EXPOSE 80
ENTRYPOINT sudo service nginx start && bash -l
