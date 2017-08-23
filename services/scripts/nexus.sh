#!/bin/bash

export JVM_VERSION=${JAVA_VERSION:=1.8}
export JAVA_HOME=$(/usr/libexec/java_home -v ${JVM_VERSION})
export NEXUS_HOME=${HOME}/Services/nexus

function shutdown()
{
        date
        echo "Shutting down Nexus"
        $NEXUS_HOME/bin/nexus stop
}
 
date
exec $NEXUS_HOME/bin/nexus run &> /dev/null
