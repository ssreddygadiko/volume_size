#!/bin/bash
echo "Please enter the region [EX: ap-south-1]:"
read region
aws ec2 describe-volumes --region $region | grep Size | awk '{ print $4 }'
total=`aws ec2 describe-volumes --region $region | grep Size | awk '{ print $4 }' | paste -sd+ | bc`
echo Total = $total GB
