# Ubuntu with user login. Timezone is set to UTC+8
#
FROM centos:latest
MAINTAINER Samuel Shan, shm.shan@gmail.com

#localize
RUN yum install -y sudo
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#add user 'user'
RUN useradd -g wheel user && sed -i '/^%wheel/s/ALL$/NOPASSWD:ALL/;s/^Defaults.*requiretty/#\0/' /etc/sudoers
ENV HOME /home/user
USER user
RUN echo "cd" >> $HOME/.bash_profile
ENTRYPOINT ["/bin/bash","-l"]
