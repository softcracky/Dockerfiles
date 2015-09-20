# Ubuntu with user login. Timezone is set to UTC+8
#
FROM ubuntu:latest
MAINTAINER Samuel Shan, shm.shan@gmail.com

#localize
RUN sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu\/ /mirror:\/\/mirrors.ubuntu.com\/mirrors.txt /' /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get -y upgrade \
	&& sudo apt-get install -y man

#add user 'user'
RUN adduser --disabled-password --gecos "" user && addgroup admin && adduser user admin && sed -i '/^%admin/s/ALL$/NOPASSWD:\0/' /etc/sudoers
ENV TZ Asia/Shanghai
ENV HOME /home/user
USER user
ENTRYPOINT exec /bin/dockerInit --cwd /home/user bash -l

ADD dockerInit /bin/
