require 'rubygems'
require 'selenium-webdriver'
=begin
driver = Selenium::WebDriver.for :firefox
	driver.navigate.to "https://test.quomation.com/login.aspx"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		element = driver.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
	driver.quit();

#Test PowerForms ID Card form and all fields

driver2 = Selenium::WebDriver.for :firefox
	driver2.navigate.to "https://test.quomation.com/login.aspx"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		element = driver2.find_element(:id, 'btnPowerForms_text').click
		sleep(5)
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnDefaultIDCard').click
	driver2.quit();

driver3 = Selenium::WebDriver.for :firefox
	driver3.navigate.to "https://test.quomation.com/PowerForms/InsuranceIDCard.aspx"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

#This code has to be a little more robust to handle inputting into the fields on forms.	

wait = Selenium::WebDriver::Wait.new(:timeout => 15)
	
input = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtState')
	element if element.displayed?
}
	input.send_keys("RS")

input = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyNumber')
	element if element.displayed?
}
	input.send_keys("CompanySendKeySent")

input = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany')
	element if element.displayed?
}
	input.send_keys("TestCompanySent")

element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click

input = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber')
	element if element.displayed?
}
	input.send_keys("PolicyNumberKeySent")

effdate = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate')
	element if element.displayed?
}
	effdate.click

effdate = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderEffDate_today')
	element if element.displayed?
}
	effdate.click

expdate = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate')
	element if element.displayed?
}
	expdate.click

expdate = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderExpDate_today')
	element if element.displayed?
}
	expdate.click

year = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtYear')
	element if element.displayed?
}
	year.send_keys("1944")

make = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMake')
	element if element.displayed?
}
	make.send_keys("Panzer")

model = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtModel')
	element if element.displayed?
}
	model.send_keys("Panzerkampfwagen IV")

vin = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVIN')
	element if element.displayed?
}
	vin.send_keys("PKW60012938")

name = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName')
	element if element.displayed?
}
	name.send_keys("Vladimir Putin")

address = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress')
	element if element.displayed?
}
	address.send_keys("Somewhere in Russia in Russian House #{1}")

city = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity')
	element if element.displayed?
}
	city.send_keys("Ovechkination")

state = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState')
	element if element.displayed?
}
	state.send_keys("UT")

zip = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip')
	element if element.displayed?
}
	zip.send_keys("84070")

  element.send_keys(:tab)

  print = wait.until {
  	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint')
  	element if element.displayed?
  }
  	print.click

  email = wait.until {
  	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail')
  	element if element.displayed?
  }
  	email.click
  	
driver3.quit();

# Test the Insurance Binder form

driver4 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

driver4.navigate.to "https://test.quomation.com/login.aspx"

element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

pwrforms = wait.until {
	element = driver4.find_element(:id, 'btnPowerForms_text')
	element if element.displayed?
}
	pwrforms.click

element = driver4.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')

binder = wait.until {
	element = driver4.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnBinder')
	element if element.displayed?
}
	binder.click
driver4.quit();

driver4 = Selenium::WebDriver.for :firefox
driver4.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate')
		element.send_keys "07042016"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyAddress3').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyAddress3').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCity').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCity').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerState').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerState').send_keys "RS"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerZip').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerZip').send_keys "80302"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerPhone').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerPhone').send_keys "8018888888"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerFax').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerFax').send_keys "8017777777"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtproducerCode').send_keys "99999"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerSubCode').send_keys "99999"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyCustID').send_keys "ACustIDSent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany').send_keys "CoSent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBinder').send_keys "BinderSent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate').send_keys "07042016"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveTime').send_keys "5"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAMEffective').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPMEffective').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCheckBinder').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate').send_keys "07042017"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAMExpiration').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNoonExpiration').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBinderPolicyNo').send_keys "BinderPolNumber"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "InsdName"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1').send_keys "InsdAdd1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2').send_keys "InsdAdd2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "InsdCity"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "RS"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredZip').send_keys "99999"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtDescripBig1').send_keys "Lots of shit can go in this box. But I don't have time to fill it"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropBasic').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropOther1').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropOther2').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropBroad').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropSpec').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropOther1').send_keys "Other"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropOther2').send_keys "Other"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPCoverageBig1').send_keys "Another box filled"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropDeduct1').send_keys "Deduct1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropDeduct2').send_keys "Deduct2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropDeduct3').send_keys "Deduct3"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropDeduct4').send_keys "Deduct4"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropCoLns1').send_keys "PropCol1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropCoLns2').send_keys "PropCol2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropCoLns3').send_keys "PropCol3"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropCoLns4').send_keys "PropCol4"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropAmount1').send_keys "PropAmt1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropAmount2').send_keys "PropAmt2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropAmount3').send_keys "PropAmt3"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropAmount4').send_keys "PropAmt4"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLCGL').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLCM1').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLCM2').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLOther1').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLOther2').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLOther3').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLOccur').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGLOther1').send_keys "GLOther1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGLOther2').send_keys "GLOther2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGLOther3').send_keys "GLOther3"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCGLCoverageBig1').send_keys "Filled yet another box"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskGLRetroDate').send_keys "07041964"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOccurrence').send_keys "100.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtDamageRent').send_keys "200.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMedExp').send_keys "300.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPAI').send_keys "400.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGenAgg').send_keys "500.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtproductsAGG').send_keys "600.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALAnyAuto').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALOwnedAuto').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALSchAuto').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALHiredAuto').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALNonOwnAuto').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALOther1').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALOther2').send_keys(:space)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtALOther1').send_keys "AllOther1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtALOther2').send_keys "AllOther2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtALCoverageBig1').send_keys "Holy shit fucks! Another box filled"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCSL').send_keys "125.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBIPP').send_keys "225.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBIPA').send_keys "325.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPD').send_keys "425.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMedical').send_keys "525.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPIP').send_keys "625.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtUM').send_keys "725.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoOther').send_keys "825.00"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoOther').send_keys(:tab,:tab,:tab,:tab,:tab,:tab)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDColl').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDOTC').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoPDDeduct1').send_keys "PDDeduct1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoPDDeuct2').send_keys "PDDeduct2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDAV').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDSV').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoPDCoverage1').send_keys "Yay! Sent bitch"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDACV').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDSA').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDOther').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtStatedAmount').send_keys "1245.66"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGarageAuto').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGarageOther1').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGarageOther2').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageOther1').send_keys "GarageOther1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageOther2').send_keys "GarageOther2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageCoverageBig1').send_keys "BOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOX"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtEAAccident').send_keys "222.22"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherAutoOnly').send_keys "333.22"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherEAAccident').send_keys "444.22"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAccidentAggregate').send_keys "555.22"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkExcessUmbrella').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkExcessOther').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtExcessCov1').send_keys "Small box more fun?"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExcessRetro').send_keys "07041944"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtEachOccurrence').send_keys "123.45"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAggregate').send_keys "223.45"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSelfInsured').send_keys "323.45"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtWCELBig1').send_keys "Jasmine's pooping again. WTF?!"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkWCSL').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtELAccident').send_keys "635.44"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtELDiseaseEA').send_keys "464.84"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtELPolicy').send_keys "4654.4654"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSpecialBig').send_keys "More text put in another box with numbers now 11648646132168496854"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFees').send_keys "5265"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtTaxes').send_keys "2165.22"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtTotalPremium').send_keys "846.15"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestName').send_keys "Additional Name"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestAddress1').send_keys "Additional Address"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestAddress2').send_keys "Additional Address 2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestCity').send_keys "AdditionalCity"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestState').send_keys "RS"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskAdditionalInterestZip').send_keys "12345"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskAdditiionalInterestPhone1')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
			:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
		element.send_keys "801111111"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskAdditionalInterestPhone2')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
			:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
		element.send_keys "8012222222"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkMortgagee').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAdditional').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkLossPayee').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther1').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOther').send_keys "Last Call Other"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoanNumber').send_keys "123456LoanNumber"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoanNumber').send_keys(:tab)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click
driver4.quit();
=end
#Done with Binder

driver5 = Selenium::WebDriver.for :firefox
driver5.navigate.to "https://test.quomation.com/login.aspx"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click


