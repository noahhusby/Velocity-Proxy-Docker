FROM fabric8/java-jboss-openjdk8-jdk:1.4.0
COPY server.jar /etc/btemi/
COPY velocity.toml /etc/btemi/

ENV JAVA_APP_JAR /etc/btemi/server.jar
ENV AB_OFF true

EXPOSE 48221

CMD ["java", "-Xmx512m", "-jar", "/etc/btemi/server.jar"]
