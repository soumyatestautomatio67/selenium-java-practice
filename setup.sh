#!/bin/bash

# Download Selenium and dependencies
echo "Setting up Selenium Java project..."

# Create lib directory
mkdir -p lib

# Download Selenium WebDriver
echo "Downloading Selenium WebDriver..."
curl -L https://repo1.maven.org/maven2/org/seleniumhq/selenium/selenium-java/4.15.0/selenium-java-4.15.0.jar -o lib/selenium-java-4.15.0.jar

# Download WebDriver Manager
echo "Downloading WebDriver Manager..."
curl -L https://repo1.maven.org/maven2/io/github/bonigarcia/webdrivermanager/5.7.0/webdrivermanager-5.7.0.jar -o lib/webdrivermanager-5.7.0.jar

# Download required dependencies for WebDriver Manager
echo "Downloading dependencies..."
curl -L https://repo1.maven.org/maven2/org/slf4j/slf4j-api/2.0.9/slf4j-api-2.0.9.jar -o lib/slf4j-api-2.0.9.jar
curl -L https://repo1.maven.org/maven2/ch/qos/logback/logback-classic/1.4.14/logback-classic-1.4.14.jar -o lib/logback-classic-1.4.14.jar
curl -L https://repo1.maven.org/maven2/ch/qos/logback/logback-core/1.4.14/logback-core-1.4.14.jar -o lib/logback-core-1.4.14.jar
curl -L https://repo1.maven.org/maven2/commons-io/commons-io/2.13.0/commons-io-2.13.0.jar -o lib/commons-io-2.13.0.jar
curl -L https://repo1.maven.org/maven2/commons-codec/commons-codec/1.16.0/commons-codec-1.16.0.jar -o lib/commons-codec-1.16.0.jar
curl -L https://repo1.maven.org/maven2/com/google/guava/guava/32.1.3-jre/guava-32.1.3-jre.jar -o lib/guava-32.1.3-jre.jar

echo "Setup complete!"
