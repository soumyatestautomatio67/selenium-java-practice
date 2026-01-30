# Selenium Java Project - Complete Setup Guide

## ✅ Final Status: All Issues Resolved

### What Was Fixed

1. **Maven Build System** - Properly configured with all Selenium dependencies
2. **VS Code Integration** - Eclipse/Maven classpath configuration for IDE support
3. **Dependency Resolution** - All 60+ JARs properly downloaded and organized
4. **Launch Configuration** - Pre-configured test runners for easy execution
5. **Build Tasks** - Maven tasks integrated into VS Code

---

## 🚀 Quick Start

### Option 1: Run from VS Code
1. Open any test file (e.g., `LoginTest.java`)
2. Click "Run" above the main method
3. Or use **Ctrl+Shift+D** → Select configuration → Run

### Option 2: Run from Terminal
```bash
cd /Users/soumyanayak/selenium-java-practice

# Build project
/tmp/apache-maven-3.9.6/bin/mvn clean install

# Run specific test
java -cp "target/classes:target/dependency/*" ui.LoginTest
java -cp "target/classes:target/dependency/*" ui.AlertsHandeling
java -cp "target/classes:target/dependency/*" ui.HandleCheckboxes
java -cp "target/classes:target/dependency/*" ui.NavigationCommand
```

### Option 3: Use VS Code Run Script
```bash
./run-selenium.sh LoginTest
./run-selenium.sh AlertsHandeling
```

---

## 📁 Project Structure

```
selenium-java-practice/
├── src/main/java/ui/              # Test automation code
│   ├── LoginTest.java             ✓ Login automation
│   ├── AlertsHandeling.java       ✓ Alert handling
│   ├── HandleCheckboxes.java      ✓ Checkbox interactions
│   ├── NavigationCommand.java      ✓ Browser navigation
│   └── [6 more test files]
├── target/
│   ├── classes/                   # Compiled Java classes
│   └── dependency/                # 60+ JAR dependencies
├── .vscode/
│   ├── settings.json              # VS Code Java settings
│   ├── launch.json                # Test run configurations
│   └── tasks.json                 # Maven build tasks
├── .classpath                     # Eclipse classpath (Maven)
├── .project                       # Eclipse/VS Code project file
├── pom.xml                        # Maven configuration
└── run-selenium.sh                # Quick run script
```

---

## 📦 Dependencies Installed

**Main Libraries:**
- Selenium WebDriver 4.15.0
- WebDriver Manager 5.7.0
- Apache HttpComponents Client5 5.2.1
- Netty 4.1.100 (Network I/O)
- GSON 2.10.1 (JSON)
- SLF4J 2.0.12 + Logback 1.4.14 (Logging)
- Guava 32.1.3 (Google Utilities)

**Total:** 60+ JAR files in `target/dependency/`

---

## 🧪 Available Test Classes

| Test | Purpose | Target Website |
|------|---------|-----------------|
| `LoginTest` | Login form automation | saucedemo.com |
| `AlertsHandeling` | JavaScript alert handling | hyrtutorials.com |
| `HandleAlertsUsingExplicitwait` | Alerts with explicit waits | the-internet.herokuapp.com |
| `HandleCheckboxes` | Checkbox selection | testautomationpractice.blogspot.com |
| `NavigationCommand` | Browser back/forward/refresh | orangehrmlive.com |
| `BrowserMethods` | Browser navigation methods | orangehrmlive.com |
| `ConditionalMethods` | Element state verification | saucedemo.com |
| `HandlebrowserWindows` | Multi-window handling | orangehrmlive.com |
| `ClosingSpecificBrowserWindow` | Window closing | Various |
| `GetMethods` | Element retrieval | Various |

---

## 🛠️ Maven Commands

```bash
# Build and install dependencies
/tmp/apache-maven-3.9.6/bin/mvn clean install -DskipTests

# Compile only
/tmp/apache-maven-3.9.6/bin/mvn compile

# Build and create all necessary artifacts
/tmp/apache-maven-3.9.6/bin/mvn package -DskipTests

# Resolve dependencies
/tmp/apache-maven-3.9.6/bin/mvn dependency:resolve

# View dependency tree
/tmp/apache-maven-3.9.6/bin/mvn dependency:tree
```

---

## 🔧 Configuration Files

### `.vscode/settings.json`
```json
{
    "java.import.maven.enabled": true,
    "java.configuration.updateBuildConfiguration": "automatic",
    "java.project.outputPath": "target/classes"
}
```

### `.vscode/launch.json`
Pre-configured launchers for all test classes with automatic Maven build

### `.vscode/tasks.json`
Maven build tasks: `maven: install`, `maven: compile`, `maven: package`

### `pom.xml`
- Selenium 4.15.0
- WebDriver Manager 5.7.0
- Maven Dependency Plugin for classpath
- Maven Shade Plugin for fat JAR creation

---

## 🔍 Troubleshooting

### Issue: VS Code shows "Cannot resolve WebDriver"
**Solution:** 
```bash
# Rebuild Maven project
/tmp/apache-maven-3.9.6/bin/mvn clean install

# In VS Code, press Ctrl+Shift+P → Java: Clean Language Server Workspace
```

### Issue: Test runs but Chrome doesn't open
**Solution:** WebDriverManager auto-downloads ChromeDriver. First run may take time.

### Issue: "ConnectionFailedException" when running
**Solution:** This is fixed! All httpcore5 dependencies are now properly included in classpath.

### Issue: Can't find Maven command
**Solution:** Maven is at `/tmp/apache-maven-3.9.6/bin/mvn`

---

## 📝 Sample Code

### Basic Login Test
```java
WebDriver driver = new ChromeDriver();
driver.get("https://www.saucedemo.com/");
driver.findElement(By.id("user-name")).sendKeys("standard_user");
driver.findElement(By.id("password")).sendKeys("secret_sauce");
driver.findElement(By.xpath("//*[@id='login-button']")).click();
```

### Handle JavaScript Alert
```java
driver.findElement(By.xpath("//button[@id='alertBox']")).click();
Alert alert = driver.switchTo().alert();
System.out.println(alert.getText());
alert.accept();  // Click OK
```

### Switch Between Windows
```java
Set<String> windowIds = driver.getWindowHandles();
for (String windowId : windowIds) {
    driver.switchTo().window(windowId);
    System.out.println(driver.getTitle());
}
```

---

## 📚 Running Tests from VS Code

1. **Click Run Button** (above main method) - Requires Maven to be built first
2. **Use Launch Configuration** - Ctrl+Shift+D → Select test → Run
3. **Terminal** - `java -cp "target/classes:target/dependency/*" ui.TestName`

**All dependencies are now automatically resolved by Maven!**

---

## ✨ Key Features

✅ Full Maven integration  
✅ VS Code launch configurations  
✅ Automatic Maven build tasks  
✅ All 60+ dependencies downloaded  
✅ No manual JAR management needed  
✅ Clean IDE workspace  
✅ Proper classpath resolution  

---

## 📞 Next Steps

1. **Create Test Suite** - Add TestNG/JUnit for test organization
2. **Page Object Model** - Organize tests with POM pattern
3. **Test Reports** - Add ExtentReports for reporting
4. **CI/CD** - Set up GitHub Actions for automated testing
5. **Cross-browser** - Test on Firefox, Edge with Selenium

---

**Status: ✅ Ready to Use - No More Errors!**
