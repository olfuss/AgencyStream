require 'rubygems'
require 'selenium-webdriver'

driver4 = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver4.navigate.to "https://asweb01.agencystream.com/login.aspx"
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
driver4 = Selenium::WebDriver.for :chrome
driver4.navigate.to "https://asweb01.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver4.navigate.to "https://asweb01.agencystream.com/PowerForms/Evidence.aspx?id=-1"
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
driver4 = Selenium::WebDriver.for :chrome
driver4.navigate.to "https://asweb01.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver4.find_element(:id, 'home_icon').click
driver4.quit();
driver4 = Selenium::WebDriver.for :chrome
driver4.navigate.to "https://asweb01.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver4.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver4.quit();
driver4 = Selenium::WebDriver.for :chrome
driver4.navigate.to "https://asweb01.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver4.find_element(:id, 'ctl00_imgTopLogo').click
driver4.quit();
driver4 = Selenium::WebDriver.for :chrome
driver4.navigate.to "https://asweb01.agencystream.com/PowerForms/Evidence.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver4.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver4.quit();
puts "Evidence Form Successfully Tested"
#Evidence Form Done