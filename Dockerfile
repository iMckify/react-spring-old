FROM amazoncorretto:21-alpine-jdk
ENV PORT 8080
EXPOSE 8080
WORKDIR /opt
COPY backend/build/libs/*.jar /opt/app.jar
CMD ["java", "-jar", "app.jar"]