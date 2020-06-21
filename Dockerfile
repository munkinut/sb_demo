FROM adoptopenjdk/openjdk11
RUN groupadd --gid 2866 spring && useradd --home-dir /home/spring --create-home --uid 2866 --gid 2866 --shell /bin/sh --skel /dev/null spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
