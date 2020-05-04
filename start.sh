#!/bin/bash

SERVER_IP=31.171.244.132
SERVER_USER=cloudsigma


scp -r execute $SERVER_USER@$SERVER_IP:/tmp/
ssh $SERVER_USER@$SERVER_IP sh /tmp/execute/run.sh