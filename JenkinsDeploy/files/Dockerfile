# Last image that install python3-crypto
FROM jenkins/jenkins:2.375.2-lts

USER root

# Add Buster backports repository
RUN echo "deb http://deb.debian.org/debian buster-backports main" >> /etc/apt/sources.list

# Add extra needed packages
RUN apt-get update && apt-get --allow-unauthenticated install -y ruby make qemu-system packer python3-pip python3-dev python3-cryptography build-essential software-properties-common software-properties-common curl wget build-essential alien ca-certificates ca-cacert libssl1.1

# Add Ansible repo and install it
RUN echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 93C4A3FD7BB9C367
RUN apt-get --allow-unauthenticated update && apt-get --allow-unauthenticated install -y ansible

# Install Openstack cli
RUN pip3 install future
RUN apt-get install -y python3-openstacksdk
RUN apt-get install -y python3-openstackclient
RUN ansible-galaxy collection install openstack.cloud

# Add NodeJS repo and install it
RUN add-apt-repository -y -r ppa:chris-lea/node.js
RUN rm -f /etc/apt/sources.list.d/chris-lea-node_js-*.list.save
RUN curl -sSL http://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN rm -f /etc/apt/sources.list.d/chris-lea-node_js-*.list

# NodeJS 8 is not supported by Debian Bullseye, Node 14 is the recommended version
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get --allow-unauthenticated update && apt-get --allow-unauthenticated install -y nodejs

# Install JAVA 1.8.0_232
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get clean;

RUN rm /opt/java/openjdk/bin/java
RUN ln -s /usr/lib/jvm/java-11-openjdk-amd64/bin/java /opt/java/openjdk/bin/java

# Copy callback plugin for timestamp
RUN bash -c 'mkdir -p /usr/share/ansible/plugins/callback'
COPY timestamp.py /usr/share/ansible/plugins/callback

# Config NPM and add Grunt and Bower
RUN npm config set registry http://registry.npmjs.org/ && npm install -g grunt bower

# Clean Apt cache
RUN apt-get clean

USER jenkins

# Install plugins for Jenkins
RUN jenkins-plugin-cli --plugins allure-jenkins-plugin \
  ansible \
  ansicolor \
  artifactory \
  bitbucket \
  blueocean \
  blueocean-personalization \
  blueocean-github-pipeline \
  blueocean-pipeline-api-impl \
  blueocean-i18n \
  blueocean-git-pipeline \
  blueocean-pipeline-editor \
  blueocean-jira \
  blueocean-pipeline-scm-api \
  blueocean-autofavorite \
  blueocean-jwt \
  blueocean-bitbucket-pipeline \
  blueocean-rest-impl \
  blueocean-commons \
  blueocean-config \
  blueocean-rest \
  blueocean-core-js \
  blueocean-web \
  blueocean-dashboard \
  blueocean-display-url \
  blueocean-events \
  copyartifact \
  stashNotifier \
  cloudbees-bitbucket-branch-source \
  cucumber-reports \
  command-launcher \
  emailext-template \
  external-monitor-job \
  git \
  git-parameter \
  gradle \
  greenballs \
  favorite \
  javadoc \
  jira \
  job-dsl \
  ldap \
  htmlpublisher \
  matrix-auth \
  maven-plugin \
  workflow-aggregator \
  parameterized-scheduler \
  pipeline-utility-steps \
  reportportal \
  rich-text-publisher-plugin \
  Office-365-Connector \
  configuration-as-code \
  active-directory \
  xray-connector