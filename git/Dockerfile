# Ubuntu user bash
#
FROM softcrack/ubuntu
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get install -y git
ENTRYPOINT sudo service ssh start && bash -l
EXPOSE 22
