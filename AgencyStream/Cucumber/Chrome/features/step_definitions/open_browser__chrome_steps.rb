require 'selenium-webdriver'

driverC = Selenium::WebDriver.for :chrome


Given(/^the Chrome browser is opened$/) do
	@driverC
	puts "Selenium WebDriver for Chrome opened successfully"
end

Given(/^Chrome is directed to AgencyStream$/) do
  driverC.navigate.to "https://www.agencystream.com/login.aspx"
  puts "Navigation to AgencyStream succeeded"
 end

Then(/^AgencyStream login page should be present on Chrome$/) do
  element = driverC.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
  element = driverC.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
  element = driverC.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
  element = driverC.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin')
  puts "Verified Login fields are present"
end