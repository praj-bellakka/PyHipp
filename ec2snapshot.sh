#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair1.pem ec2-user@54.255.167.20 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED -n MyCluster01; ~/update_snapshot.sh data 2 MyCluster01"
