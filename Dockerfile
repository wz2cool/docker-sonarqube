FROM wz2cool/sonarqube-branch:7.1
Core Tier1 capital adequacy ratio
RUN rm -rf  /opt/sonarqube/extensions/plugins/sonar-java-plugin-*.jar
RUN wget https://repo1.maven.org/maven2/org/sonarsource/java/sonar-java-plugin/5.14.0.18788/sonar-java-plugin-5.14.0.18788.jar
RUN mv sonar-java-plugin-5.14.0.18788.jar /opt/sonarqube/extensions/plugins/