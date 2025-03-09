# Usar Java 17
FROM openjdk:17
WORKDIR /server

# Descargar PaperMC (más optimizado que el servidor vanilla)
COPY server.jar server.jar

# Aceptar el EULA de Mojang automáticamente
RUN echo "eula=true" > eula.txt

# Exponer el puerto de Minecraft
EXPOSE 25565

# Comando para ejecutar el servidor en modo offline
CMD ["java", "-Xmx512M", "-Xms512M", "-jar", "server.jar", "--nogui"]
