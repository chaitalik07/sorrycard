# Use Java 17 JDK from Eclipse Temurin
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy project files into container
COPY . .

# Make mvnw executable and build the project
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

# Run the Spring Boot jar
CMD ["java", "-jar", "target/*.jar"]
