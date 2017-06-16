FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
USER root
RUN apt-get update && apt-get install aptitude && aptitude update && aptitude --with-recommends full-upgrade -y
USER jenkins
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
