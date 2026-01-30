package ui;

import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import io.github.bonigarcia.wdm.WebDriverManager;

public class GetMethods {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		WebDriverManager.chromedriver().setup();
		WebDriver driver= new ChromeDriver();
		//get(url)- launch the url on the brpwser 
		driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login");
		Thread.sleep(5000);
		//get(title)- returns title of the page
		System.out.println(driver.getTitle());
		//getCurrentURL()- return URL of the page
		System.out.println(driver.getCurrentUrl());
		//getPageSource()- returns source code of the page
		System.out.println(driver.getPageSource());
		//getWindowhaddle- returns id of the single brpwser window
		String window=driver.getWindowHandle();
		System.out.println(window);
		//getWindowHandles- returns id of the multiple bowser windows
		driver.findElement(By.linkText("OrangeHRM, Inc")).click();
		Set<String> windows =driver.getWindowHandles();
		

	}

}
