#! /bin/sh
#This sh script can be used to deploy code to AWS Lightsail server.
#This script should be placed along src directory
#Inside src directory, server.js is the entry point of the application

privatekey="~/Desktop/LightsailKey.pem" 
hostname="ec2-user@34.215.68.225"

ssh -i $privatekey $hostname 'killall node'
ssh -i $privatekey $hostname 'rm -rf ~/Dev/src'
scp -r -i $privatekey ./src $hostname:~/Dev/src 
ssh -i $privatekey $hostname 'node ~/Dev/src/server.js'
