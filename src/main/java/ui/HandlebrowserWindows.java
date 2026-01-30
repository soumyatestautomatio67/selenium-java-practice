package ui;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import io.github.bonigarcia.wdm.WebDriverManager;

public class HandlebrowserWindows {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WebDriverManager.chromedriver().setup();
		WebDriver driver = new ChromeDriver();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
		driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login");
		driver.manage().window().maximize();
		driver.findElement(By.xpath("//a[normalize-space()='OrangeHRM, Inc']")).click();
		Set<String> windowsId = driver.getWindowHandles();
		/*
		 * List<String> windowslist = new ArrayList(windowsId); String parentId =
		 * windowslist.get(0); // System.out.println(parentId); String childId =
		 * windowslist.get(1);
		 * 
		 * driver.switchTo().window(parentId); System.out.println(driver.getTitle());
		 * driver.switchTo().window(childId); System.out.println(driver.getTitle());
		 * driver.quit();
		 */
		// Approach 2
		for (String str : windowsId) {
			String str1 = driver.switchTo().window(str).getTitle();
			if (str1.equals("OrangeHRM")) {
				System.out.println(driver.getCurrentUrl());

			}

		}

	}

}
