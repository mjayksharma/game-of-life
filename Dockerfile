FROM centos:7
RUN yum install maven -y
COPY . /usr/src/
WORKDIR /usr/src/
RUN mvn install
WORKDIR /usr/src/gameoflife-web/
CMD ["mvn","jetty:run"]
