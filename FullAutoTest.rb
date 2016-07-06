require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
	driver.navigate.to "https://test.quomation.com/login.aspx"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		element = driver.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
	driver.quit();

#Test PowerForms ID Card form and all fields

driver2 = Selenium::WebDriver.for :firefox
	driver2.navigate.to "https://test.quomation.com/login.aspx"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		element = driver2.find_element(:id, 'btnPowerForms_text').click
		sleep(5)
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnDefaultIDCard').click
	driver2.quit();

driver3 = Selenium::WebDriver.for :firefox
	driver3.navigate.to "https://test.quomation.com/PowerForms/InsuranceIDCard.aspx"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

wait = Selenium::WebDriver::Wait.new(:timeout => 15)
	
input = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtState')
	element if element.displayed?
}
	input.send_keys("RS")

element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyNumber').send_keys "CompanySendKeySent"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany').send_keys "TestCompanySent"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber').send_keys "PolicyNumberKeySent"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderEffDate_today').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderExpDate_today').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtYear').send_keys "1944"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMake').send_keys "Panzer"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtModel').send_keys "Panzerkampfwagen IV"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVIN').send_keys "PKW60012938"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "Vladimir Putin"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress').send_keys "Somewhere in Russia in Russian House"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "Ovechkination"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "UT"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys "84070"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys(:tab)
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click
element = driver3.find_element(:id, 'ctl00_imgTopLogo').click
driver3.navigate.to "https://test.quomation.com/PowerForms/InsuranceIDCard.aspx"
element = driver3.find_element(:id, 'home_icon').click
driver3.navigate.to "https://test.quomation.com/PowerForms/InsuranceIDCard.aspx"
element = driver3.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver3.quit();
  	
# Test the Insurance Binder form

driver4 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

driver4.navigate.to "https://test.quomation.com/login.aspx"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
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
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate').send_keys "07042016"
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

element = driver4.find_element(:id, 'ctl00_imgTopLogo').click
driver4.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
element = driver4.find_element(:id, 'home_icon').click
driver4.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver4.quit();

#Done with Binder

driver5 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

driver5.navigate.to "https://test.quomation.com/login.aspx"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

pwrforms = wait.until {
	element = driver5.find_element(:id, 'btnPowerForms_text')
	element if element.displayed?
}
pwrforms.click

element = driver5.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')

sleep(5)
liab = wait.until {
	element = driver5.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnLiab')
	element if element.displayed?
}
liab.click

driver5.quit();

driver5 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

driver5.navigate.to "https://test.quomation.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate').send_keys "07052016"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').send_keys "Producer Name"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').send_keys "ProdAdd1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').send_keys "ProdAdd2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress3').send_keys "ProdAdd3"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress4').send_keys "ProdAdd4"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtContactName').send_keys "ContactName"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskContactPhone')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
			element.send_keys "8018888888"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskContactFax')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
			element.send_keys "8018888889"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "InsdName"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1').send_keys "InsdAdd1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2').send_keys "InsdAdd2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "InsdCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "RS"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys "12345"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtcontactEmail').send_keys "email@email.com.org.net"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredA').send_keys "InsdA"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredB').send_keys "InsdB"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredC').send_keys "InsdC"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredD').send_keys "InsdD"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredE').send_keys "InsdE"
# element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredF').send_keys "InsdF"
#Field locked, file a bug.
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicA').send_keys "NAICA"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicB').send_keys "NAICB"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicC').send_keys "NAICC"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicD').send_keys "NAICD"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicE').send_keys "NAICE"
# element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicF').send_keys "NAICF"
#Field Locked, file a bug with bug from line #429
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr1').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr2').send_keys "B"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr3').send_keys "C"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr4').send_keys "D"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr5').send_keys "E"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr6').send_keys "F"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr7').send_keys "G"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkComm').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenLiab1').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkClaimsMade').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOccur').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenLiab2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenliab3').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenPolicy').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenProject').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenLoc').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGenliab1').send_keys "Liable One"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGenliab2').send_keys "Liable Two"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd1').send_keys "AddLI1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd2').send_keys "AddLI2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd3').send_keys "AddLI3"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd4').send_keys "AddLI4"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd5').send_keys "AddLI5"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd6').send_keys "AddLI6"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd7').send_keys "AddLI7"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv1').send_keys "SubWv1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv2').send_keys "SubWv2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv3').send_keys "SubWv3"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv4').send_keys "SubWv4"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv5').send_keys "SubWv5"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv6').send_keys "SubWv6"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv7').send_keys "SubWv7"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum1').send_keys "PolicyNum1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate1').send_keys "07052016"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate1').send_keys "07052017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherCov1').send_keys "OtherCover"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim1').send_keys "1.36"
#Fields Locked, file bug with other locked fields.
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum2').send_keys "PolicyNum2"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate2').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate2').send_keys "07052017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim2').send_keys "2.22"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum3').send_keys "PolicyNum3"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate3').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate3').send_keys "07052017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim3').send_keys "3.45"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum4').send_keys "PolicyNum4"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate4').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate4').send_keys "07052017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim4').send_keys "4.85"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum5').send_keys "PolicyNum5"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate5').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate5').send_keys "07052017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim5').send_keys "5.96"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum6').send_keys "PolicyNum6"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate6').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate6').send_keys "07052017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim6').send_keys "6.25"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum7').send_keys "PolicyNum7"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate7').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate7').send_keys "07052017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim7').send_keys "7.23"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr8').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr9').send_keys "B"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr10').send_keys "C"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr11').send_keys "D"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr12').send_keys "E"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAnyAuto').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAllAuto').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkHiredAuto').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkBlank1').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBlank1').send_keys "Blank 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkScheduleAuto').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonAuto').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkBlank2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBlank2').send_keys "Blank 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd8').send_keys "AddLI8"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd9').send_keys "AddLI9"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd10').send_keys "AddLI10"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd11').send_keys "AddLI11"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd12').send_keys "AddLI12"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv8').send_keys "SubWv8"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv9').send_keys "SubWv9"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv10').send_keys "SubWv10"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv11').send_keys "SubWv11"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv12').send_keys "SubWv12"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum8').send_keys "PolNum8"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate8').send_keys "07052016"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate8').send_keys "07052017"

#Fields Locked.
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum9').send_keys "PolNum9"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate9').send_keys "07052016"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate9').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum10').send_keys "PolNum8"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate10').send_keys "07052016"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate10').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum11').send_keys "PolNum8"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate11').send_keys "07052016"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate11').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum12').send_keys "PolNum8"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate12').send_keys "07052016"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate12').send_keys "07052017"

element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherCov2').send_keys "Cover 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim8').send_keys "8.23"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim9').send_keys "7.62"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim10').send_keys "5.56"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim11').send_keys "300"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim12').send_keys "39"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr19').send_keys "B"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr20').send_keys "C"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkUmbrella').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkExcess').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkDeduct').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkReten').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOccur2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkClaimsMade2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRetention').send_keys "125.45"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd18').send_keys "AI18"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd19').send_keys "AI19"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd20').send_keys "AI20"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv18').send_keys "S"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv19').send_keys "S"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv20').send_keys "S"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum18').send_keys "PolNum18"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate18').send_keys "07052016"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate18').send_keys "07052017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgg1').send_keys "TextAgg 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim18').send_keys "18"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim19').send_keys "19"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim20').send_keys "20"
#Fields Locked.
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum19').send_keys "PolNum19"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate19').send_keys "07052016"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate19').send_keys "07052017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum20').send_keys "PolNum20"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate20').send_keys "07052016"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate20').send_keys "07052017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_CheckBox1').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_CheckBox2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim23').send_keys "195.25"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim24').send_keys "643.49"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim25').send_keys "563.84"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtWorkersComp').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAnyProp').send_keys "B"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSpecPro').send_keys "C"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAnyPropYN').send_keys "Y"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAnyPropYN').send_keys "N"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv23').send_keys "S"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv24').send_keys "S"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv25').send_keys "S"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum23').send_keys "PolNum 23"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate23').send_keys "07062016"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate23').send_keys "07062017"
#Fields Locked
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum24').send_keys "PolNum 23"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate24').send_keys "07062016"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate24').send_keys "07062017"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum25').send_keys "PolNum 23"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate25').send_keys "07062016"
#element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate25').send_keys "07062017"

element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr26').send_keys"A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr27').send_keys"B"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr28').send_keys"C"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther1').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther3').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank1').send_keys "Blank 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank3').send_keys "Blank 3"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank5').send_keys "Blank 5"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd26').send_keys "A"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd27').send_keys "B"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd28').send_keys "C"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv26').send_keys "S"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv27').send_keys "S"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv28').send_keys "S"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum26').send_keys "PolNum 26"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum27').send_keys "PolNum 27"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum28').send_keys "PolNum 28"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate26').send_keys "07062016"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate27').send_keys "07062016"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate28').send_keys "07062016"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate26').send_keys "07062017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate27').send_keys "07062017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate28').send_keys "07062017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank2').send_keys "Blank 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank4').send_keys "Blank 4"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank6').send_keys "Blank 6"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim26').send_keys "101"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim27').send_keys "102"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim28').send_keys "103"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtDescripSpecial').send_keys "Text for the texts boxioucious"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredNameC').send_keys "InsdName C"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1C').send_keys "InsdAdd 1C"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2C').send_keys "InsdAdd 2C"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCertHolderAdd3').send_keys "HolderAdd 3"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCertHolderAdd4').send_keys "HolderAdd 4"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCertificateFax').send_keys "CertiFax"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click

element = driver5.find_element(:id, 'ctl00_imgTopLogo').click
driver5.navigate.to "https://test.quomation.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver5.find_element(:id, 'home_icon').click
driver5.navigate.to "https://test.quomation.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver5.quit();

#Liability Form Done

