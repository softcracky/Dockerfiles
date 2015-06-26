# mysql server
#
FROM softcrack/centos
MAINTAINER Samuel Shan, shm.shan@gmail.com

RUN sudo yum install -y unzip binutils compat-libcap1 gcc gcc-c++ glibc glibc-devel libaio libaio-devel libgcc libstdc++ libstdc++-devel libXi libXtst make sysstat

ENV ORACLE_SID orcl
ENV ORACLE_HOME /u01/app/oracle/product/12.1.0/dbhome
ENV PATH /bin:/usr/bin:/u01/app/oracle/product/12.1.0/dbhome/bin
ENV HOME /home/oracle
EXPOSE 1521
ENTRYPOINT ["startOra"]

RUN sudo groupadd -g 54321 oinstall \
&& sudo groupadd -g 54322 dba \
&& sudo groupadd -g 54323 oper \
&& sudo groupadd -g 54324 backupdba \
&& sudo groupadd -g 54325 dgdba \
&& sudo groupadd -g 54326 kmdba \
&& sudo groupadd -g 54327 asmdba \
&& sudo groupadd -g 54328 asmoper \
&& sudo groupadd -g 54329 asmadmin \
&& sudo useradd -u 54321 -g oinstall -G wheel,dba,asmdba,backupdba,dgdba,kmdba oracle
USER oracle

ADD *.zip *.rsp /data/
ADD oraInst.loc /etc/
RUN sudo mkdir /u01 \
&& sudo chown -R oracle:oinstall /data /u01 \
&& for file in /data/*.zip; do unzip -q $file -d /data/; done
RUN echo "Installing oracle software, this will take several minutes..." \
&& /data/database/runInstaller -silent -responseFile /data/db_install.rsp -waitforcompletion -ignorePrereq \
&& sudo $ORACLE_HOME/root.sh \
&& dbca -silent -responseFile /data/dbca.rsp \
&& rm -fr /data/*

ADD startOra /usr/bin/
