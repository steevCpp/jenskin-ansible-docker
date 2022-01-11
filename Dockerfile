FROM openjdk:8-jdk-alpine AS im

ADD target/devOpsDemo-0.0.1-SNAPSHOT.jar  app.jar

EXPOSE 2222



FROM maven

COPY --from=im app.jar ./

CMD ["mvn","clean install package"]

ENTRYPOINT ["java","-jar","app.jar"]

