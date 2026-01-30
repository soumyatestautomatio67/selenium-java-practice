package ui;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import io.github.bonigarcia.wdm.WebDriverManager;

public class AlertsHandeling {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		WebDriverManager.chromedriver().setup();
		WebDriver driver=new ChromeDriver();
		driver.get("https://www.hyrtutorials.com/p/alertsdemo.html#google_vignette");
		driver.manage().window().maximize();
		driver.findElement(By.xpath("//button[@id='alertBox']")).click();
		Thread.sleep(4000);
		Alert myalert=driver.switchTo().alert();
		System.out.println(myalert.getText());
		myalert.accept();
		//ok & cancel method- confirmation alert
		
		driver.findElement(By.xpath("//button[@id='confirmBox']")).click();
		driver.switchTo().alert().dismiss();
	}

}
