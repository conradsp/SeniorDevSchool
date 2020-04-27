# Lesson 1 - Docker

Most modern applications run in containers. Using containers allows a software platform to be deployed in a consistent and scalable manner. A senior developer must know how to use Docker for a wide range of applications. 

# Research

* https://docs.docker.com/get-started/
* https://docs.docker.com/compose/


# Code

Prerequisites

* Install and configure docker and docker compose in your development environment.
* Install Node and NPM on your system (Node version 12 or higher). Bonus points
for using nvm to allow multiple versions of Node 
* Install Ruby and Rails on your system 


# Exercises

## Write a Dockerfile for a Node app

The goal of this exercise is to create a simple node app that will run in a docker
container. When the container is launched, it will listen on port 3000. When you 
navigate to http://localhost:3000, the app will respond with a 'Hello World' message.

  * Create a simple node app using Express running on port 3000. Have a single default
    route that will display a 'Hello World' message
  * Create a Dockerfile that will build and run the app

Bonus exercise:
    
  Set an environment variable in the docker container. The variable will contain your name.
  Read the environment variable from the Node app (if it is set) and say 'Hello <your name>'
  instead of 'Hello World'.


## Create a docker-compose file for the application in the test-app folder
    
The test-app requires a connection to a postgresql database called test-app. The credentials
for the database can be found in the application.

  * Test app is a Node application. Take the Dockerfile from exercise 1 and use it to build 
    the test application.
  * Create a docker-compose file that will launch a database container and a container for
    the Node app. The web application should run on port 8000
  * To test the Dockerfile, run docker-compose up, launch a browser and navigate to 
    http://localhost:8000/users. It should return a list of users from the database.

  * Bonus: install the postgresql client in the web app container and put a database health check in the docker-entrypoint script to make sure that the database is up before launching the web app

## Fix the application in the fix-app folder

This exercise requires you to fix a broken application. The application is a simple
Rails app that displays a list of users from a database.

  * First, look at the Dockerfile for this application and make sure that you understand what the Dockerfile is doing to build the rails image  
  * Start the application and navigate to http://localhost:4000. The app should show a list of users from the database, but there is an error in the Docker configuration
  * Update the docker files to get the application to run correctly. There are two issues that need to be resolved in order to get the applciation to run. 
