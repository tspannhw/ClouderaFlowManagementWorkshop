#!/bin/bash
set -u
set -e

MYIP=$1

aws ec2 authorize-security-group-ingress --group-id sg-03fc2747e79f25db0 --protocol all --cidr $MYIP/32
aws ec2 authorize-security-group-ingress --group-id sg-08c61a2a9fee5de5c --protocol all --cidr $MYIP/32
