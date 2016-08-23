require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

Given(/^the user is logged into AgencyStream$/) do
  driver.navigate.to "https://test.quomation.com/login.aspx"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("65789")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
  sleep(3)
end

Given(/^clicks the create new quote button$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnNewQuote').click
end

Then(/^the type\/zip popup should open$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragNewQuote').displayed?
end

Then(/^the user selects the type Auto and enters the zip code on the popup$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_cmbQuoteType').send_keys"a"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtZip').send_keys"84070"
end

Then(/^clicks start quote$/) do
  element = driver.find_element(:id, 'btnStartQuote1').click  
end

Then(/^the privacy warning popup should open$/) do
  sleep(3)
  element = driver.find_element(:id, 'btnPrivacyOK').displayed?
end

Then(/^the user clicks ok on the privacy popup$/) do
  element = driver.find_element(:id, 'btnPrivacyOK').click
end

Then(/^fills out all information on the driver 1 tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the driver 2 tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the driver 3 tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the driver 4 tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks continue$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^enters information for one minor violation$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the vehicle 1 tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the vehicle 2 tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the vehicle 3 tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the vehicle 4 tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the underwriting tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the coveraged tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks the quote tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^closes the duplicate customer window if it opens$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the user should see information returned from carriers$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the user enters invalid login information$/) do
driver.navigate.to "https://test.quomation.com/login.aspx"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("65789")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("murder.face@murdermail.com")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("YourPasswordSucks")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
end

Given(/^tries to login$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^an error will generate on the failed login attempt$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the user enters valid login information$/) do
 element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("65789")
 element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
 element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
end

Then(/^the user will be directed to the AS Dashboard$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_gvClients').displayed?
end

Given(/^Firefox is directed to AgencyStream$/) do
  driver.navigate.to "https://test.quomation.com/login.aspx"
end

Given(/^enters a valid auto quote ID into the search field$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^clicks the search button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the browser will direct to the search results page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^enters a valid home quote ID into the search field$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clean up$/) do
  driver.quit();
end