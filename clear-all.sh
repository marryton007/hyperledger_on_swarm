#!/bin/bash

docker stack rm hyperledger-{cli,couchdb,kafka,orderer,peer,zk,ca}
rm -rf crypto-config
sudo rm -rf /nfsshare/data
