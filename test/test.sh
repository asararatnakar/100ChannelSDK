#!/bin/bash

cat test.yaml >> final.yaml
prev=1
for ((i=2;i<=100;i++))
do
	sed -it "s/mychannel${prev}/mychannel${i}/g" test.yaml
	rm test.yamlt
	echo "" >> final.yaml
	cat test.yaml >> final.yaml
	prev=$i
done
