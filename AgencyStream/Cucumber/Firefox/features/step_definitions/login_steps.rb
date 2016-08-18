require 'rspec'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 5)

Given(/^the user enters valid login information$/) do
  driver.navigate.to "https://agencystream.com/login.aspx"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
end
Then(/^the user will be directed to the AS Dashboard$/) do
graphs = wait.until {
	element = driver.find_element(:id, 'tblGraphs')
	element if element.displayed?
}
driver.quit{};
end
