package ui;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import io.github.bonigarcia.wdm.WebDriverManager;

public class NavigationCommand {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 * navigate().to() navigate.back(), navigate().forward(), navigate().refresh()
		 * major difference between get url and navigate.to driver.get();//accepts url
		 * in the string format driver.navigate().to();//this accepts both string and
		 * object url format
		 */
		WebDriverManager.chromedriver().setup();
		WebDriver driver = new ChromeDriver();
		driver.navigate().to("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login");
		driver.navigate().to("https://www.saucedemo.com/");
		driver.navigate().back();
		System.out.println(driver.getCurrentUrl());
		driver.navigate().forward();
		System.out.println(driver.getCurrentUrl());
		driver.navigate().refresh();
		driver.close();

	}

}
