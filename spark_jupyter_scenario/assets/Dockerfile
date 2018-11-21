# image for RHEL/CentOS 6.x

FROM bluedata/centos6:latest
# Install EPEL repo
RUN yum install -y http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

#Remove java7 and install java 8
RUN yum -y erase java-1.7.0-openjdk-devel
## Install java 8 and configure
ADD configure_java8.sh /root/configure_java8.sh
RUN chmod +x /root/configure_java8.sh && /root/configure_java8.sh && rm -f /root/configure_java8.sh

RUN echo 2 | update-alternatives --config java

# Install EPEL repo
RUN yum install -y bzip2

RUN yum install -y expect mysql-server mysql-connector-java             \
                   php-5.3.3 php-xml php-pear php-gd R R-devel libcurl-devel openssl-devel

RUN R -e "install.packages('devtools', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('knitr', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('ggplot2', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages(c('devtools','mplot', 'googleVis'), repos = 'http://cran.us.r-project.org')"
#require(devtools); install_github('ramnathv/rCharts')"

RUN sudo yum -y install https://centos6.iuscommunity.org/ius-release.rpm
RUN sudo yum -y install python35u

#ADD Anaconda3-4.0.0-Linux-x86_64.sh /root/Anaconda3-4.0.0-Linux-x86_64.sh
RUN wget -q https://s3-us-west-2.amazonaws.com/bluedata-ds-bits/Anaconda3-4.0.0-Linux-x86_64.sh -P /root/

RUN chmod +x /root/Anaconda3-4.0.0-Linux-x86_64.sh && /root/Anaconda3-4.0.0-Linux-x86_64.sh -b -p /opt/anaconda3 && rm -f /root/Anaconda3-4.0.0-Linux-x86_64.sh

# Jupyter default root directory

RUN R -e "devtools::install_github('IRkernel/IRkernel')"

RUN mkdir -p /root/.ipython/kernels/pyspark 
ADD configure_jupyter.sh /root/configure_jupyter.sh
RUN chmod +x /root/configure_jupyter.sh && /root/configure_jupyter.sh && rm -f /root/configure_jupyter.sh

#COPY rHadoopClient_0.2.tar.gz /tmp/
RUN wget -q https://s3-us-west-2.amazonaws.com/bluedata-ds-bits/rHadoopClient_0.2.tar.gz -P /tmp/
RUN R -e "install.packages('/tmp/rHadoopClient_0.2.tar.gz')"

## Download and extract spark
RUN mkdir /usr/lib/spark; curl -s http://archive.apache.org/dist/spark/spark-2.1.0/spark-2.1.0-bin-hadoop2.7.tgz | tar xz -C /usr/lib/spark/

## Download and extract mysql connector
RUN mkdir -p /opt/bluedata; curl -s https://s3.amazonaws.com/bluedata-catalog/thirdparty/spark/mysql-connector-java-5.1.36.tar.gz | tar xz -C /opt/bluedata/; mv /opt/bluedata/mysql-connector-java-5.1.36/*.jar /opt/bluedata/mysql-connector.jar; rm -rf /opt/bluedata/mysql-connector-java-5.1.36

## Download thirdparty aws jars
RUN wget -q https://s3.amazonaws.com/bluedata-catalog/thirdparty/aws-jars/aws-java-sdk-1.7.4.jar -P /opt/bluedata/
RUN wget -q https://s3.amazonaws.com/bluedata-catalog/thirdparty/aws-jars/hadoop-aws-2.7.1.jar -P /opt/bluedata/

## Create spark-event dir and give permissions
RUN mkdir /tmp/spark-events
RUN chmod -R 777 /tmp/spark-events/

## Give logs and conf permissions
RUN mkdir -p /usr/lib/spark/spark-2.1.0-bin-hadoop2.7/logs
RUN touch /usr/lib/spark/spark-2.1.0-bin-hadoop2.7/logs/Bluedata-spark-logs
RUN chmod -R 1777 /usr/lib/spark/spark-2.1.0-bin-hadoop2.7/logs/

# make spark bin dir accessible to all
RUN echo "export PATH=$PATH:/usr/lib/spark/spark-2.1.0-bin-hadoop2.7/bin/" > /etc/profile.d/updatePath.sh

#Install Toree kernel after Spark is installed
RUN /opt/anaconda3/bin/pip --no-cache-dir install https://dist.apache.org/repos/dist/dev/incubator/toree/0.2.0/snapshots/dev1/toree-pip/toree-0.2.0.dev1.tar.gz && /opt/anaconda3/bin/jupyter toree install --interpreters=PySpark,SQL --spark_home=/usr/lib/spark/spark-2.1.0-bin-hadoop2.7

## Install zeppelin
RUN mkdir /usr/lib/zeppelin; curl -s http://10.2.12.27:8080/build/thirdparty/zeppelin/zeppelin-0.8.0-SNAPSHOT.tar.gz | tar xz -C /usr/lib/zeppelin

## Install sparklingwater
#RUN wget -q  http://h2o-release.s3.amazonaws.com/sparkling-water/rel-2.0/0/sparkling-water-2.0.0.zip -P /usr/lib/sparklingwater/;unzip -q /usr/lib/sparklingwater/sparkling-water-2.0.0.zip -d /usr/lib/sparklingwater/; rm -rf /usr/lib/sparklingwater/*.zip

RUN wget -q  http://h2o-release.s3.amazonaws.com/sparkling-water/rel-2.1/5/sparkling-water-2.1.5.zip -P /usr/lib/sparklingwater/;unzip -q /usr/lib/sparklingwater/sparkling-water-2.1.5.zip -d /usr/lib/sparklingwater/; rm -rf /usr/lib/sparklingwater/*.zip

