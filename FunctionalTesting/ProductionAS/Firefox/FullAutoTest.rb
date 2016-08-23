require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver1 = Selenium::WebDriver.for :firefox
	driver1.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver1.quit();
driver1 = Selenium::WebDriver.for :firefox
	driver1.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		sleep(2)
		element = driver1.find_element(:id, 'btnPowerForms_text').click
		sleep(2)
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnDefaultIDCard').click
		sleep(2)
driver1.quit();
driver1 = Selenium::WebDriver.for :firefox
driver1.navigate.to "https://www.agencystream.com/login.aspx"		
	element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver1.navigate.to "https://www.agencystream.com/PowerForms/InsuranceIDCard.aspx"

input = wait.until {
	element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtState')
	element if element.displayed?
}
	input.send_keys("RS")
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyNumber').send_keys "CompanySendKeySent"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany').send_keys "TestCompanySent"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber').send_keys "PolicyNumberKeySent"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderEffDate_today').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderExpDate_today').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtYear').send_keys "1944"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMake').send_keys "Panzer"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtModel').send_keys "Panzerkampfwagen IV"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVIN').send_keys "PKW40012938"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "Vladimir Putin"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress').send_keys "Somewhere in Russia in Russian House"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "Ovechkination"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "UT"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys "84070"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys(:tab)
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click
element = driver1.find_element(:id, 'ctl00_imgTopLogo').click
driver1.quit();
driver1 = Selenium::WebDriver.for :firefox
driver1.navigate.to "https://www.agencystream.com/PowerForms/InsuranceIDCard.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver1.find_element(:id, 'home_icon').click
driver1.quit();
driver1 = Selenium::WebDriver.for :firefox
driver1.navigate.to "https://www.agencystream.com/PowerForms/InsuranceIDCard.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver1.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver1.quit();
driver1 = Selenium::WebDriver.for :firefox
driver1.navigate.to "https://www.agencystream.com/PowerForms/InsuranceIDCard.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver1.find_element(:id, 'ctl00_imgTopLogo').click
driver1.quit();
driver1 = Selenium::WebDriver.for :firefox
driver1.navigate.to "https://www.agencystream.com/PowerForms/InsuranceIDCard.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver1.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver1.quit();
puts "ID Card Form Successfully Tested"
# Test the Insurance Binder form
driver2 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver2.navigate.to "https://www.agencystream.com/login.aspx"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
pwrforms = wait.until {
	element = driver2.find_element(:id, 'btnPowerForms_text')
	element if element.displayed?
}
	pwrforms.click
sleep(2)
binder = wait.until {
	element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnBinder')
	element if element.displayed?
}
	binder.click
driver2.quit();
driver2 = Selenium::WebDriver.for :firefox
driver2.navigate.to "https://www.agencystream.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver2.navigate.to "https://www.agencystream.com/PowerForms/Binder.aspx?id=-1"
sleep(2)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate').send_keys "07042014"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyAddress3').clear
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyAddress3').send_keys "Sent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').clear
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').send_keys "Sent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').clear
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').send_keys "Sent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').clear
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').send_keys "Sent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCity').clear
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCity').send_keys "Sent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerState').clear
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerState').send_keys "RS"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerZip').clear
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerZip').send_keys "80302"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerPhone').clear
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerPhone').send_keys "8018888888"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerFax').clear
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerFax').send_keys "8017777777"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtproducerCode').send_keys "99999"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerSubCode').send_keys "99999"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyCustID').send_keys "ACustIDSent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany').send_keys "CoSent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBinder').send_keys "BinderSent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate').send_keys "07042014"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveTime').send_keys "4"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAMEffective').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPMEffective').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCheckBinder').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate').send_keys "07042017"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAMExpiration').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNoonExpiration').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBinderPolicyNo').send_keys "BinderPolNumber"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "InsdName"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1').send_keys "InsdAdd1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2').send_keys "InsdAdd2"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "InsdCity"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "RS"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredZip').send_keys "99999"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtDescripBig1').send_keys "Lots of shit can go in this box. But I don't have time to fill it"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropBasic').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropOther1').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropOther2').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropBroad').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPropSpec').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropOther1').send_keys "Other"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropOther2').send_keys "Other"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPCoverageBig1').send_keys "Another box filled"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropDeduct1').send_keys "Deduct1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropDeduct2').send_keys "Deduct2"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropDeduct3').send_keys "Deduct3"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropDeduct4').send_keys "Deduct4"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropCoLns1').send_keys "PropCol1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropCoLns2').send_keys "PropCol2"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropCoLns3').send_keys "PropCol3"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropCoLns4').send_keys "PropCol4"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropAmount1').send_keys "PropAmt1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropAmount2').send_keys "PropAmt2"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropAmount3').send_keys "PropAmt3"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropAmount4').send_keys "PropAmt4"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLCGL').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLCM1').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLCM2').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLOther1').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLOther2').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLOther3').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGLOccur').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGLOther1').send_keys "GLOther1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGLOther2').send_keys "GLOther2"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGLOther3').send_keys "GLOther3"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCGLCoverageBig1').send_keys "Filled yet another box"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskGLRetroDate').send_keys "07041944"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOccurrence').send_keys "100.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtDamageRent').send_keys "200.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMedExp').send_keys "300.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPAI').send_keys "400.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGenAgg').send_keys "400.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtproductsAGG').send_keys "400.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALAnyAuto').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALOwnedAuto').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALSchAuto').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALHiredAuto').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALNonOwnAuto').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALOther1').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkALOther2').send_keys(:space)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtALOther1').send_keys "AllOther1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtALOther2').send_keys "AllOther2"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtALCoverageBig1').send_keys "Holy shit fucks! Another box filled"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCSL').send_keys "124.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBIPP').send_keys "224.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBIPA').send_keys "324.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPD').send_keys "424.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMedical').send_keys "424.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPIP').send_keys "424.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtUM').send_keys "724.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoOther').send_keys "824.00"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoOther').send_keys(:tab,:tab,:tab,:tab,:tab,:tab)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDColl').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDOTC').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoPDDeduct1').send_keys "PDDeduct1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoPDDeuct2').send_keys "PDDeduct2"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDAV').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDSV').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAutoPDCoverage1').send_keys "Yay! Sent bitch"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDACV').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDSA').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAutoPDOther').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtStatedAmount').send_keys "1244.44"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGarageAuto').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGarageOther1').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGarageOther2').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageOther1').send_keys "GarageOther1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageOther2').send_keys "GarageOther2"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGarageCoverageBig1').send_keys "BOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOXBOX"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtEAAccident').send_keys "222.22"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherAutoOnly').send_keys "333.22"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherEAAccident').send_keys "444.22"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAccidentAggregate').send_keys "444.22"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkExcessUmbrella').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkExcessOther').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtExcessCov1').send_keys "Small box more fun?"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExcessRetro').send_keys "07041944"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtEachOccurrence').send_keys "123.44"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAggregate').send_keys "223.44"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSelfInsured').send_keys "323.44"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtWCELBig1').send_keys "Jasmine's pooping again. WTF?!"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkWCSL').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtELAccident').send_keys "434.44"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtELDiseaseEA').send_keys "444.84"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtELPolicy').send_keys "4444.4444"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSpecialBig').send_keys "More text put in another box with numbers now 11448444132148494844"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFees').send_keys "4244"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtTaxes').send_keys "2144.22"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtTotalPremium').send_keys "844.14"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestName').send_keys "Additional Name"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestAddress1').send_keys "Additional Address"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestAddress2').send_keys "Additional Address 2"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestCity').send_keys "AdditionalCity"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestState').send_keys "RS"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskAdditionalInterestZip').send_keys "12344"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskAdditiionalInterestPhone1')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
			:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
		element.send_keys "801111111"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_mskAdditionalInterestPhone2')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
			:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
		element.send_keys "8012222222"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkMortgagee').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAdditional').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkLossPayee').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther1').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOther').send_keys "Last Call Other"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoanNumber').send_keys "123444LoanNumber"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoanNumber').send_keys(:tab)
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click
element = driver2.find_element(:id, 'ctl00_imgTopLogo').click
driver2.quit();
driver2 = Selenium::WebDriver.for :firefox
driver2.navigate.to "https://www.agencystream.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver2.find_element(:id, 'home_icon').click
driver2.quit();
driver2 = Selenium::WebDriver.for :firefox
driver2.navigate.to "https://www.agencystream.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver2.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver2.quit();
driver2 = Selenium::WebDriver.for :firefox
driver2.navigate.to "https://www.agencystream.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver2.find_element(:id, 'ctl00_imgTopLogo').click
driver2.quit();
driver2 = Selenium::WebDriver.for :firefox
driver2.navigate.to "https://www.agencystream.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver2.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver2.quit();
puts "Binder Form Successfully Tested"
#Done with Binder

driver3 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 5)
driver3.navigate.to "https://www.agencystream.com/login.aspx"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
pwrforms = wait.until {
	element = driver3.find_element(:id, 'btnPowerForms_text')
	element if element.displayed?
}
	pwrforms.click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')
sleep(2)
liab = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnLiab')
	element if element.displayed?
}
	liab.click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 5)
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
sleep(2)
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').send_keys "Producer Name"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').send_keys "ProdAdd1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').send_keys "ProdAdd2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress3').send_keys "ProdAdd3"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress4').send_keys "ProdAdd4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtContactName').send_keys "ContactName"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskContactPhone')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
			element.send_keys "8018888888"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskContactFax')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
			element.send_keys "8018888889"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "InsdName"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1').send_keys "InsdAdd1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2').send_keys "InsdAdd2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "InsdCity"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "RS"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys "12344"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtcontactEmail').send_keys "email@email.com.org.net"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredA').send_keys "InsdA"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredB').send_keys "InsdB"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredC').send_keys "InsdC"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredD').send_keys "InsdD"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredE').send_keys "InsdE"
# element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredF').send_keys "InsdF"
#Field locked, file a bug.
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicA').send_keys "NAICA"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicB').send_keys "NAICB"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicC').send_keys "NAICC"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicD').send_keys "NAICD"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicE').send_keys "NAICE"
# element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicF').send_keys "NAICF"
#Field Locked, file a bug with bug from line #429
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr1').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr2').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr3').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr4').send_keys "D"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr5').send_keys "E"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr6').send_keys "F"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr7').send_keys "G"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkComm').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenLiab1').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkClaimsMade').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOccur').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenLiab2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenliab3').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenPolicy').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenProject').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenLoc').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGenliab1').send_keys "Liable One"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGenliab2').send_keys "Liable Two"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd1').send_keys "AddLI1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd2').send_keys "AddLI2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd3').send_keys "AddLI3"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd4').send_keys "AddLI4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd5').send_keys "AddLI5"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd6').send_keys "AddLI6"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd7').send_keys "AddLI7"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv1').send_keys "SubWv1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv2').send_keys "SubWv2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv3').send_keys "SubWv3"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv4').send_keys "SubWv4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv5').send_keys "SubWv5"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv6').send_keys "SubWv6"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv7').send_keys "SubWv7"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum1').send_keys "PolicyNum1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate1').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate1').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherCov1').send_keys "OtherCover"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim1').send_keys "1.34"
#Fields Locked, file bug with other locked fields.
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum2').send_keys "PolicyNum2"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate2').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate2').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim2').send_keys "2.22"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum3').send_keys "PolicyNum3"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate3').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate3').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim3').send_keys "3.44"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum4').send_keys "PolicyNum4"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate4').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate4').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim4').send_keys "4.84"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum4').send_keys "PolicyNum4"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate4').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate4').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim5').send_keys "4.94"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum4').send_keys "PolicyNum4"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate4').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate4').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim6').send_keys "4.24"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum7').send_keys "PolicyNum7"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate7').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate7').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim7').send_keys "7.23"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr8').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr9').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr10').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr11').send_keys "D"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr12').send_keys "E"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAnyAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAllAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkHiredAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkBlank1').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBlank1').send_keys "Blank 1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkScheduleAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkBlank2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBlank2').send_keys "Blank 2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd8').send_keys "AddLI8"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd9').send_keys "AddLI9"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd10').send_keys "AddLI10"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd11').send_keys "AddLI11"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd12').send_keys "AddLI12"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv8').send_keys "SubWv8"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv9').send_keys "SubWv9"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv10').send_keys "SubWv10"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv11').send_keys "SubWv11"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv12').send_keys "SubWv12"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum8').send_keys "PolNum8"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate8').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate8').send_keys "07042017"
#Fields Locked.
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum9').send_keys "PolNum9"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate9').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate9').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum10').send_keys "PolNum8"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate10').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate10').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum11').send_keys "PolNum8"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate11').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate11').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum12').send_keys "PolNum8"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate12').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate12').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherCov2').send_keys "Cover 2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim8').send_keys "8.23"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim9').send_keys "7.42"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim10').send_keys "4.44"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim11').send_keys "300"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim12').send_keys "39"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr19').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr20').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkUmbrella').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkExcess').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkDeduct').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkReten').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOccur2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkClaimsMade2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRetention').send_keys "124.44"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd18').send_keys "AI18"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd19').send_keys "AI19"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd20').send_keys "AI20"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv18').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv19').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv20').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr26').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr27').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr28').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum18').send_keys "PolNum18"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate18').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate18').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgg1').send_keys "TextAgg 1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim18').send_keys "18"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim19').send_keys "19"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim20').send_keys "20"
#Fields Locked.
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum19').send_keys "PolNum19"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate19').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate19').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum20').send_keys "PolNum20"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate20').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate20').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CheckBox1').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CheckBox2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim23').send_keys "194.24"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim24').send_keys "443.49"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim25').send_keys "443.84"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtWorkersComp').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAnyProp').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSpecPro').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAnyPropYN').send_keys "Y"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAnyPropYN').send_keys "N"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv23').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv24').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv25').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum23').send_keys "PolNum 23"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate23').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate23').send_keys "07042017"
#Fields Locked
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum24').send_keys "PolNum 23"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate24').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate24').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum24').send_keys "PolNum 23"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate24').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate24').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr26').send_keys"A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr27').send_keys"B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr28').send_keys"C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther1').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther3').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank1').send_keys "Blank 2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank3').send_keys "Blank 4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank5').send_keys "Blank 6"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd26').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd27').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd28').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv26').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv27').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv28').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum26').send_keys "PolNum 26"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum27').send_keys "PolNum 27"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum28').send_keys "PolNum 28"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate26').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate27').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate28').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate26').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate27').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate28').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank2').send_keys "Blank 2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank4').send_keys "Blank 4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank6').send_keys "Blank 6"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim26').send_keys "101"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim27').send_keys "102"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim28').send_keys "103"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtDescripSpecial').send_keys "Text for the texts boxioucious"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredNameC').send_keys "InsdName C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1C').send_keys "InsdAdd 1C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2C').send_keys "InsdAdd 2C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCertHolderAdd3').send_keys "HolderAdd 3"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCertHolderAdd4').send_keys "HolderAdd 4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCertificateFax').send_keys "CertiFax"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click
element = driver3.find_element(:id, 'ctl00_imgTopLogo').click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver3.find_element(:id, 'home_icon').click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver3.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver3.find_element(:id, 'ctl00_imgTopLogo').click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver3.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver3.quit();
puts "Liability Form Successfully Tested"
#Liability Form Done
driver4 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver4.navigate.to "https://www.agencystream.com/login.aspx"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
pwrforms = wait.until {
	element = driver4.find_element(:id, 'btnPowerForms_text')
	element if element.displayed?
}
	pwrforms.click
sleep(2)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnEvidence').click
driver4.quit();
driver4 = Selenium::WebDriver.for :firefox
driver4.navigate.to "https://www.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver4.navigate.to "https://www.agencystream.com/PowerForms/Evidence.aspx?id=-1"
sleep(2)
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate').send_keys "07042014"
#Locked Fields
#element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerPhone').send_keys "8018888888"
#element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').send_keys "Prod Name"
#element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').send_keys "Prod Add 1"
#element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').send_keys "ProdAdd 2"
#element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCity').send_keys "ProdCity"
#element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerState').send_keys "RS"
#element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerZip').send_keys "12344"
#element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerFax').send_keys "8018888889"
#element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerEmail').send_keys "email@email.com"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCode').send_keys "ProdCode8877"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerSubCode').send_keys "SubCode1234"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyCustID').send_keys "CustID-012344"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "InsdName"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1').send_keys "InsdAdd 1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2').send_keys "InsdAdd 2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "InsdCity"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "RS"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys "12344"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyName').send_keys "CompName"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtcompanyAddress1').send_keys "CompAdd 1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtcompanyAddress2').send_keys "CompAdd 2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyCity').send_keys "CompCity"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyState').send_keys "RS"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskCompanyZip').send_keys "12344"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoanNumber').send_keys "LoanNum-1234"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber').send_keys "PolNum -12344"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate').send_keys "07042014"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderEvidDate_today').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderExpDate_today').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkTerminated').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPriorEvidDate').send_keys "07042014"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLocProp').send_keys "LocProp 1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLocProp2').send_keys "LocProp 2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLocCity').send_keys "Citified"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLocState').send_keys "RS"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskLocZip').send_keys "12344"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPropMisc').send_keys "Prop Miscellany for miscellaneous details or whatever"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCoverage1').send_keys "Coverage 1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAmount1').send_keys "111.11"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtdeductible1').send_keys "Deduct1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCoverage2').send_keys "Coverage 2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAmount2').send_keys "222.22"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtdeductible2').send_keys "Deduct2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCoverage3').send_keys "Coverage 3"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAmount3').send_keys "333.33"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtdeductible3').send_keys "Deduct3"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCoverage4').send_keys "Coverage 4"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAmount4').send_keys "444.44"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtdeductible4').send_keys "Deduct4"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCoverage5').send_keys "Coverage 4"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAmount5').send_keys "444.44"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtdeductible5').send_keys "Deduct4"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCoverage6').send_keys "Coverage 4"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAmount6').send_keys "444.44"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtdeductible6').send_keys "Deduct4"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCoverage7').send_keys "Coverage 7"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAmount7').send_keys "777.77"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtdeductible7').send_keys "Deduct 7"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCoverage8').send_keys "Coverage 8"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAmount8').send_keys "888.88"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtdeductible8').send_keys "Deduct8"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRemarks').send_keys "Fill a box with textFill a box with textFill a box with text
Fill a box with textFill a box with textFill a box with textFill a box with textFill a box with textFill a box with textFill a box with text"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestName').send_keys "Interest Name"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestAddress1').send_keys "AddIntAdd1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestAddress2').send_keys "AddIntAdd2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestCity').send_keys "AddIntCity"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAdditionalInterestState').send_keys "RS"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskAdditionalInterestZip').send_keys "78944"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskAdditionalInterestPhone1')
element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
			element.send_keys "8018888888"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskAdditionalInterestPhone2')
element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
			element.send_keys "8018888889"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkMortgagee').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAddInsured').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkLossPayee').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther1').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOther').send_keys "OtherText"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoanNumber2').send_keys "LoanNumber 2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click
element = driver4.find_element(:id, 'ctl00_imgTopLogo').click
driver4.quit();
driver4 = Selenium::WebDriver.for :firefox
driver4.navigate.to "https://www.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver4.find_element(:id, 'home_icon').click
driver4.quit();
driver4 = Selenium::WebDriver.for :firefox
driver4.navigate.to "https://www.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver4.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver4.quit();
driver4 = Selenium::WebDriver.for :firefox
driver4.navigate.to "https://www.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver4.find_element(:id, 'ctl00_imgTopLogo').click
driver4.quit();
driver4 = Selenium::WebDriver.for :firefox
driver4.navigate.to "https://www.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver4.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver4.quit();
puts "Evidence Form Successfully Tested"
#Evidence Form Done
driver5 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver5.navigate.to "https://www.agencystream.com/login.aspx"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
pwrforms = wait.until {
	element = driver5.find_element(:id, 'btnPowerForms_text')
	element if element.displayed?
}
	pwrforms.click
cancel = wait.until {
	element = driver5.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnCancel')
	element if element.displayed?
}
	cancel.click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
sleep(2)
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate').send_keys "07042014"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerPhone')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
		element.send_keys "8018888888"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').send_keys "Produce Name"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').send_keys "Producer Address 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').send_keys "Producer Address 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCity').send_keys "ProdCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerState').send_keys "RS"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerZip').send_keys "98744"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCode').send_keys "ProdCode12344"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerSubCode').send_keys "ProdSubCode3444"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyCustID').send_keys "AgncyCustID"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "InsdName"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1').send_keys "InsdAdd 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2').send_keys "InsdAdd 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "InsdCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "InsdCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys "98744"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNAIC').send_keys "NAICode"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyName').send_keys "Company Name"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyAddress1').send_keys "Company Add1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyAddress2').send_keys "Company Add2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyCity').send_keys "CompanyCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskCompanyState').send_keys "RS"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskCompanyZip').send_keys "98744"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyType').send_keys "PolType"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber').send_keys "PolNum"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskCancelDate').send_keys "07042014"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskCancelTime').send_keys "12"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate').send_keys "07042017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCancelRequest').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPolicyRelease').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate').send_keys "07042014"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsured1').send_keys "Insd 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsured2').send_keys "Insd 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoan1').send_keys "Loan 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoan2').send_keys "Loan 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkLienHolder2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkMortgagee2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkLossPayee2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNotTaken').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkReqInsured').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRewritten').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkFlat').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkShortRate').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkProRata').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPremCalc').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherReason').send_keys "Other reason text fill here"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany').send_keys "Company"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber2').send_keys "PolNum 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate2').send_keys "07042014"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFTPremium').send_keys "FT Premium"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFactor').send_keys "Factor"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtReturnPremium').send_keys "Return Prem"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRemarks').send_keys "Remarks go here, lots of room"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdName').send_keys "Prod Name"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdAddress1').send_keys "Prod Add1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdAddress2').send_keys "Prod Add2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdCity').send_keys "ProdCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdState').send_keys "RS"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProdZip').send_keys "98744"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkInsured').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQMortgagee').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkTQCompany').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQOther1').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQLossPayee').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQLienHolder').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQFinanceCo').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQOther2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRQOther1').send_keys "RQ Other1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRQOther2').send_keys "RQ Other2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver5.find_element(:id, 'ctl00_imgTopLogo').click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'home_icon').click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver5.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver5.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver5.quit();
puts "Cancellation Form Successfully Tested"
#Cancellation Form Done
driver1 = Selenium::WebDriver.for :firefox
driver1.navigate.to "https://www.agencystream.com/login.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		sleep(2)
element = driver1.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox')
		.click
		sleep(2)
driver1.quit();
driver1 = Selenium::WebDriver.for :firefox
driver1.navigate.to "https://www.quomation.com/livechat.aspx?AgencyStream=True&name=небонетто&agency=конецблизок&phone=(801)%20834-0892"
dropdown_list = driver1.find_element(:name, 'ddlComment4')
options = dropdown_list.find_elements(tag_name: 'option')
options.each { |option| option.click if option.text == '- All Other Problems -' }
element = driver1.find_element(:id, 'Radio4').click
element = driver1.find_element(:id, 'txtComments')
		.send_keys "Оно не имеет значения, что вопрос больше . Джон Коннор мертв . Роботы выиграли . Этот запрос будет повторяться"
element = driver1.find_element(:id, 'btnConnectOld').click
driver1.quit();
puts "Agent Care Successfully Bothered"
#AgencyCare Full Route Tested
driver1 = Selenium::WebDriver.for :firefox
driver1.navigate.to "https://www.agencystream.com/login.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		sleep(2)
