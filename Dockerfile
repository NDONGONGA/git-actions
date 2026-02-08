# Step 1: Use a lightweight Java Runtime Environment (JRE)
# Alpine is used here to keep the image size very small (around 100MB vs 400MB+)
FROM eclipse-temurin:17-jre-alpine

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the JAR file from your Maven build into the container
# Maven puts the finished jar in the 'target' folder.
# We rename it to 'app.jar' inside the container for simplicity.
COPY target/*.jar app.jar

# Step 4: Expose the port your Spring Boot app runs on (usually 8080)
EXPOSE 8080

# Step 5: Start the application
# We use -Djava.security.egd to speed up Tomcat startup in container environments
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]