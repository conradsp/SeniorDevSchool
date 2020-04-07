The test-app requires a connection to a postgresql database called test-app. The credentials
for the database can be found in the application.

  * Test app is a Node application. Take the Dockerfile from exercise 1 and use it to build 
    the test application.
  * Create a docker-compose file that will launch a database container and a container for
    the Node app. The web application should run on port 8000
  * To test the Dockerfile, run docker-compose up, launch a browser and navigate to 
    http://localhost:8000/users. It should return a list of users from the database.

  * Bonus: install the postgresql client in the web app container and put a database health check in the docker-entrypoint script to make sure that the database is up before launching the web app

