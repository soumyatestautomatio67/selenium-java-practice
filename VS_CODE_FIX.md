# How to Fix VS Code Java Extension Classpath

## Issue
VS Code's Java extension wasn't recognizing Selenium dependencies when running tests, causing `NoClassDefFoundError`.

## Solution Applied

### Configuration Updates:
1. **`.classpath`** - Updated to use Maven classpath container
2. **`.vscode/settings.json`** - Added explicit reference to `target/dependency/**/*.jar`
3. **`pom.xml`** - Configured Maven to copy all dependencies to `target/dependency/`
4. **`.project`** - Added Maven builder and nature

### Manual Steps to Complete Setup:

**Step 1: Restart VS Code's Java Language Server**
1. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
2. Type: `Java: Clean Language Server Workspace`
3. Select it and confirm
4. Wait for VS Code to restart the Java extension (takes 30-60 seconds)

**Step 2: Rebuild Project**
1. Open terminal in VS Code
2. Run: `/tmp/apache-maven-3.9.6/bin/mvn clean install -DskipTests`

**Step 3: Reload VS Code Window**
1. Press `Ctrl+Shift+P` (or `Cmd+Shift+P`)
2. Type: `Developer: Reload Window`
3. Press Enter

### Why This Happens
- VS Code's Java extension caches the project structure and classpath
- When you change `.vscode/settings.json` or `.classpath`, the cache needs to be cleared
- The Language Server rebuilds the classpath from scratch when restarted

### How to Run Tests Now

**Option 1: From VS Code (recommended)**
1. Click "Run" button above any `main()` method
2. Or press `Ctrl+Shift+D` and select a configuration

**Option 2: From Terminal**
```bash
cd /Users/soumyanayak/selenium-java-practice
java -cp "target/classes:target/dependency/*" ui.LoginTest
java -cp "target/classes:target/dependency/*" ui.AlertsHandeling
java -cp "target/classes:target/dependency/*" ui.HandleCheckboxes
```

**Option 3: Using run script**
```bash
./run-selenium.sh LoginTest
```

### If Tests Still Don't Run from VS Code

Try this workaround:
```bash
# 1. Force rebuild everything
/tmp/apache-maven-3.9.6/bin/mvn clean install -DskipTests

# 2. Regenerate Eclipse project files
/tmp/apache-maven-3.9.6/bin/mvn eclipse:clean eclipse:eclipse

# 3. Restart VS Code completely
```

Then repeat the "Manual Steps" above.

### Status
✅ Project is properly configured with Maven  
✅ All dependencies are downloaded (target/dependency/)  
✅ Command-line execution works perfectly  
⏳ VS Code IDE integration requires Language Server restart  

**After restarting the Java Language Server, tests will run from VS Code's Run button!**
