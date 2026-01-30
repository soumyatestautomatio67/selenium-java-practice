#!/bin/bash

# Complete Selenium 4 dependencies download script
cd /Users/soumyanayak/selenium-java-practice/lib

echo "Downloading Selenium 4.15.0 and all dependencies..."

# Core Selenium libraries
curl -s https://repo1.maven.org/maven2/org/seleniumhq/selenium/selenium-api/4.15.0/selenium-api-4.15.0.jar -o selenium-api-4.15.0.jar
curl -s https://repo1.maven.org/maven2/org/seleniumhq/selenium/selenium-chrome-driver/4.15.0/selenium-chrome-driver-4.15.0.jar -o selenium-chrome-driver-4.15.0.jar
curl -s https://repo1.maven.org/maven2/org/seleniumhq/selenium/selenium-chromium-driver/4.15.0/selenium-chromium-driver-4.15.0.jar -o selenium-chromium-driver-4.15.0.jar
curl -s https://repo1.maven.org/maven2/org/seleniumhq/selenium/selenium-support/4.15.0/selenium-support-4.15.0.jar -o selenium-support-4.15.0.jar
curl -s https://repo1.maven.org/maven2/org/seleniumhq/selenium/selenium-remote-driver/4.15.0/selenium-remote-driver-4.15.0.jar -o selenium-remote-driver-4.15.0.jar

# WebDriver Manager
curl -s https://repo1.maven.org/maven2/io/github/bonigarcia/webdrivermanager/5.7.0/webdrivermanager-5.7.0.jar -o webdrivermanager-5.7.0.jar

# Supporting libraries
curl -s https://repo1.maven.org/maven2/org/slf4j/slf4j-api/2.0.9/slf4j-api-2.0.9.jar -o slf4j-api-2.0.9.jar
curl -s https://repo1.maven.org/maven2/ch/qos/logback/logback-classic/1.4.14/logback-classic-1.4.14.jar -o logback-classic-1.4.14.jar
curl -s https://repo1.maven.org/maven2/ch/qos/logback/logback-core/1.4.14/logback-core-1.4.14.jar -o logback-core-1.4.14.jar
curl -s https://repo1.maven.org/maven2/commons-io/commons-io/2.13.0/commons-io-2.13.0.jar -o commons-io-2.13.0.jar
curl -s https://repo1.maven.org/maven2/commons-codec/commons-codec/1.16.0/commons-codec-1.16.0.jar -o commons-codec-1.16.0.jar
curl -s https://repo1.maven.org/maven2/com/google/guava/guava/32.1.3-jre/guava-32.1.3-jre.jar -o guava-32.1.3-jre.jar
curl -s https://repo1.maven.org/maven2/com/google/code/gson/gson/2.10.1/gson-2.10.1.jar -o gson-2.10.1.jar
curl -s https://repo1.maven.org/maven2/org/asynchttpclient/async-http-client/2.12.3/async-http-client-2.12.3.jar -o async-http-client-2.12.3.jar
curl -s https://repo1.maven.org/maven2/org/asynchttpclient/async-http-client-netty-utils/2.12.3/async-http-client-netty-utils-2.12.3.jar -o async-http-client-netty-utils-2.12.3.jar

# Netty
curl -s https://repo1.maven.org/maven2/io/netty/netty-codec-http/4.1.100.Final/netty-codec-http-4.1.100.Final.jar -o netty-codec-http-4.1.100.Final.jar
curl -s https://repo1.maven.org/maven2/io/netty/netty-codec/4.1.100.Final/netty-codec-4.1.100.Final.jar -o netty-codec-4.1.100.Final.jar
curl -s https://repo1.maven.org/maven2/io/netty/netty-buffer/4.1.100.Final/netty-buffer-4.1.100.Final.jar -o netty-buffer-4.1.100.Final.jar
curl -s https://repo1.maven.org/maven2/io/netty/netty-common/4.1.100.Final/netty-common-4.1.100.Final.jar -o netty-common-4.1.100.Final.jar
curl -s https://repo1.maven.org/maven2/io/netty/netty-handler/4.1.100.Final/netty-handler-4.1.100.Final.jar -o netty-handler-4.1.100.Final.jar
curl -s https://repo1.maven.org/maven2/io/netty/netty-transport/4.1.100.Final/netty-transport-4.1.100.Final.jar -o netty-transport-4.1.100.Final.jar
curl -s https://repo1.maven.org/maven2/io/netty/netty-resolver/4.1.100.Final/netty-resolver-4.1.100.Final.jar -o netty-resolver-4.1.100.Final.jar

echo "Download complete!"
ls -lh *.jar | wc -l
echo "JAR files downloaded"
