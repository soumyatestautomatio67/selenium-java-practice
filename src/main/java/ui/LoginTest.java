package ui;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import io.github.bonigarcia.wdm.WebDriverManager;

public class LoginTest {
	public static String browser = "chrome";// store the value
	public static WebDriver driver;// declare global variable

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		if (browser.equals("chrome")) {
			// WebDriverManager automatically downloads the correct ChromeDriver
			WebDriverManager.chromedriver().setup();
			driver = new ChromeDriver();
		} else {
			System.out.println("Try with other browser");
		}
		// System.setProperty("webdriver.chrome.driver","/Users/soumyanayak/Downloads/chromedriver-mac-arm64/chromedriver");
		// WebDriver driver = new ChromeDriver();
		driver.get("https://www.saucedemo.com/");
		driver.findElement(By.id("user-name")).sendKeys("standerd_user");
		driver.findElement(By.id("password")).sendKeys("secret_sauce");
		driver.findElement(By.xpath("//*[@id=\"login-button\"]")).click();
		driver.close();
		/*
		 * WebElement password = driver.findElement(By.id("password")); driver.close();
		 */
		System.out.println("Frist Login Test Sucessfull");
		

	}

}
