#!/bin/bash
ips=$(cat ./ips)
array_ips=($ips)

for ip in ${array_ips[@]}
do
ssh -o StrictHostKeyChecking=no udesc@"$ip" 'eject'
done