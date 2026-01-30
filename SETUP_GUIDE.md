# Selenium Java Practice Project

A sample Selenium WebDriver project with Java automation tests covering various UI interactions and browser operations.

## Project Structure

```
├── AlertsHandeling.java              # JavaScript alert handling
├── BrowserMethods.java               # Browser navigation methods
├── ClosingSpecificBrowserWindow.java  # Window management
├── ConditionalMethods.java           # Element state verification
├── GetMethods.java                   # Element retrieval methods
├── HandleAlertsUsingExplicitwait.java # Alerts with explicit waits
├── HandleCheckboxes.java             # Checkbox interactions
├── HandlebrowserWindows.java         # Multi-window/tab handling
├── LoginTest.java                    # Login automation example
├── NavigationCommand.java            # Browser navigation commands
├── lib/                              # Selenium & dependencies
├── run-alerts.sh                     # Run script
└── pom.xml / build.gradle            # Build configurations
```

## Setup Instructions

### 1. Download Dependencies

```bash
bash download-deps.sh
```

This downloads all required Selenium and supporting libraries to the `lib/` directory.

### 2. Compile Java Files

Compile a specific test:
```bash
javac -cp "lib/selenium-api-4.15.0.jar:lib/selenium-chrome-driver-4.15.0.jar:lib/selenium-chromium-driver-4.15.0.jar:lib/selenium-remote-driver-4.15.0.jar:lib/selenium-support-4.15.0.jar" AlertsHandeling.java
```

### 3. Run Tests

Use the provided run script:
```bash
./run-alerts.sh
```

## Key Test Examples

### **1. Login Test**
```java
driver.get("https://www.saucedemo.com/");
driver.findElement(By.id("user-name")).sendKeys("standerd_user");
driver.findElement(By.id("password")).sendKeys("secret_sauce");
driver.findElement(By.xpath("//*[@id=\"login-button\"]")).click();
```

### **2. Handle Alerts**
```java
Alert myalert = driver.switchTo().alert();
System.out.println(myalert.getText());
myalert.accept();  // Click OK
driver.switchTo().alert().dismiss();  // Click Cancel
```

### **3. Handle Checkboxes**
```java
List<WebElement> checkboxes = driver.findElements(
    By.xpath("//input[@class='form-check-input' and @type='checkbox']")
);
for (int i = 0; i < 4; i++) {
    checkboxes.get(i).click();
}
```

### **4. Browser Navigation**
```java
driver.navigate().to("https://example.com");
driver.navigate().back();
driver.navigate().forward();
driver.navigate().refresh();
```

### **5. Multi-Window Handling**
```java
Set<String> windowIds = driver.getWindowHandles();
for (String windowId : windowIds) {
    String title = driver.switchTo().window(windowId).getTitle();
    if (title.equals("Target Title")) {
        // Perform actions in this window
    }
}
```

### **6. Element Verification**
```java
boolean isDisplayed = driver.findElement(By.id("element")).isDisplayed();
boolean isEnabled = driver.findElement(By.id("element")).isEnabled();
boolean isSelected = driver.findElement(By.id("element")).isSelected();
```

## Locator Strategies

- **ID**: `By.id("elementId")`
- **XPath**: `By.xpath("//tagname[@attribute='value']")`
- **Link Text**: `By.linkText("Link Text")`
- **Class Name**: `By.className("className")`
- **CSS Selector**: `By.cssSelector("selector")`

## Test Websites

- [SauceDemo](https://www.saucedemo.com/) - Login testing
- [OrangeHRM Demo](https://opensource-demo.orangehrmlive.com/) - HR management system
- [Test Automation Practice](https://testautomationpractice.blogspot.com/) - Checkboxes, alerts
- [The Internet](https://the-internet.herokuapp.com/) - JavaScript alerts

## Dependencies

- **Selenium WebDriver 4.15.0** - Web automation framework
- **WebDriver Manager 5.7.0** - Automatic driver management
- **Netty 4.1.100** - Network I/O
- **GSON 2.10.1** - JSON processing
- **Guava 32.1.3** - Google utilities
- **SLF4J & Logback** - Logging

## Troubleshooting

**Issue**: `ClassNotFoundException: org.openqa.selenium.*`
- **Solution**: Ensure all JAR files are in the `lib/` directory and classpath includes them

**Issue**: ChromeDriver not found
- **Solution**: The WebDriverManager library automatically downloads the appropriate driver

**Issue**: Tests timing out
- **Solution**: Use implicit or explicit waits:
  ```java
  driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
  ```

## Next Steps

- Add JUnit/TestNG test runners
- Implement Page Object Model (POM)
- Add logging and reporting
- Set up CI/CD pipeline
