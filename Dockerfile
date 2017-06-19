FROM jenkinsci/jenkins 
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
USER root
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y aptitude && aptitude update && DEBIAN_FRONTEND=noninteractive aptitude --with-recommends full-upgrade -y && DEBIAN_FRONTEND=noninteractive aptitude --with-recommends install -y \
 ant \
 binfmt-support \
 default-jdk-doc \
 default-jdk-headless \
 docker-compose \
 docker.io \
 git \
 gradle \
 gradle-doc \
 maven \
 mercurial \
 oracle-java9-set-default \
 oracle-java9-unlimited-jce-policy \
 phing php-cli \
 scala \
 scala-doc \
 doxygen \
 doxygen-doc \
 doxygen-latex \
 graphviz \
 graphviz-doc \
 gsfonts
USER jenkins
ENV CURL_CONNECTION_TIMEOUT 60
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
