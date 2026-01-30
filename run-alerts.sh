#!/bin/bash

# Build classpath with all JARs
CP="lib/selenium-api-4.15.0.jar:lib/selenium-chrome-driver-4.15.0.jar:lib/selenium-chromium-driver-4.15.0.jar:lib/selenium-remote-driver-4.15.0.jar:lib/selenium-support-4.15.0.jar:lib/webdrivermanager-5.7.0.jar:lib/netty-codec-http-4.1.100.Final.jar:lib/gson-2.10.1.jar:lib/guava-32.1.3-jre.jar:lib/netty-codec-4.1.100.Final.jar:lib/netty-buffer-4.1.100.Final.jar:lib/netty-common-4.1.100.Final.jar:lib/netty-handler-4.1.100.Final.jar:lib/netty-transport-4.1.100.Final.jar:lib/netty-resolver-4.1.100.Final.jar:lib/async-http-client-2.12.3.jar:lib/async-http-client-netty-utils-2.12.3.jar:lib/slf4j-api-2.0.9.jar:lib/logback-classic-1.4.14.jar:lib/logback-core-1.4.14.jar:lib/commons-io-2.13.0.jar:lib/commons-codec-1.16.0.jar:."

echo "Running AlertsHandeling..."
java -cp "$CP" AlertsHandeling
