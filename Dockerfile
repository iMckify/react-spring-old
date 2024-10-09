FROM amazoncorretto:21-alpine-jdk
ENV PORT 8080
EXPOSE 8080
COPY backend/build/libs/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]