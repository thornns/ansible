java -jar $JENKINS_HOME/war/WEB-INF/jenkins-cli.jar -s http://admin:install@localhost:8080/ create-node $1<<EOF
<slave>
  <remoteFS>/home/jenkins/agent</remoteFS>
  <numExecutors>3</numExecutors>
  <launcher class="hudson.slaves.JNLPLauncher" />
</slave>
EOF