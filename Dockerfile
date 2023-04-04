FROM gradle:jdk17 AS builder

WORKDIR /app
COPY . /app
RUN gradle build --no-daemon -x test

FROM eclipse-temurin:17-jre

WORKDIR /app
COPY --from=builder /app/build/libs/*.jar /app/app.jar
CMD ["java", "-jar", "app.jar"]
