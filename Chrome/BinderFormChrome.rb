require 'rubygems'
require 'selenium-webdriver'

driver2 = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver2.navigate.to "https://test.quomation.com/login.aspx"
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
driver2 = Selenium::WebDriver.for :chrome
driver2.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver2.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
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
driver2 = Selenium::WebDriver.for :chrome
driver2.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver2.find_element(:id, 'home_icon').click
driver2.quit();
driver2 = Selenium::WebDriver.for :chrome
driver2.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver2.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver2.quit();
driver2 = Selenium::WebDriver.for :chrome
driver2.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver2.find_element(:id, 'ctl00_imgTopLogo').click
driver2.quit();
driver2 = Selenium::WebDriver.for :chrome
driver2.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver2.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver2.quit();
puts "Binder Form Successfully Tested"
#Done with Binder