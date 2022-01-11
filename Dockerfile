FROM java:latest

COPY ./target/devOpsDemo-0.0.1-SNAPSHOT.jar ./app.jar

ENTRYPOINT [ "java ", "-jar",  " app.jar" ]
