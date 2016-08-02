require 'selenium-webdriver'
require 'rspec'

driver2 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 5)

Given(/^the user is logged into AgencyStream$/) do
  driver2.navigate.to "https://test.quomation.com"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
  element.send_keys("65789")
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
  element.send_keys("olfuss.ratatosksson@quomation.com")
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
  element.send_keys("Odinsson1010")
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
  puts "Login Success"
end

Given(/^clicks the create new quote button$/) do
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnNewQuote').click
end

Then(/^the type\/zip popup should open$/) do
  element = wait.until {
  element = driver2.find_element(:id, 'btnPrivacyOK')
  element if element.displayed?
}
  element.click
end

Then(/^the user selects the type and enters the zip code on the popup$/) do
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtZip').send_keys"84070"
end

Then(/^clicks start quote$/) do
  element = driver2.find_element(:id, 'btnStartQuote1').click
end

Then(/^the privacy warning popup should open$/) do
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_dragPrivacy')
end

Then(/^the user clicks ok on the privacy popup$/) do
  element = driver2.find_element(:id, 'btnPrivacyOK').click
end

Then(/^fills out all information on the drivers tab$/) do
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFirstName1').send_keys"Automated" 
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMiddleName1').send_keys"T"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLastName1').send_keys"Esting"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbSuffix9').send_keys"s"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDOB1').send_keys"01011980"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskSSN1').send_keys"123456789"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbGender1').send_keys"m"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbMarriage1').send_keys"d"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbRelation1').send_keys"i"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOwnerOperator1').send_keys"o"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_numStateLicA1').send_keys"10"
  element = driver2.find_element(:id, 'ctl00$ContentPlaceHolder1$numStateLicB1').send_keys"6"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicA1').send_keys"10"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicB1').send_keys"6"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_numForLicA1').send_keys"10"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_numForLicB1').send_keys"6"
  element = driver2.find_element(:id, '').send_keys"0"
  element = driver2.find_element(:id, '').send_keys"0"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbLicenseStatus1').send_keys"v"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbLicenseState1').send_keys"u"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLicenseNum1').send_keys"123456789"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbEducation1').send_keys"s"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbIndustry1').send_keys"d"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOccupation1').send_keys"o"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationA1').send_keys"12"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationB1').send_keys"6"
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkStudent1').click
  element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_numStudentMiles1').send_keys"10"
  element = driver2.find_element(:id, 'ctl00$ContentPlaceHolder1$chkStudentGood1').click
  element = driver2.find_element(:id, 'ctl00$ContentPlaceHolder1$chkAccPrev1').click
  element = driver2.find_element(:id, 'ctl00$ContentPlaceHolder1$chkSR221').click
  element = driver2.find_element(:id, 'ctl00$ContentPlaceHolder1$chkNonDrinker1').click
end

Then(/^clicks continue$/) do
element = driver2.find_element(:id, 'btnContinue').click
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