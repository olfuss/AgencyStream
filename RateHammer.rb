require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
	driver.navigate.to "https://test.quomation.com/login.aspx"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
