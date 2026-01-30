#!/bin/bash

# Selenium Java Tests Runner
# This script compiles and runs Selenium tests

set -e

PROJECT_ROOT="/Users/soumyanayak/selenium-java-practice"
MAVEN_CMD="/tmp/apache-maven-3.9.6/bin/mvn"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Selenium Java Test Runner${NC}"
echo "================================"

# Option 1: Build
if [ "$1" == "build" ] || [ "$1" == "clean" ]; then
    echo -e "${BLUE}Building project...${NC}"
    cd "$PROJECT_ROOT"
    if [ "$1" == "clean" ]; then
        $MAVEN_CMD clean install -DskipTests
    else
        $MAVEN_CMD install -DskipTests
    fi
    echo -e "${GREEN}✓ Build successful${NC}"
    exit 0
fi

# Option 2: Run specific test
if [ -n "$1" ]; then
    TEST_CLASS=$1
    echo -e "${BLUE}Running test: $TEST_CLASS${NC}"
    cd "$PROJECT_ROOT"
    java -cp target/classes:target/dependency/* ui.$TEST_CLASS &
    sleep 8
    pkill -f "ui.$TEST_CLASS" 2>/dev/null || true
    echo -e "${GREEN}✓ Test execution complete${NC}"
    exit 0
fi

# Option 3: Show available tests
echo -e "${BLUE}Available tests:${NC}"
echo "  LoginTest"
echo "  AlertsHandeling"
echo "  HandleAlertsUsingExplicitwait"
echo "  HandleCheckboxes"
echo "  NavigationCommand"
echo "  BrowserMethods"
echo "  ConditionalMethods"
echo "  HandlebrowserWindows"
echo ""
echo "Usage:"
echo "  ./run-selenium.sh build              # Build project"
echo "  ./run-selenium.sh clean              # Clean and rebuild"
echo "  ./run-selenium.sh LoginTest          # Run specific test"
