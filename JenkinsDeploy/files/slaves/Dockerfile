# Choose the base image to work with
FROM jenkins/jnlp-slave

USER root

# Add extra needed packages
RUN apt-get update && apt-get --allow-unauthenticated install -y ruby make qemu-system packer python3-pip python3-dev python3-crypto build-essential software-properties-common software-properties-common curl wget build-essential alien

# Add Ansible repo and install it
RUN echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 93C4A3FD7BB9C367
RUN apt-get --allow-unauthenticated update && apt-get --allow-unauthenticated install -y ansible

# Add NodeJS repo and install it
RUN add-apt-repository -y -r ppa:chris-lea/node.js
RUN rm -f /etc/apt/sources.list.d/chris-lea-node_js-*.list.save
RUN curl -sSL http://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN rm -f /etc/apt/sources.list.d/chris-lea-node_js-*.list
RUN echo 'deb http://deb.nodesource.com/node_8.x stretch main' | tee /etc/apt/sources.list.d/nodesource.list && echo 'deb-src http://deb.nodesource.com/node_8.x stretch main' | tee -a /etc/apt/sources.list.d/nodesource.list
RUN apt-get --allow-unauthenticated update && apt-get --allow-unauthenticated install -y nodejs npm

# Config NPM and add Grunt and Bower
RUN npm config set registry http://registry.npmjs.org/ && npm install -g grunt bower

# Install JAVA 1.8.0_232
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get clean;

RUN rm /opt/java/openjdk/bin/java
RUN ln -s /usr/lib/jvm/java-11-openjdk-amd64/bin/java /opt/java/openjdk/bin/java

# Clean Apt cache
RUN apt-get clean

# create workspace directory
RUN chown -R jenkins:jenkins /home/jenkins/
RUN mkdir -p /var/jenkins
RUN chown -R jenkins:jenkins /var/jenkins


USER jenkins