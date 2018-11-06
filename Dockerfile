FROM openjdk:8-jre
MAINTAINER Mark Nelson <mark.x.nelson@oracle.com>

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/myservice/myservice.jar"]

# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/myservice/myservice.jar