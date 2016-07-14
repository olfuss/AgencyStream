require 'selenium-webdriver'

driverFF = Selenium::WebDriver.for :firefox


Given(/^the Firefox browser is opened$/) do
	puts "Selenium WebDriver for Firefox opened successfully"
end

Given(/^Firefox is directed to AgencyStream$/) do
  driverFF.navigate.to "https://www.agencystream.com/login.aspx"
  puts "Navigation to AgencyStream succeeded"
 end

Then(/^AgencyStream login page should be present on Firefox$/) do
  element = driverFF.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
  element = driverFF.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
  element = driverFF.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
  element = driverFF.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin')
  puts "Verified Login fields are present"
  driverFF.quit();
end