from gradle:7.5-jdk17 as build
WORKDIR /app
COPY . .
run gradle build --no-deamon
FROM azul/zulu-openjdk-alpine:17

WORKDIR /app

COPY --from=build /app/build/libs/*.jar /app/notificacao.jar

EXPOSE 8082

CMD ["java", "-jar", "/app/notificacao.jar"]