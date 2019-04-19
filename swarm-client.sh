#!/bin/bash
if [ -z $JENKINS_MASTER_URL ]; then
    JENKINS_MASTER_URL=http://jenkins:8080
fi

if [ -z $JENKINS_SWARM_LABEL ]; then
    JENKINS_SWARM_LABEL=swarm
fi

if [ -z $JENKINS_SWARM_EXECUTORS ]; then
    JENKINS_SWARM_EXECUTORS=2
fi

if [ -z $JENKINS_SWARM_MODE ]; then
    JENKINS_SWARM_MODE=exclusive
fi

java -jar /usr/local/swarm/swarm-client.jar -disableSslVerification -executors ${JENKINS_SWARM_EXECUTORS} -master ${JENKINS_MASTER_URL} -labels "${JENKINS_SWARM_LABEL}" -password ${JENKINS_MASTER_PASSWORD} -retryInterval 10 -username ${JENKINS_MASTER_USERNAME} -mode ${JENKINS_SWARM_MODE}
