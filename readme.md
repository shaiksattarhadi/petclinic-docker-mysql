# Spring PetClinic Sample Application

# petclinic-docker-mysql


Deploy Spring Boot Petclinic Application + MYSQL Application to Docker


===========================================================================


# step 1:- For running mysql container with single command username, password, db_name.


docker run --name hadi-mysql -e MYSQL_ROOT_PASSWORD=hadi_password -e MYSQL_DATABASE=hadi_db -e MYSQL_USER=hadi_user -e MYSQL_PASSWORD=hadi_password -d mysql:latest --default-authentication-plugin=mysql_native_password


# step 2:- For building the our petclinic application.

docker build . -t petclinic


# step 3:- For running the final application linking the petclinic application and mysql database.

docker run -d -p 9000:8080 --name petclinic-final-app --link hadi-mysql:mysql petclinic   


For logs
===========
docker logs container-name


Get:  http://18.188.102.152:9999/petclinic

========================================================================
