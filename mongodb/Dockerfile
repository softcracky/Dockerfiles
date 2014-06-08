# mongodb
#
FROM softcrack/ubuntu
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get install -y mongodb && sudo sed -i '/^bind_ip/s/^/#/' /etc/mongodb.conf
ENTRYPOINT sudo service mongodb start && bash -l
EXPOSE 27017

