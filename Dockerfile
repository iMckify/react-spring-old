FROM cgr.dev/chainguard/jre:latest-dev
ENV PORT 8080
EXPOSE 8080
WORKDIR /opt

RUN ls -R backend || echo "Directory 'backend' not found"

COPY backend/build/libs/*.jar /opt/app.jar

# Check if the app.jar exists
RUN if [ ! -f /opt/app.jar ]; then echo ".jar not found!"; exit 1; fi

CMD ["java", "-jar", "app.jar"]