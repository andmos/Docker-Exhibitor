FROM java:8

MAINTAINER Andreas Mosti <andreas.mosti@gmail.com>

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y maven
RUN wget -q -O /opt/pom.xml https://raw.github.com/Netflix/exhibitor/master/exhibitor-standalone/src/main/resources/buildscripts/standalone/maven/pom.xml
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN cd /opt && mvn clean generate-sources install
EXPOSE 8000

CMD /usr/bin/java -jar /opt/target/exhibitor-1.6.0.jar -c file --port 8000
