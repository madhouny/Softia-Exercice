# Spring Boot, PostgreSQL, JPA, 
# Steps to Setup
# 1. Clone the repository

git clone https://github.com/madhouny/Softia-Exercice.git

# 2. Configure PostgreSQL
First, create a database named softia. Then, open src/main/resources/application.properties file and change the spring datasource username and password as per your PostgreSQL installation.
Second , In pgAdmin, select the database, Right Click and choose Restore and select the file name of our database dump 'db.sql' 
Download : https://github.com/madhouny/Softia-Exercice/blob/master/db.sql

# 3. Run the app
The application will start on the default port 8080.

