# Lesson 2 - Unix/Linux

Most web apps are deployed on Linux platforms. Senior developers need to know their way around the linux command line. Important concepts for every senior developer to understand include shell scripts, ssh, ftp, cron, installing packages, and security/account management. 

# Research

apt-get

public/private keys and ssh




# Prerequisites

* A running Ubuntu environment. The easiest way to create this environment would be to run a docker container with the latest Ubuntu image.



# Exercises

## Install packages with apt-install

Use docker-compose to start the 2 ubuntu servers defined in docker-compose.yml

Use 'docker inspect' to get the IP addresses of the 2 servers.

Connected to the first server

install packages - sudo, ssh
start the ssh service

Connect to the second server. 
  ping the first server 
  ssh to the first server - this will not work yet. You should see a permission denied message. 

## Generate public/private keys. 

On server 2, Generate a public/private key pair with a password
Use docker cp to send the public key to the first server so that the account is authorized

From the second server, ssh to the first server


## Write a shell script that


## Configure a cron job


## FTP files to/from server





* setting up accounts
* shell scripts (bash/sh)
* installing packages
* cron
* ssh - public/private keys


