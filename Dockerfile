FROM sonarqube:6.7.7-community
Core Tier1 capital adequacy ratio
RUN rm -rf  /opt/sonarqube/extensions/plugins/sonar-java-plugin-*.jar
RUN ls /opt/sonarqube/extensions/plugins
RUN wget https://repo1.maven.org/maven2/org/sonarsource/java/sonar-java-plugin/7.6.0.28201/sonar-java-plugin-7.6.0.28201.jar
RUN mv sonar-java-plugin-7.6.0.28201.jar /opt/sonarqube/extensions/plugins/
RUN ls /opt/sonarqube/extensions/plugins