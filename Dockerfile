FROM torsknod/my-jenkins-docker-pre 
USER root
# TODO docker-compose oracle-java9-installer oracle-java9-set-default oracle-java9-unlimited-jce-policy php-cli
RUN DEBIAN_FRONTEND=noninteractive aptitude --with-recommends -y install \
 ant \
 binfmt-support \
 default-jdk \
 docker.io \
 git \
 gradle \
 gradle-doc \
 maven \
 mercurial \
 phing \
 php5-cli \
 scala \
 scala-doc \
 doxygen \
 doxygen-doc \
 doxygen-latex \
 graphviz \
 graphviz-doc \
 gsfonts
USER jenkins
