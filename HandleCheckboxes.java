package ui;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class HandleCheckboxes {
	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		WebDriver driver = new ChromeDriver();
		driver.get("https://testautomationpractice.blogspot.com/");
		driver.manage().window().maximize();
		List<WebElement> checkboxes = driver
				.findElements(By.xpath("//input[@class='form-check-input' and @type='checkbox']"));
		// approach1
		/*
		 * for(int i=0; i<checkboxes.size();i++) { checkboxes.get(i).click();
		 * 
		 * }
		 */
		// approach2
		/*
		 * for ( WebElement checkbox: checkboxes) { checkbox.click();
		 * 
		 * }
		 */
		// approach3 check checkbox last 3
		/*
		 * for (int i = 4; i < checkboxes.size(); i++) { checkboxes.get(i).click(); }
		 */
		// approach4 select 1st 3 boxes
		for (int i = 0; i < 4; i++) {
			checkboxes.get(i).click();
		}
		Thread.sleep(3000);
		for (int i = 0; i < checkboxes.size(); i++) {
			if (checkboxes.get(i).isSelected()) {

				checkboxes.get(i).click();
			}
		}

	}

}
