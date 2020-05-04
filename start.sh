#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "run sh start.sh <VM_IP> <VM_USERNAME>"
fi
SERVER_IP=$1
SERVER_USER=$2


scp -r execute $SERVER_USER@$SERVER_IP:/tmp/
ssh $SERVER_USER@$SERVER_IP sh /tmp/execute/run.sh