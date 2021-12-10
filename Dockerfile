FROM sonarqube:6.6

RUN ls /opt/sonarqube/extensions/plugins/
RUN rm -rf  /opt/sonarqube/extensions/plugins/sonar-java-plugin-*.jar
RUN ls /opt/sonarqube/extensions/plugins
RUN wget https://repo1.maven.org/maven2/org/sonarsource/java/sonar-java-plugin/4.15.0.12310/sonar-java-plugin-4.15.0.12310.jar
RUN mv sonar-java-plugin-4.15.0.12310.jar /opt/sonarqube/extensions/plugins/
RUN ls /opt/sonarqube/extensions/plugins

RUN echo -e "\nsonar.ce.workerCount=5\n" >> /opt/sonarqube/conf/sonar.properties