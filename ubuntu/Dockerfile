# Ubuntu with user login. Timezone is set to UTC+8
#
FROM ubuntu:latest
MAINTAINER Samuel Shan, shm.shan@gmail.com

#localize
RUN sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu\/ /mirror:\/\/mirrors.ubuntu.com\/mirrors.txt /' /etc/apt/sources.list && apt-get update && apt-get -y upgrade && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#add user 'user'
RUN adduser --disabled-password --gecos "" user && echo "user ALL=NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/user
USER user
RUN echo "cd" >> $HOME/.profile
ENTRYPOINT ["/bin/bash","-l"]
