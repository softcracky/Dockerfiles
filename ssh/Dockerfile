# openssh-server
#
FROM softcrack/ubuntu
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get install -y openssh-server && sudo sed -i 's/^UsePAM/#UserPAM/' /etc/ssh/sshd_config && sudo rm -fr /etc/ssh/ssh_host_* && sudo sed -i 's/^ *start)/  start)\n\t[ -f \/etc\/ssh\/ssh_host_rsa_key ] || sudo dpkg-reconfigure openssh-server/' /etc/init.d/ssh

EXPOSE 22
ENTRYPOINT sudo service ssh start && bash -l
