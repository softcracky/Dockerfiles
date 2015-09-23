# nginx with php
#
FROM softcrack/nginx
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get install -y php5-fpm php5-mysql && sudo sed -i '/^\s*index /{s/index/index index.php/};/#location.*php/{s/#//};/fastcgi_pass unix/{N;N;N;s/#//g}' /etc/nginx/sites-enabled/default
EXPOSE 80
ENTRYPOINT sudo /usr/sbin/php5-fpm --daemonize --fpm-config /etc/php5/fpm/php-fpm.conf && exec dockerInit --init-dir /etc/nginx/sites-enabled --init-dir /usr/share/nginx/html --wait sudo /usr/sbin/nginx
