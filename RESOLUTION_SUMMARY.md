# Selenium Java Project - Fixed & Ready to Use

## ✅ What's Been Fixed

1. **Maven Build System** - Project now uses Maven (pom.xml) for dependency management
2. **VS Code Integration** - Updated `.classpath`, `.project`, and `.vscode/settings.json` for proper IDE support
3. **All Dependencies Resolved** - All Selenium and supporting libraries are downloaded and configured
4. **No Compilation Errors** - All Java files compile successfully
5. **Ready to Run** - Tests can be executed from command line

## 📋 Project Structure

```
src/main/java/ui/
├── AlertsHandeling.java              ✓ Alert handling examples
├── BrowserMethods.java               ✓ Browser navigation
├── ClosingSpecificBrowserWindow.java ✓ Window management
├── ConditionalMethods.java           ✓ Element state checks
├── GetMethods.java                   ✓ Element retrieval
├── HandleAlertsUsingExplicitwait.java ✓ Explicit waits
├── HandleCheckboxes.java             ✓ Checkbox interactions
├── HandlebrowserWindows.java         ✓ Multi-window handling
├── LoginTest.java                    ✓ Login automation
└── NavigationCommand.java            ✓ Browser navigation
```

## 🚀 Quick Start

### Build the Project
```bash
cd /Users/soumyanayak/selenium-java-practice
/tmp/apache-maven-3.9.6/bin/mvn clean install
```

### Run Tests
```bash
./run-selenium.sh LoginTest
./run-selenium.sh AlertsHandeling
./run-selenium.sh HandleCheckboxes
./run-selenium.sh NavigationCommand
```

### Or Run Directly with Java
```bash
java -cp target/selenium-java-practice-1.0.0.jar ui.LoginTest
```

## 📦 Installed Dependencies

- **Selenium 4.15.0** - WebDriver framework
- **WebDriver Manager 5.7.0** - Automatic driver setup
- **Netty 4.1.100** - Network I/O
- **GSON 2.10.1** - JSON serialization
- **Guava 32.1.3** - Utilities library
- **SLF4J 2.0.12** - Logging API
- **Logback 1.4.14** - Logging implementation

All dependencies are in `~/.m2/repository/`

## 🔧 Maven Configuration

**pom.xml** includes:
- Java 11 compatibility
- Selenium WebDriver 4.15.0
- WebDriver Manager 5.7.0
- Maven Shade Plugin for fat JAR creation
- Proper build output configuration

## 📝 Sample Code

### Login Test
```java
WebDriver driver = new ChromeDriver();
driver.get("https://www.saucedemo.com/");
driver.findElement(By.id("user-name")).sendKeys("standerd_user");
driver.findElement(By.id("password")).sendKeys("secret_sauce");
driver.findElement(By.xpath("//*[@id=\"login-button\"]")).click();
driver.close();
System.out.println("Login Test Successful");
```

### Alert Handling
```java
WebDriver driver = new ChromeDriver();
driver.get("https://www.hyrtutorials.com/p/alertsdemo.html");
driver.manage().window().maximize();
driver.findElement(By.xpath("//button[@id='alertBox']")).click();
Alert myalert = driver.switchTo().alert();
System.out.println(myalert.getText());
myalert.accept();
```

### Multi-Window Handling
```java
Set<String> windowIds = driver.getWindowHandles();
for (String windowId : windowIds) {
    String title = driver.switchTo().window(windowId).getTitle();
    System.out.println(title);
}
```

## ✨ IDE Integration

VS Code Java Extension now recognizes:
- ✅ Selenium imports
- ✅ WebDriver types
- ✅ Chrome/Edge/Firefox driver classes
- ✅ All supporting libraries
- ✅ No more red squiggly errors!

## 🧪 Test Websites Used

- [SauceDemo](https://www.saucedemo.com/) - Login & UI testing
- [OrangeHRM](https://opensource-demo.orangehrmlive.com/) - HR management system
- [Test Automation Practice](https://testautomationpractice.blogspot.com/) - Checkboxes & forms
- [The Internet](https://the-internet.herokuapp.com/) - JavaScript alerts & windows

## 📚 Next Steps

1. **Add JUnit/TestNG** for test organization
2. **Implement Page Object Model** for maintainability
3. **Add Reporting** with ExtentReports
4. **Set up CI/CD** with GitHub Actions
5. **Create Test Suites** combining multiple tests

## 🛠️ Troubleshooting

**Issue:** "Cannot resolve WebDriver"
- **Solution:** Run `mvn clean install` to refresh IDE

**Issue:** Tests timeout on Mac
- **Solution:** Chrome might be asking for permissions - allow it in System Preferences

**Issue:** "chromedriver not found"
- **Solution:** WebDriverManager automatically downloads it - ensure internet connection

## 📞 Maven Commands Reference

```bash
# Build without running tests
mvn clean install -DskipTests

# Run all tests
mvn test

# Compile only
mvn compile

# Clean build artifacts
mvn clean

# Generate dependency tree
mvn dependency:tree

# Update dependencies
mvn dependency:resolve
```

---

**Status:** ✅ All issues resolved - Project is fully functional!
