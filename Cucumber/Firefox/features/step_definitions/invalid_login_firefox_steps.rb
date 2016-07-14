require 'rspec'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

Given(/^the user enters invalid login information$/) do
	element = driver.navigate.to "https://www.agencystream.com/login.aspx"
	element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("lkads")
	element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("kjdfg")
	element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("jlkdsfa")
end

Given(/^tries to login$/) do
	element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
end

Then(/^an error will generate on the failed login attempt$/) do
	expect(driver.page_source).to include("Your login attempt was not successful. Please try again")
	driver.quit();
end