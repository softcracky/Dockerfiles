# Ubuntu user bash
#
FROM ubuntu:13.10
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN adduser --disabled-password --gecos "" user
RUN echo "user ALL=NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/user
USER user
ENTRYPOINT ["/bin/bash","-l"]
