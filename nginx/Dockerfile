# nginx
#
FROM softcrack/ubuntu
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get update && sudo apt-get install -y nginx
EXPOSE 80
ENTRYPOINT exec dockerInit --init-dir /etc/nginx/sites-enabled --init-dir /usr/share/nginx/html --wait sudo /usr/sbin/nginx
