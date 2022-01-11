#stage 1: Build the application
FROM openjdk:11-jdk-slim as build

# Set the current working directory inside the image
WORKDIR /app

# Copy maven executable to the image
COPY mvnw .
COPY .mvn .mvn

# Copy the pom.xml file
COPY pom.xml .
RUN  chmod +x mvnw

# Copy the project source
COPY src src

# Package the application
RUN ./mvnw package -DskipTests

#### Stage 2: A minimal docker image with command to run the app 
FROM openjdk:11-jre-slim

COPY --from=build /app/target/devOpsDemo-0.0.1-SNAPS
COPY --from=build /app/target/devOpsDemo-0.0.1-SNAPSHOT.jar app.jar


ENTRYPOINT ["java","-jar","app.jar"]

EXPOSE 2222
