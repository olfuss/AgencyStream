require 'selenium-webdriver'
 
driver = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 30)

Given(/^the user is logged into AgencyStream$/) do
  driver.navigate.to "https://test.quomation.com/login.aspx"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("65789")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson101010")
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
  sleep(5)
end

Then(/^fills out all information on the driver 1 tab$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFirstName1').send_keys"TestOne"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMiddleName1').send_keys"O"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLastName1').send_keys"Test"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbSuffix9').send_keys"s"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDOB1').send_keys"08/01/1950"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskSSN1').send_keys"111111111"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbGender1').send_keys"m"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbMarriage1').send_keys"m"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStateLicA1').send_keys"15"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStateLicB1').send_keys"6"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicA1').send_keys"15"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicB1').send_keys"6"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLicenseNum1').send_keys"111111111"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbEducation1').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbIndustry1').send_keys"g"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOccupation1').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationA1').send_keys"15"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationB1').send_keys"6"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkStudent1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkStudentGood1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAccPrev1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonDrinker1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStudentMiles1').send_keys"15"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonDrinker1').click
end

Then(/^fills out all information on the driver 2 tab$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFirstName2').send_keys"TestTwo"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMiddleName2').send_keys"A"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLastName2').send_keys"Test"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbSuffix2').send_keys"j"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDOB2').send_keys"08/02/1960"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskSSN2').send_keys"222222222"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbGender2').send_keys"f"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbMarriage2').send_keys"m"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOwnerOperator2').send_keys"oc"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStateLicA2').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStateLicB2').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicA2').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicB2').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLicenseNum2').send_keys"222222222"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbEducation2').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbIndustry2').send_keys"g"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOccupation2').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationA2').send_keys"25"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationB2').send_keys"6"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkStudent2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkStudentGood2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAccPrev2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonDrinker2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStudentMiles2').send_keys"25"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonDrinker2').click
end

Then(/^fills out all information on the driver 3 tab$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFirstName3').send_keys"TestThree"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFirstName3').send_keys"Child"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMiddleName3').send_keys"B"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLastName3').send_keys"Test"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbSuffix3').send_keys"i"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDOB3').send_keys"08/03/1970"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskSSN3').send_keys"333333333"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbGender3').send_keys"m"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbMarriage3').send_keys"s"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbRelation3').send_keys"c"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOwnerOperator3').send_keys"oc"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStateLicA3').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStateLicB3').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicA3').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicB3').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLicenseNum3').send_keys"333333333"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbEducation3').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbIndustry3').send_keys"g"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOccupation3').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationA3').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationB3').send_keys"6"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkStudent3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkStudentGood3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAccPrev3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonDrinker3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStudentMiles3').send_keys"35"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonDrinker3').click
end

Then(/^fills out all information on the driver 4 tab$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFirstName4').send_keys"TestFour"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFirstName4').send_keys"Child"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMiddleName4').send_keys"B"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLastName4').send_keys"Test"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbSuffix4').send_keys"i"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDOB4').send_keys"08/04/1980"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskSSN4').send_keys"444444444"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbGender4').send_keys"f"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbMarriage4').send_keys"d"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbRelation4').send_keys"d"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOwnerOperator4').send_keys"oc"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStateLicA4').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStateLicB4').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicA4').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numUSALicB4').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLicenseNum4').send_keys"444444444"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbEducation4').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbIndustry4').send_keys"g"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOccupation4').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationA4').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsOccupationB4').send_keys"6"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkStudent4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkStudentGood4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAccPrev4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonDrinker4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numStudentMiles4').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonDrinker4').click
end

Then(/^clicks continue$/) do
  element = driver.find_element(:id, 'btnContinue').click
end

Then(/^enters information for one minor violation$/) do
  element = driver.find_element(:id, 'AddBtn1').click
  sleep(5)
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_gvViolDriver1_ctl02_cmbCategories').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_gvViolDriver1_ctl02_cmbViolations1').send_keys(:arrow_down)
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_gvViolDriver1_ctl02_txtViolDate1').send_keys"08232015"
end

Then(/^fills out all information on the vehicle 1 tab$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbYear1').send_keys"22"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbType1').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbMake1').send_keys"c"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMSRP1').send_keys"12000"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbModel1').send_keys"e"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbStyle1').send_keys"2"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageStreet1').send_keys"1234 5th"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbVehicUse1').send_keys"c"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numVehicUseMiles1').send_keys"34"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numAnnualMiles1').send_keys"13000"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numOdometer1').send_keys"55000"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOwnership1').send_keys"o"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPurchaseDate1').send_keys"01012016"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbAntiTheft1').send_keys"a"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbRestraint1').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkABS1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkDRL1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkUsedCar1').click
end

Then(/^fills out all information on the vehicle 2 tab$/) do 
  sleep(5)
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbYear2').send_keys"22222222"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMSRP2').send_keys"1100"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbType2').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbMake2').send_keys"cc"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbModel2').send_keys"eeeeeeeee"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbStyle2').send_keys"2"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageStreet2').send_keys"1234 5th"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbVehicUse2').send_keys"c"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numVehicUseMiles2').send_keys"24"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numAnnualMiles2').send_keys"1300"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numOdometer2').send_keys"155000"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOwnership2').send_keys"o"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPurchaseDate2').send_keys"01012013"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbAntiTheft2').send_keys"a"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbRestraint2').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkABS2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkDRL2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkUsedCar2').click
end

Then(/^fills out all information on the vehicle 3 tab$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbYear3').send_keys"222222222"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbType3').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbMake3').send_keys"cc"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMSRP3').send_keys"11100"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbModel3').send_keys"a"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbStyle3').send_keys"4"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageStreet3').send_keys"1234 5th"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbVehicUse3').send_keys"c"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numVehicUseMiles3').send_keys"64"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numAnnualMiles3').send_keys"1300"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numOdometer3').send_keys"15000"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOwnership3').send_keys"o"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPurchaseDate3').send_keys"09012013"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbAntiTheft3').send_keys"a"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbRestraint3').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkABS3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkDRL3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkUsedCar3').click
end

Then(/^fills out all information on the vehicle 4 tab$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbYear4').send_keys"2222222222"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbType4').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbMake4').send_keys"cc"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMSRP4').send_keys"1000"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbModel4').send_keys"eeeeeeeeeeeeee"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVINUnique4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbStyle4').send_keys"2"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageStreet4').send_keys"1234 5th"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbVehicUse4').send_keys"c"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numVehicUseMiles4').send_keys"14"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numAnnualMiles4').send_keys"130"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numOdometer4').send_keys"190000"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbOwnership4').send_keys"o"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPurchaseDate4').send_keys"09092015"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbAntiTheft4').send_keys"a"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbRestraint4').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkABS4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkDRL4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkUsedCar4').click
end

Then(/^fills out mailing information$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBillingAddress').send_keys"1234 hooodhangerth St"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPhoneNumber').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPhoneNumber').send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
    :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, "8018888888")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbLead1_cmbLead1_TextBox').send_keys"p"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbLead1_cmbLead1_TextBox').send_keys(:arrow_down, :arrow_down, :arrow_down)
end

Then(/^fills out all information on the underwriting tab$/) do
  sleep(5)
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkSameAsMailing').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkSameAsMailing').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numYearsA1').send_keys"11"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numMonthsB1').send_keys"8"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbPaperless1').send_keys(:arrow_down)
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbPayOptions1').send_keys"i"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCredit1').send_keys"e"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkMotorClub1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkMotorClub1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkMulticar1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkTransfer1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkTransfer1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbPriorCarrier1').send_keys"a"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRenewal1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numPreviousInsYears').send_keys"6"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numPreviousInsMonths').send_keys"5"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_numLapse1').send_keys"0"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPriorStartDate1').send_keys"08/23/2005"
end

Then(/^fills out all information on the coveraged tab$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_btnFull1').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_btnFull2').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_btnFull3').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_btnFull4').click
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbUM1').send_keys"22"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbUIM1').send_keys"2222"
end

Then(/^clicks the quote tab$/) do
  element = driver.find_element(:id, 'tQuote').click
end

Then(/^the user should see information returned from carriers$/) do
    driver = wait.until {
    element = driver.find_element(:id, "tdTotalwFees1")
      element if element.displayed?
  }
  puts "Totals with fees returned"
end

Then(/^gets quoteid$/) do
  element = driver.current_url
  element['https://test.quomation.com/AutoQuote.aspx?qid='] = ''
  puts "#{element}"
end

Given(/^the user enters invalid login information$/) do
driver.navigate.to "https://test.quomation.com/login.aspx"
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("65789")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("murder.face@murdermail.com")
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("YourPasswordSucks")
end

Given(/^tries to login$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
end

Then(/^an error will generate on the failed login attempt$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_FailureText').displayed?
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
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch').send_keys""
end

Given(/^clicks the search button$/) do
  element = driver.find_element(:id, 'imgBtnSearch').click
end

Then(/^the browser will direct to the search results page$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_gvClients').displayed? 
end

Given(/^enters a valid home quote ID into the search field$/) do
  element = driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch').send_keys"1061943424"
end

Then(/^clean up$/) do
  driver.quit();
end


