FROM cgr.dev/chainguard/jre:latest
ENV PORT 8080
EXPOSE 8080
RUN mkdir -p /opt
COPY backend/build/libs/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]