# tomcat
#
FROM softcrack/ubuntu
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo apt-get update && sudo apt-get install -y tomcat7
EXPOSE 8080
RUN sudo adduser tomcat7 admin && sudo chown -R tomcat7 /home/user/
USER tomcat7
ENTRYPOINT exec dockerInit --init-dir /var/lib/tomcat7/webapps /usr/lib/jvm/default-java/bin/java -Djava.util.logging.config.file=/var/lib/tomcat7/conf/logging.properties -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Djava.awt.headless=true -Xmx128m -XX:+UseConcMarkSweepGC -Djava.endorsed.dirs=/usr/share/tomcat7/endorsed -classpath /usr/share/tomcat7/bin/bootstrap.jar:/usr/share/tomcat7/bin/tomcat-juli.jar -Dcatalina.base=/var/lib/tomcat7 -Dcatalina.home=/usr/share/tomcat7 org.apache.catalina.startup.Bootstrap "start" >> /var/log/tomcat7/catalina.out 2>&1
