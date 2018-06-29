#!/bin/bash

export FABRIC_CAFG_PATH=$PWD
for ((i=1;i<=100;i++))
do
/Users/ratnakar/workspace/go/src/github.com/hyperledger/fabric/release/darwin-amd64/bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx mychannel${i}.tx -channelID mychannel${i}
done
