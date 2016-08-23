require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver1 = Selenium::WebDriver.for :chrome
	driver1.navigate.to "https://asweb01.agencystream.com/login.aspx"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver1.quit();
driver1 = Selenium::WebDriver.for :chrome
	driver1.navigate.to "https://asweb01.agencystream.com/login.aspx"
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
driver1 = Selenium::WebDriver.for :chrome
driver1.navigate.to "https://asweb01.agencystream.com/login.aspx"		
	element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver1.navigate.to "https://asweb01.agencystream.com/PowerForms/InsuranceIDCard.aspx"

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
driver1 = Selenium::WebDriver.for :chrome
driver1.navigate.to "https://asweb01.agencystream.com/PowerForms/InsuranceIDCard.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver1.find_element(:id, 'home_icon').click
driver1.quit();
driver1 = Selenium::WebDriver.for :chrome
driver1.navigate.to "https://asweb01.agencystream.com/PowerForms/InsuranceIDCard.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver1.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver1.quit();
driver1 = Selenium::WebDriver.for :chrome
driver1.navigate.to "https://asweb01.agencystream.com/PowerForms/InsuranceIDCard.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver1.find_element(:id, 'ctl00_imgTopLogo').click
driver1.quit();
driver1 = Selenium::WebDriver.for :chrome
driver1.navigate.to "https://asweb01.agencystream.com/PowerForms/InsuranceIDCard.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver1.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver1.quit();
puts "ID Card Form Successfully Tested"