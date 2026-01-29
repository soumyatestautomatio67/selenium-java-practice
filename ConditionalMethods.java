package ui;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class ConditionalMethods {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 * ConditionalMethods isDisplayed(); is Enabled(); isSelected();
		 */
		WebDriver driver = new ChromeDriver();
		driver.get("https://www.saucedemo.com/");
		driver.manage().window().maximize();
		/*boolean logo = driver.findElement(By.xpath("//div[@class='login_logo']")).isDisplayed();
		System.out.println("Display status logo:" + logo);
		WebElement status=driver.findElement(By.xpath("//div[@class='login_logo']"));
		System.err.println("Displays status logo:" +status.isDisplayed());*/
		driver.findElement(By.xpath("//input[@id='user-name']")).sendKeys("shgsg");
		System.out.println("Send keys in text box sucessfully");
		boolean status=driver.findElement(By.xpath("//input[@id='user-name']")).isEnabled();
		System.out.println("Check username enabled status:" +status);
		driver.close();

	}

}
