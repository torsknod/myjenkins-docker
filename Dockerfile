FROM torsknod/my-jenkins-docker-pre 
USER root
RUN DEBIAN_FRONTEND=noninteractive aptitude --with-recommends -y install \
 ant \
 binfmt-support \
 docker-compose \
 docker.io \
 git \
 gradle \
 gradle-doc \
 maven \
 mercurial \
 oracle-java8-installer \
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
