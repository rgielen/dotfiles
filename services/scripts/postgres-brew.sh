#!/bin/bash

export PG_VERSION=${POSTGRES_VERSION:=9.6}
export PG_USER=${POSTGRES_USER:=$USER}
export PG_DATA_DIR=${POSTGRES_DATA_DIR:=/usr/local/var/postgres}
export PG_LOG=${POSTGRES_LOG:=/usr/local/var/log/postgres.log}

export PREFIX=/usr/local
export BIN_DIR=${PREFIX}/opt/postgresql@${PG_VERSION}/bin
export POSTGRES=${BIN_DIR}/postgres
export PG_CTL=${BIN_DIR}/pg_ctl
export PID_FILE=${PG_DATA_DIR}/postmaster.pid

function Start() {
    date
	sudo -u ${PG_USER} ${PG_CTL} -D ${PG_DATA_DIR} start -l ${PG_LOG}
}

function Stop()
{
    date
	sudo -u ${PG_USER} ${PG_CTL} -D ${PG_DATA_DIR} stop -s -m fast
}

function Status() {
	sudo -u ${PG_USER} ${PG_CTL} -D ${PG_DATA_DIR} status
}

function Restart()
{
	Stop
	Start
}

function Run()
{
	sudo -u ${PG_USER} ${POSTGRES} -D ${PG_DATA_DIR} &> ${PG_LOG}
    ## Allow any signal which would kill a process to stop server
    #trap shutdown HUP INT QUIT ABRT KILL ALRM TERM TSTP
    #sleep 2
    #PID=$(echo -n  $( head -1 ${PID_FILE}))
    #echo "Waiting for ${PID}"
    #wait ${PID}
}

Switch()
{
case $1 in
  start  ) Start   ;;
  stop   ) Stop    ;;
  status ) Status  ;;
  restart) Restart ;;
  run    ) Run ;;
  *      ) echo "Usage: $0 (start|stop|restart|run|status)";;
esac
}

#
# Run a phase based on the selector
#
Switch $1
