#!/bin/bash

##############################################

#Authour : Abhijit Sagare

#Vesrion : V1

#Date : 13-12-2023

###############################################

#Aagenda: we will track aws Ec2, S3, IAM And Lambda functions

#to run the script in debug mode (print the commands running to the comsole)---

set -x

#list all the aws S3

echo "print all the aws s3 bucket"

aws s3 ls

#list all the ec2-instances

echo "print the aws ec2-instances"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list all the lambda-functions

echo "print the aws lambda-functions"

aws lambda list-functions

#list all the IAM users

echo "print the list of aws IAM users"

aws iam list-users | jq '.Users[].UserId'


#jq is used for jason data filteration-> here, we only need instanceid and IAM userId hence we filtered out the things.

#aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#aws iam list-users | jq '.Users[].UserId'

