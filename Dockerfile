# Imagem base do JDK
FROM openjdk:17-jdk-slim

# Diretório de trabalho no contêiner
WORKDIR /app

# Copia o arquivo JAR gerado para o contêiner
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta que será usada pela aplicação
EXPOSE 8080

# Comando para rodar o aplicativo Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
