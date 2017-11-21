#!/bin/bash

# create data directory
mkdir -p /nfsshare/data/{blockdata,couchdb,kafka,orderer,zookeeper}
mkdir -p /nfsshare/data/blockdata/org{1,2}
mkdir -p /nfsshare/data/blockdata/org1/peer{0,1}
mkdir -p /nfsshare/data/blockdata/org2/peer{0,1}
mkdir -p /nfsshare/data/couchdb/couchdb{0,1,2,3,4,5,6}
mkdir -p /nfsshare/data/kafka/kafka{0,1,2,3,4,5,6}
mkdir -p /nfsshare/data/orderer/orderer{0,1,2,3,4,5,6}
mkdir -p /nfsshare/data/zookeeper/zookeeper{0,1,2,3,4,5,6}
mkdir -p /nfsshare/data/ca/ca{1,2}

# deploy stack to swarm
docker stack deploy -c hyperledger-zookeeper.yaml hyperledger-zk
docker stack deploy -c hyperledger-kafka.yaml hyperledger-kafka
docker stack deploy -c hyperledger-orderer.yaml hyperledger-orderer
docker stack deploy -c hyperledger-couchdb.yaml hyperledger-couchdb
docker stack deploy -c hyperledger-peer.yaml hyperledger-peer
docker stack deploy -c hyperledger-ca.yaml hyperledger-ca
docker stack deploy -c hyperledger-cli.yaml hyperledger-cli
