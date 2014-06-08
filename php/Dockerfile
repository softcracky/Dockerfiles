# nginx with php
#
FROM softcrack/nginx
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get install -y php5-fpm php5-mysql && sudo sed -i '/^\s*index /{s/index/index index.php/};/#location.*php/{s/#//};/fastcgi_pass unix/{N;N;N;s/#//g}' /etc/nginx/sites-enabled/default
EXPOSE 80
ENTRYPOINT sudo service php5-fpm start && sudo service nginx start && bash -l
