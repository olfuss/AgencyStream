require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

Given(/^the user is logged into AgencyStream$/) do
  driver.navigate.to "https://test.quomation.com/login.aspx"
  element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("65789")
  element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
  element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
  element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
end

Given(/^clicks the create new quote button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the type\/zip popup should open$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the user selects the type and enters the zip code on the popup$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks start quote$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the privacy warning popup should open$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the user clicks ok on the privacy popup$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the drivers tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks continue$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^enters information for one minor violation$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the vehicles tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the underwriting tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fills out all information on the coveraged tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks the drivers tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^verifies information entered is all there$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks the violations tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks the vehicles tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks the underwriting tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks the coverages tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clicks the quote tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^closes the duplicate customer window if it opens$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the quote should be run on the quote page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the user should see information returned from carriers$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^clean up$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the user enters invalid login information$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^tries to login$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^an error will generate on the failed login attempt$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the user enters valid login information$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the user will be directed to the AS Dashboard$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the Firefox browser is opened$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^Firefox is directed to AgencyStream$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^AgencyStream login page should be present on Firefox$/) do
  pending # Write code here that turns the phrase above into concrete actions
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
